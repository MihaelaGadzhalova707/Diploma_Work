/*******
 
 All the resources for this project:
 http://randomnerdtutorials.com/

*******/
#include <OneWire.h>
#include <DallasTemperature.h>

int ONE_WIRE_BUS = 6;
int redLed = 12;
int greenLed = 11;
int buzzer = 10;
int smokeA0 = A5;
// Your threshold value
int sensorThres = A3;
int tempSensorThres = 33.00;

OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensors(&oneWire);

void setup() {
  pinMode(redLed, OUTPUT);
  pinMode(greenLed, OUTPUT);
  pinMode(buzzer, OUTPUT);
  pinMode(smokeA0, INPUT);
  sensors.begin();
  Serial.begin(9600);
}

void loop() {
  int analogSensor = analogRead(smokeA0);
  int analogPot = analogRead(sensorThres);

  sensors.requestTemperatures(); 8u7u8787uuu,.7877cxcl .][.
  
  Serial.print("Celsius temperature: ");
  // Why "byIndex"? You can have more than one IC on the same bus. 0 refers to the first IC on the wire
  Serial.print(sensors.getTempCByIndex(0)); 
  Serial.print(" - Fahrenheit temperature: ");
  Serial.println(sensors.getTempFByIndex(0));
  if(sensors.getTempCByIndex(0) > tempSensorThres) {
    tone(buzzer, 1000, 200);
  }
  delay(150);

  Serial.print("Pin A0: ");
  Serial.println(analogSensor);
  Serial.print("Pin A3: ");
  Serial.println(analogPot);
  // Checks if it has reached the threshold value
  if (analogSensor > analogPot)
  {
    digitalWrite(redLed, HIGH);
    digitalWrite(greenLed, LOW);
   tone(buzzer, 1000, 200);
  }
  else
  {
    digitalWrite(redLed, LOW);
    digitalWrite(greenLed, HIGH);
    noTone(buzzer);
  }
  delay(100);
}
