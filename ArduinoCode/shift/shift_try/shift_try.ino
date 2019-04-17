//#include <ShiftRegister74HC595.h>
#define DataPin D3
#define ClockPin D1
#define LatchPin D2
// create shift register object (number of shift registers, data pin, clock pin, latch pin)
//ShiftRegister74HC595 sr (1, D3,D1,D2); 

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(LatchPin, OUTPUT);
  digitalWrite(LatchPin, LOW);
  pinMode(ClockPin, OUTPUT);
  digitalWrite(ClockPin, LOW);
  pinMode(DataPin, OUTPUT);
  digitalWrite(DataPin, LOW);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(DataPin, HIGH);
  for(int i = 0; i < 7; i++) {
    doLatch();
  }
  doClock();
  delay(1000);
  
  digitalWrite(DataPin, LOW);
  for(int i = 0; i < 7; i++) {
    doLatch();
      doClock();
  }

  delay(1000);
}

void doLatch() {
   digitalWrite(LatchPin, HIGH);
   digitalWrite(LatchPin, LOW);
}

void doClock() {
   digitalWrite(ClockPin, HIGH);
   digitalWrite(ClockPin, LOW);
}

//working !!!!
//  for (int numberToDisplay = 0; numberToDisplay < 256; numberToDisplay++) {
//    digitalWrite(LatchPin, LOW);
//    shiftOut(DataPin, ClockPin, MSBFIRST, numberToDisplay);
//    digitalWrite(LatchPin, HIGH);
//    delay(1000);
