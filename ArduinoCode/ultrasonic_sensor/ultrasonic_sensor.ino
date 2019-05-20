#include <NewPing.h>

#define TriggerPin D5
#define EchoPin D6

float duration, distance;

void setup() {
    // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(TriggerPin, OUTPUT);
  pinMode(EchoPin, INPUT);
}

void loop() {
  // Write a pulse to the HC-SR04 Trigger Pin:
  digitalWrite(TriggerPin, LOW);
  delayMicroseconds(2);
  digitalWrite(TriggerPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(TriggerPin, LOW);

  // Measure the response from the HC-SR04 Echo Pin:
  duration = pulseIn(EchoPin, HIGH);

  // Determine distance from duration
  // Use 343 metres per second as speed of sound:
  distance = (duration / 2) * 0.0343;

  // Send results to Serial Monitor:
  Serial.print("Distance = ");
  if(distance >= 400 || distance <= 2) {
    Serial.println("Out of range");
  } else {
    Serial.print(distance);
    Serial.println(" cm");
    delay(500); 
  }

  delay(500);
}


//#include <NewPing.h>
//
//#define TriggerPin 2
//#define EchoPin 5
//#define Max_distance 400
//
//NewPing sonar(TriggerPin, EchoPin, Max_distance);
//
//float distance;
//
//void setup() {
//  // put your setup code here, to run once:
//  Serial.begin(9600);
//}
//
//void loop() {
//
//  distance = sonar.ping_cm();
//  Serial.print("Distance = ");
//  if(distance >= 400 || distance <= 2) {
//    Serial.println("Out of range");
//  } else {
//    Serial.print(distance);
//    Serial.println(" cm");
//    delay(500); 
//  }
//
//  delay(500);
//}
//
//

