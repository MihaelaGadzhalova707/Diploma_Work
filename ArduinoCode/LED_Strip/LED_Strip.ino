
#define RED_LED 16
#define GREEN_LED 5
#define BLUE_LED 4
#define WHITE_LED 0
#define FADESPEED 10


void setup() {
  // put your setup code here, to run once:
  pinMode(RED_LED, OUTPUT);
  pinMode(GREEN_LED, OUTPUT);
  pinMode(BLUE_LED, OUTPUT);
  pinMode(WHITE_LED, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int r, g, b, w;

  for (r = 0; r <= 255; r++) {
    analogWrite(RED_LED, r);
    delay(FADESPEED);
  }

  for (g = 0; g <= 255; g++) {
    analogWrite(GREEN_LED, g);
    delay(FADESPEED);
  }

  for (b = 0; b <= 255; b++) {
    analogWrite(BLUE_LED, b);
    delay(FADESPEED);
  }

  for (w = 0; w <= 255; w++) {
    analogWrite(WHITE_LED, w);
    delay(FADESPEED);
  }
}
