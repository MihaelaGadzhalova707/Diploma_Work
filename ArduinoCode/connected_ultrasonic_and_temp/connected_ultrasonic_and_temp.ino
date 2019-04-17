#include <OneWire.h>
#include <DallasTemperature.h>
#include <NewPing.h>

#define ONE_WIRE_BUS D4
#define TriggerPin D5
#define EchoPin_J4 D6
#define EchoPin_J3 D7
#define EchoPin_J2 D8

float duration_J4, distance_J4;
float duration_J3, distance_J3;
float duration_J2, distance_J2;

OneWire oneWire(ONE_WIRE_BUS);
DallasTemperature sensors(&oneWire);

void setup() {
   Serial.begin(9600);
   pinMode(TriggerPin, OUTPUT);
   pinMode(EchoPin_J4, INPUT);
   pinMode(EchoPin_J3, INPUT);
   pinMode(EchoPin_J2, INPUT);
   sensors.begin();
}

void loop() {
  // put your main code here, to run repeatedly:
  trigger_pin();
  echo_pin_J4(); 
    delay(500);
  trigger_pin();  
  echo_pin_J3();
    delay(500);
  trigger_pin();
  echo_pin_J2();
    delay(500);
  temp_sensor();
    delay(500);
}

void trigger_pin() {
  digitalWrite(TriggerPin, LOW);
  delayMicroseconds(2);
  digitalWrite(TriggerPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(TriggerPin, LOW);
}

void echo_pin_J4() {
  duration_J4 = pulseIn(EchoPin_J4, HIGH);
  distance_J4 = (duration_J4 / 2) * 0.0343;
  
  Serial.print("Distance for J4 = ");
  if(distance_J4 >= 400 || distance_J4 <= 2) {
    Serial.println("Out of range");
  } else {
    Serial.print(distance_J4);
    Serial.println(" cm");
    delay(500); 
  }
}

void echo_pin_J3() {
  duration_J3 = pulseIn(EchoPin_J3, HIGH);
  distance_J3 = (duration_J3 / 2) * 0.0343;
  
  Serial.print("Distance for J3 = ");
  if(distance_J3 >= 400 || distance_J3 <= 2) {
    Serial.println("Out of range");
  } else {
    Serial.print(distance_J3);
    Serial.println(" cm");
    delay(500); 
  }
}

void echo_pin_J2() {
  duration_J2 = pulseIn(EchoPin_J2, HIGH);
  distance_J2 = (duration_J2 / 2) * 0.0343;
  
  Serial.print("Distance for J2 = ");
  if(distance_J2 >= 400 || distance_J2 <= 2) {
    Serial.println("Out of range");
  } else {
    Serial.print(distance_J2);
    Serial.println(" cm");
    delay(500); 
  }
}

void temp_sensor() {
  sensors.requestTemperatures(); 
  Serial.print("Celsius temperature: ");
  Serial.print(sensors.getTempCByIndex(0)); 
  Serial.print(" - Fahrenheit temperature: ");
  Serial.println(sensors.getTempFByIndex(0));
  delay(500);
}



