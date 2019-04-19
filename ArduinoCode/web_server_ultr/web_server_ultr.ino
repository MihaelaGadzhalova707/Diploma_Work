/*********
  Rui Santos
  Complete project details at http://randomnerdtutorials.com  
*********/

// Including the ESP8266 WiFi library
#include <ESP8266WiFi.h>
#include <NewPing.h>
// Replace with your network details
//const char* ssid     = "Bob4o";
//const char* password = "12345678";
const char* ssid     = "elsys-cab31";
const char* password = "elsys-bg.org";

#define TriggerPin D5
#define EchoPin_J4 D6
#define EchoPin_J3 D7
#define EchoPin_J2 D8

float duration_J4, distance_J4;
float duration_J3, distance_J3;
float duration_J2, distance_J2;

// Web Server on port 80
WiFiServer server(80);
WiFiClient client;

// only runs once on boot
void setup() {
  // Initializing serial port for debugging purposes
  Serial.begin(115200);
  pinMode(TriggerPin, OUTPUT);
  pinMode(EchoPin_J4, INPUT);
  pinMode(EchoPin_J3, INPUT);
  pinMode(EchoPin_J2, INPUT);
  // Connecting to WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  
  WiFi.begin(ssid, password);
  
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");
  
  // Starting the web server
  server.begin();
  Serial.println("Web server running. Waiting for the ESP IP...");
  delay(10000);
  
  // Printing the ESP IP address
  Serial.println(WiFi.localIP());
}

void echo_pin_J2() {
  trigger_pin();
  duration_J2 = pulseIn(EchoPin_J2, HIGH);
  distance_J2 = (duration_J2 / 2) * 0.0343;
}

void get_distance_J2() {
  client.print(distance_J2);
  client.println(" cm</h3></body></html>");
  delay(500); 
}

void echo_pin_J3() {
  trigger_pin();
  duration_J3 = pulseIn(EchoPin_J3, HIGH);
  distance_J3 = (duration_J3 / 2) * 0.0343;
}

void get_distance_J3() {
  client.print(distance_J3);
  client.println(" cm</h3></body></html>");
  delay(500); 
}

void echo_pin_J4() {
  trigger_pin();
  duration_J4 = pulseIn(EchoPin_J4, HIGH);
  distance_J4 = (duration_J4 / 2) * 0.0343;
}

void get_distance_J4() {
  client.print(distance_J4);
  client.println(" cm</h3></body></html>");
  delay(500); 
}
// runs over and over again
void loop() {
  
  // Listenning for new clients
  client = server.available();
  
  if (client) {
    Serial.println("New client");
    // bolean to locate when the http request ends
    boolean blank_line = true;
    while (client.connected()) {
      if (client.available()) {
        char c = client.read();
        
        if (c == '\n' && blank_line) {
           echo_pin_J2();
           echo_pin_J3();
           echo_pin_J4();
            client.println("HTTP/1.1 200 OK");
            client.println("Content-Type: text/html");
            client.println("Connection: close");
            client.println();
            // your actual web page that displays temperature
            client.println("<!DOCTYPE HTML>");
            client.println("<html>");
            client.println("<head></head><body><h1>Distance for J2</h1><h3>Distance: ");
            if(distance_J2 >= 400 || distance_J2 <= 2){
              Serial.println("Out of range");
              client.println("Out of range");
            } else {
              get_distance_J2();
              Serial.println(distance_J2);
              delay(500);
            }
            client.println("<head></head><body><h1>Distance for J3</h1><h3>Distance: ");
            if(distance_J3 >= 400 || distance_J3 <= 2) {
              Serial.println("Out of range");
              client.println("Out of range");
            } else {
              get_distance_J3();
              Serial.println(distance_J3);
              delay(500);
            }
            client.println("<head></head><body><h1>Distance for J4</h1><h3>Distance: ");
            if(distance_J4 >= 400 || distance_J4 <= 2) {
              Serial.println("Out of range");
              client.println("Out of range");
            } else {
              get_distance_J4();
              Serial.println(distance_J4);
              delay(500);
            }
             
              break;
          }
        if (c == '\n') {
          // when starts reading a new line
          blank_line = true;
        }
        else if (c != '\r') {
          // when finds a character on the current line
          blank_line = false;
        }
      }
    }  
    // closing the client connection
    delay(1);
    client.stop();
    Serial.println("Client disconnected.");
  }
}   

void trigger_pin() {
  digitalWrite(TriggerPin, LOW);
  delayMicroseconds(2);
  digitalWrite(TriggerPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(TriggerPin, LOW);
}
