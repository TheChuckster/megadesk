#include <EEPROM.h>
#include "lin.h"
#include "megadesk.h"


// Standard arduino settings
#define HYSTERESIS        20  // 20 seems ok

#define PIN_UP            0
#define PIN_DOWN          1
#define PIN_BEEP          3
#define PIN_SERIAL        9

#define BEEP_DURATION     125
#define BEEP_PAUSE        60
#define BEEP_FREQ_LOW     2600
#define BEEP_FREQ_HIGH    3000
#define BEEP_FREQ_ACK     2000

#define CLICK_TIMEOUT     400UL     // Timeout in MS.
#define CLICK_LONG        900UL     // Long/hold minimum time in MS.

//////////////////
// Related to multi-touch
bool button_pin_up, button_pin_down;
bool goUp, goDown;
bool previous, pushLong, waitingEvent = false;
int pushCount = 0;
unsigned long currentMillis;
unsigned long firstPush = 0, lastPush = 0, pushLength = 0;
//////////////////

Lin lin(Serial, PIN_SERIAL);

int height = -1;
int targetHeight = -1;
unsigned long end, d;
unsigned long t = 0;

bool memoryMoving = false;
Command user_cmd = Command::NONE;
State state = State::OFF;

int up(bool pushed) {
  if (pushed)
    user_cmd = Command::UP;
  else
    user_cmd = Command::NONE;
}

int down(bool pushed) {
  if (pushed)
    user_cmd = Command::DOWN;
  else
    user_cmd = Command::NONE;

}

void ack()
{
  previous = false;
  firstPush = lastPush = pushLength = 0;
  pushCount = 0;
  pushLong = false;
  waitingEvent = false;
  currentMillis = millis();
}

void setup() {
  initEEPROM();
  lin.begin(19200);

  pinMode(PIN_UP, INPUT_PULLUP);
  pinMode(PIN_DOWN, INPUT_PULLUP);
  pinMode(PIN_BEEP, OUTPUT);
  
  linInit();
  beep(1, 2093);
  beep(1, 2349);
  beep(1, 2637);
}

void readButtons()
{
  button_pin_down = !digitalRead(PIN_DOWN);
  goDown = button_pin_down;

  previous = button_pin_up;
  button_pin_up = !digitalRead(PIN_UP);
  
  currentMillis = millis();

  if (!previous && button_pin_up) // Just got pushed
  {
    if (firstPush == 0) // First time we have pushed
      firstPush = lastPush = currentMillis;
    else
      lastPush = currentMillis;
    // Otherwise, Nth time we have pushed, catch it on the release

  }
  else if (previous && button_pin_up) // Being held
  {
    pushLength = currentMillis;

    // Are we holding the first push (not a memory function)
    if ((pushLength - lastPush) > CLICK_TIMEOUT && pushCount == 0)
      goUp = true;
    else if ((pushLength - lastPush) > CLICK_LONG && pushCount > 0 && !pushLong)
    {
      beep(pushCount+1, BEEP_FREQ_ACK);
      pushLong = true;
    }
  }
  else if (previous && !button_pin_up && !goUp)  // Just got released and it's a memory call
  {
    pushCount++;
  }
  else if (previous && !button_pin_up && goUp)  // Just got released and we were moving
  {
    ack();
    goUp = false;
  }
  else    // State has not changed, and is not being held
  {
    if (firstPush == 0) // idle
      return;

    if (currentMillis - lastPush > CLICK_TIMEOUT) // Released
      waitingEvent = true;
  }

}

