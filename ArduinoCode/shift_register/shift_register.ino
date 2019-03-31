#include <ShiftRegister74HC595.h>
// create shift register object (number of shift registers, data pin, clock pin, latch pin)
ShiftRegister74HC595 sr (1, D2,D0,D1); 
void setup() { 
}

void loop() {
  sr.setAllHigh(); // set all pins HIGH
  delay(500);
  sr.setAllLow(); // set all pins LOW
  delay(500); 
//  for (int i = 0; i < 8; i++) {
//    sr.set(i, HIGH); // set single pin HIGH
//    delay(2000); 
//  }
//  // set all pins at once
//  uint8_t pinValues[] = { B10101010 }; 
//  sr.setAll(pinValues); 
//  delay(5000);
//  // read pin (zero based)
//  uint8_t stateOfPin5 = sr.get(5);
}
