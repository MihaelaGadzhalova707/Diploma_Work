#include <ShiftRegister74HC595.h>
//#define DataPin D3
//#define ClockPin D1
//#define LatchPin D2
//#define MR D0
// create shift register object (number of shift registers, data pin, clock pin, latch pin)
ShiftRegister74HC595 sr (3, 5,3,4); //d3,d1,d2

//void resetRegs() {
//  digitalWrite(MR, LOW);
//  delay(1000);
//  digitalWrite(MR, HIGH);
//  delay(1000);
//}

//void doLatch() {
//   digitalWrite(LatchPin, HIGH);
//   delay(100);
//   digitalWrite(LatchPin, LOW);
//   delay(100);
//}
//
//void doClock() {
//   digitalWrite(ClockPin, HIGH);
//   delay(100);
//   digitalWrite(ClockPin, LOW);
//   delay(100);
//}



void setup() {
Serial.begin(9600);
//
//pinMode(LatchPin, OUTPUT);
//digitalWrite(LatchPin, LOW);
//
//pinMode(ClockPin, OUTPUT);
//digitalWrite(ClockPin, LOW);
//
//pinMode(DataPin, OUTPUT);
//digitalWrite(DataPin, LOW);
//
//pinMode(MR, OUTPUT);
//resetRegs();
}



//working !!!
void loop() {
//  sr.setAllHigh(); // set all pins HIGH
//  delay(200);
//  sr.setAllLow(); // set all pins LOW
//  delay(200); 
//  for (int i = 0; i < 16; i++) {
//    sr.set(i, HIGH); // set single pin HIGH
//    delay(200); 
//  }
//  delay(5000);
//    sr.set(1, HIGH);
//    delay(5000);
//    sr.set(1, LOW);
//    delay(5000);
//    
//    sr.set(2, HIGH);
//    delay(5000);
//    sr.set(2, LOW);
//    delay(5000);
//    
//    sr.set(3, HIGH);
//    delay(5000);
//    sr.set(3, LOW);
//    delay(5000);
//    
//    sr.set(4, HIGH);
//    delay(5000);
//    sr.set(4, LOW);
//    delay(5000);
//    
//    sr.set(5, HIGH);
//    delay(5000);
//    sr.set(5, LOW);
//    delay(5000);
//
//    sr.set(6, HIGH);
//    delay(5000);
//    sr.set(6, LOW);
//    delay(5000); 
//
//    sr.set(8, HIGH);
//    delay(5000);
//    sr.set(8, LOW);
//    delay(5000);
//
//    sr.set(9, HIGH);
//    delay(5000);
//    sr.set(9, LOW);
//    delay(5000);
//
//    sr.set(10, HIGH);
//    delay(5000);
//    sr.set(10, LOW);
//    delay(5000);

    sr.set(1, HIGH);
    sr.set(2, HIGH);
    sr.set(3, HIGH);
    sr.set(4, HIGH);
    sr.set(18, HIGH);
    sr.set(19, HIGH);
  // set all pins at once
//  uint8_t pinValues[] = { B00000110, B00001010}; 
//  sr.setAll(pinValues); 
//  delay(200);
//  // read pin (zero based)
//  uint8_t stateOfPin5 = sr.get(5);
//  Serial.println(stateOfPin5);
}

//void loop() {
//  digitalWrite(DataPin, HIGH);
//  Serial.println("Setting high");
//  for(int i = 0; i < 24; i++) {
//    doClock();
//  }
//  doLatch();
//  delay(5000);
//  Serial.println("Resetting");
//  digitalWrite(DataPin, LOW);
//  Serial.println("Setting high");
//  for(int i = 0; i < 24; i++) {
//    doClock();
//  }
//  doLatch();
//  delay(5000);
// 
//}




