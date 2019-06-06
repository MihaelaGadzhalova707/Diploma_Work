unsigned int value = 0;

void setup() {
  // put your setup code here, to run once:
    Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
 // value = analogRead(A3);
//  value = value >> 2;
//  value = value << 2;
for (int i = 0; i < 10; i++) 
  value += analogRead(A3);
value /= 10;
  Serial.println(value);
  value = 0;
}