void loop()
{
  linBurst();

  readButtons();

  // When we power on the first time, and have a height value read, set our target height to the same thing
  // So we don't randomly move on powerup.
  if (height > 5 && targetHeight == -1)
    targetHeight = height;
  
  if (waitingEvent)
  {
    if (pushCount > 0)
    {
      if (pushLong)
        storeMemory(pushCount, height);
      else
      {
        targetHeight = getMemory(pushCount);
        memoryMoving = true;
      }
    }
      ack();
  }
  else if (goUp)
  {
    memoryMoving = false;
    targetHeight = height + HYSTERESIS + 1;
  }
  else if (goDown)
  {
    memoryMoving = false;
    targetHeight = height - HYSTERESIS - 1;
  }
  else if (!memoryMoving)
    targetHeight = height;

  if (targetHeight > height && abs(targetHeight - height) > HYSTERESIS)
    up(true);
  else if (targetHeight < height && abs(targetHeight - height) > HYSTERESIS)
    down(true);
  else
  {
    up(false);
    targetHeight = height;
    memoryMoving = false;
  }

  // Override all logic above and disable if we aren't initialized yet.
  if (targetHeight < 5)
    up(false);


  // Wait before next cycle. 150ms on factory controller, 25ms seems fine.
  delay_until(25);
}

void linBurst()
{
  uint8_t node_a[4] = { 0, 0, 0, 0 };
  uint8_t node_b[4] = { 0, 0, 0, 0 };
  uint8_t cmd[3] = { 0, 0, 0 };
  uint8_t res = 0;


  // Send PID 17
  lin.send(17, empty, 3, 2);
  delay_until(5);

  // Recv from PID 09
  res = lin.recv(9, node_b, 3, 2);
  delay_until(5);

  // Recv from PID 08
  res = lin.recv(8, node_a, 3, 2);
  delay_until(5);

  
  // Send PID 16, 6 times
  for (uint8_t i = 0; i < 6; i++) {
    lin.send(16, 0, 0, 2);
    delay_until(5);
  }
  

  // Send PID 1
  lin.send(1, 0, 0, 2);
  delay_until(5);

  uint16_t enc_a = node_a[0] | (node_a[1] << 8);
  uint16_t enc_b = node_b[0] | (node_b[1] << 8);
  uint16_t enc_target = enc_a;
  height = enc_a;

  // Send PID 18
  switch (state) {
  case State::OFF:
    cmd[2] = 0xFC; // 0b11111100
    break;
  case State::STARTING:
    cmd[2] = 0xC4; // 0b10100100
    break;
  case State::UP:
    enc_target = min(enc_a, enc_b);
    cmd[2] = 0x86; // 0b10000110
    break;
  case State::DOWN:
    enc_target = max(enc_a, enc_b);
    cmd[2] = 0x85; // 0b10000101
    break;
  case State::STOPPING1:
    cmd[2] = 0x87; // 0b10000111
    break;
  case State::STOPPING2:
    cmd[2] = 0x84; // 0b10000100
    break;
  }
  cmd[0] = enc_target & 0xFF;
  cmd[1] = enc_target >> 8;
  lin.send(18, cmd, 3, 2);



  switch (state) {
  case State::OFF:
    if (user_cmd != Command::NONE) {
      if (node_a[2] == 0x60 && node_b[2] == 0x60) {
        state = State::STARTING;
      }
    }
    break;
  case State::STARTING:
    switch (user_cmd) {
    case Command::NONE:
      state = State::OFF;
      break;
    case Command::UP:
      state = State::UP;
      break;
    case Command::DOWN:
      state = State::DOWN;
      break;
    }
    break;
  case State::UP:
    if (user_cmd != Command::UP) {
      state = State::STOPPING1;
    }
    break;
  case State::DOWN:
    if (user_cmd != Command::DOWN) {
      state = State::STOPPING1;
    }
    break;
  case State::STOPPING1:
    state = State::STOPPING2;
    break;
  case State::STOPPING2:
    if (node_a[2] == 0x60 && node_b[2] == 0x60) {
      state = State::OFF;
    }
    break;
  default:
    state = State::OFF;
    break;
  }
}

void storeMemory(int memorySlot, int value)
{
  // Sanity check
  if (memorySlot == 0 || value < 5 || value > 32700)
    return;

  EEPROM.write(5 + (2 * memorySlot), highByte(value));
  EEPROM.write(5 + (2 * memorySlot) + 1, lowByte(value));
}

