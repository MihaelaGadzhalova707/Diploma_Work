#define REDPIN D0
#define GREENPIN D2
#define BLUEPIN D4
 
#define FADESPEED 5     // make this higher to slow down
 
void setup() {
  pinMode(REDPIN, OUTPUT);
  pinMode(GREENPIN, OUTPUT);
  pinMode(BLUEPIN, OUTPUT);
}
 
 
void loop() {
  int r, g, b;
 
  // fade from blue to violet
  for (r = 0; r < 256; r++) { 
    analogWrite(REDPIN, r);
    delay(FADESPEED);
  } 
  // fade from violet to red
  for (b = 255; b > 0; b--) { 
    analogWrite(BLUEPIN, b);
    delay(FADESPEED);
  } 
  // fade from red to yellow
  for (g = 0; g < 256; g++) { 
    analogWrite(GREENPIN, g);
    delay(FADESPEED);
  } 
  // fade from yellow to green
  for (r = 255; r > 0; r--) { 
    analogWrite(REDPIN, r);
    delay(FADESPEED);
  } 
  // fade from green to teal
  for (b = 0; b < 256; b++) { 
    analogWrite(BLUEPIN, b);
    delay(FADESPEED);
  } 
  // fade from teal to blue
  for (g = 255; g > 0; g--) { 
    analogWrite(GREENPIN, g);
    delay(FADESPEED);
  } 
}




//#include <LEDstrip.h>
//
//LEDstrip myLEDstrip;
//
//const int Rpin = 3;
//const int Gpin = 5;
//const int Bpin = 6;
//
//int i;
//
//void setup()
//{
//  myLEDstrip.DefineRGBLED(Rpin,Gpin,Bpin);
//
//  myLEDstrip.SetRedLight(255);
//  delay(1000); 
//  myLEDstrip.SetGreenLight(255);
//  delay(1000);
//  myLEDstrip.SetBlueLight(255);
//  delay(1000);
//  myLEDstrip.SetWhiteLight(255);
//  delay(1000);
//
//  i=0;
//}
//
//void loop()
//{
//  if (i<=20) {
//    myLEDstrip.SetAdvRandomColour(myLEDstrip.RedVal,myLEDstrip.GreenVal,myLEDstrip.BlueVal,10);
//    delay(500);
//  }
//  else if (i==21) {
//    myLEDstrip.LEDstripOFF();
//    delay(250);
//    myLEDstrip.SetWhiteLight(255);
//    delay(250);
//    myLEDstrip.LEDstripOFF();
//    delay(250);
//  }
//  else if (i>21 && i<100) {
//    myLEDstrip.SetHSLrandomColour(myLEDstrip.HueVal,5);
//    delay(500);
//  }
//  else {
//    i=-1;
//  }
//  
//  i++;
//}


//
//#define redPin D0
//#define greenPin D2
//#define bluePin D4
//
//void setup() {
//  // Start off with the LED off.
//  setColourRgb(0,0,0);
//}
//
//void loop() {
//  unsigned int rgbColour[3];
//
//  // Start off with red.
//  rgbColour[0] = 255;
//  rgbColour[1] = 0;
//  rgbColour[2] = 0;  
//
//  // Choose the colours to increment and decrement.
//  for (int decColour = 0; decColour < 3; decColour += 1) {
//    int incColour = decColour == 2 ? 0 : decColour + 1;
//
//    // cross-fade the two colours.
//    for(int i = 0; i < 255; i += 1) {
//      rgbColour[decColour] -= 1;
//      rgbColour[incColour] += 1;
//      
//      setColourRgb(rgbColour[0], rgbColour[1], rgbColour[2]);
//      delay(5);
//    }
//  }
//}
//
//void setColourRgb(unsigned int red, unsigned int green, unsigned int blue) {
//  analogWrite(redPin, red);
//  analogWrite(greenPin, green);
//  analogWrite(bluePin, blue);
// }