int getMemory(int memorySlot)
{
  if (memorySlot == 0)
    return height;

  beep(memorySlot, BEEP_FREQ_LOW);
  
  int h = EEPROM.read(5 + (2 * memorySlot));
  int l = EEPROM.read(5 + (2 * memorySlot) + 1);
  
  return word(h, l);
}

void delay_until(unsigned long microSeconds) {
  end = t + (1000 * microSeconds);
  d = end - micros();

  // crazy long delay; probably negative wrap-around
  // just return
  if (d > 1000000) {
    t = micros();
    return;
  }

  if (d > 15000) {
    unsigned long d2 = (d - 15000) / 1000;
    delay(d2);
    d = end - micros();
  }
  delayMicroseconds(d);
  t = end;
}

void beep(int count, int freq)
{
  for (int i = 0; i < count; i++)
  {
    tone(PIN_BEEP, freq);
    delay(BEEP_DURATION);
    noTone(PIN_BEEP);
    delay(BEEP_PAUSE);
  }
}

void sendInitPacket(uint8_t a1 = 255, uint8_t a2 = 255, uint8_t a3 = 255, uint8_t a4 = 255)
{
  uint8_t packet[8] = { a1, a2, a3, a4, 255, 255, 255, 255 };
  
  // Custom checksum formula for the initialization
  int chksum = a1 + a2 + a3 + a4;
  chksum = chksum % 255;
  chksum = 255 - chksum;
  
  lin.send(60, packet, 8, 2, chksum);
  delay(3);
}

void linInit()
{
  // Really weird startup sequenced, sourced from the controller.  
  uint8_t resp[8];
  
  // Brief stabilization delay
  delay(150);
  
  sendInitPacket(255, 7);
  recvInitPacket(resp);

  sendInitPacket(255, 7);
  recvInitPacket(resp);

  sendInitPacket(255, 1, 7);
  recvInitPacket(resp);

  sendInitPacket(208, 2, 7);
  recvInitPacket(resp);
  
  byte initA = 0;
  while (true)
  {
    sendInitPacket(initA, 2, 7);
    if (recvInitPacket(resp) > 0)
      break;
    initA++;
  }

  sendInitPacket(initA, 6, 9, 0);
  recvInitPacket(resp);

  sendInitPacket(initA, 6, 12, 0);
  recvInitPacket(resp);

  sendInitPacket(initA, 6, 13, 0);
  recvInitPacket(resp);

  sendInitPacket(initA, 6, 10, 0);
  recvInitPacket(resp);

  sendInitPacket(initA, 6, 11, 0);
  recvInitPacket(resp);
  
  sendInitPacket(initA, 4, 0, 0);
  recvInitPacket(resp);

  byte initB = initA+1;
  while (true)
  {
    sendInitPacket(initB, 2, 0, 0);
    if (recvInitPacket(resp) > 0)
      break;
    initB++;
  }

  sendInitPacket(initB, 6, 9, 0);
  recvInitPacket(resp);

  sendInitPacket(initB, 6, 12, 0);
  recvInitPacket(resp);

  sendInitPacket(initB, 6, 13, 0);
  recvInitPacket(resp);

  sendInitPacket(initB, 6, 10, 0);
  recvInitPacket(resp);

  sendInitPacket(initB, 6, 11, 0);
  recvInitPacket(resp);

  sendInitPacket(initB, 4, 1, 0);
  recvInitPacket(resp);

  byte initC = initB + 1;
  while (initC < 8)
  {
    sendInitPacket(initC, 2, 1, 0);
    recvInitPacket(resp);
    initC++;
  }

  sendInitPacket(208, 1, 7, 0);
  recvInitPacket(resp);

  sendInitPacket(208, 2, 7, 0);
  recvInitPacket(resp);

  delay(15);

  uint8_t magicPacket[3] = { 246, 255, 191 };
  lin.send(18, magicPacket, 3, 2);
  
  delay(5);
  

}


uint8_t recvInitPacket(uint8_t array[])
{
  return lin.recv(61, array, 8, 2);
}

