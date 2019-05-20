/*********
  Rui Santos
  Complete project details at http://randomnerdtutorials.com  
*********/

// Load Wi-Fi library
#include <ESP8266WiFi.h>
#include <ShiftRegister74HC595.h>
#include <OneWire.h>
#include <DallasTemperature.h>
#include <NewPing.h>


// Replace with your network credentials

const char* ssid     = "Bob4o";
const char* password = "12345678";
//const char* ssid     = "TUES Fest 2019";
//const char* password = "elsysisthebest";

// Data wire is plugged into pin D1 on the ESP8266 12-E - GPIO 5
#define ONE_WIRE_BUS D4
#define TriggerPin D5
#define EchoPin_J4 D6
#define EchoPin_J3 D7
#define EchoPin_J2 D8

float duration_J4, distance_J4;
float duration_J3, distance_J3;
float duration_J2, distance_J2;
// Setup a oneWire instance to communicate with any OneWire devices (not just Maxim/Dallas temperature ICs)
OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature. 
DallasTemperature DS18B20(&oneWire);
char temperatureCString[7];
char temperatureFString[7];


ShiftRegister74HC595 sr (2, D3,D1,D2); 
// Set web server port number to 80
WiFiServer server(80);
WiFiClient client;


// Variable to store the HTTP request
String header;

// Auxiliar variables to store the current output state
String ledRedState = "off"; //1-1
String ledGreenState = "off"; //1-2
String ledBlueState = "off"; //1-3
String ledWhiteState = "off"; //1-4

String firstValveState = "off"; //2-9
String secondValveState = "off"; //2-10
String thirdValveState = "off"; //2-11
String fourthValveState = "off"; //2-12

void setup() {
  Serial.begin(115200);
  DS18B20.begin();
  pinMode(TriggerPin, OUTPUT);
  pinMode(EchoPin_J4, INPUT);
  pinMode(EchoPin_J3, INPUT);
  pinMode(EchoPin_J2, INPUT);
  // Connect to Wi-Fi network with SSID and password
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  // Print local IP address and start web server
  Serial.println("");
  Serial.println("WiFi connected.");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
  server.begin();
}

void getTemperature() {
  float tempC;
  float tempF;
  do {
    DS18B20.requestTemperatures(); 
    tempC = DS18B20.getTempCByIndex(0);
    dtostrf(tempC, 2, 2, temperatureCString);
    tempF = DS18B20.getTempFByIndex(0);
    dtostrf(tempF, 3, 2, temperatureFString);
    delay(100);
  } while (tempC == 85.0 || tempC == (-127.0));
}

void trigger_pin() {
  digitalWrite(TriggerPin, LOW);
  delayMicroseconds(2);
  digitalWrite(TriggerPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(TriggerPin, LOW);
}


void loop(){
  client = server.available();   // Listen for incoming clients

  if (client) {                             // If a new client connects,
    Serial.println("New Client.");          // print a message out in the serial port
    String currentLine = "";                // make a String to hold incoming data from the client
    while (client.connected()) {            // loop while the client's connected
      if (client.available()) {             // if there's bytes to read from the client,
        char c = client.read();             // read a byte, then
        Serial.write(c);                    // print it out the serial monitor
        header += c;
        if (c == '\n') {                    // if the byte is a newline character
          // if the current line is blank, you got two newline characters in a row.
          // that's the end of the client HTTP request, so send a response:
          if (currentLine.length() == 0) {
            getTemperature();
            // HTTP headers always start with a response code (e.g. HTTP/1.1 200 OK)
            // and a content-type so the client knows what's coming, then a blank line:
            client.println("HTTP/1.1 200 OK");
            client.println("Content-type:text/html");
            client.println("Connection: close");
            client.println();
            int value;
            // turns the GPIOs on and off
            if (header.indexOf("GET /led_red/on") >= 0) {
              Serial.println("Led RED on");
              ledRedState = "on";
              sr.set(1, HIGH);
            } else if (header.indexOf("GET /led_red/off") >= 0) {
              Serial.println("Led RED off");
              ledRedState = "off";
              sr.set(1, LOW);
            } else if (header.indexOf("GET /led_green/on") >= 0) {
              Serial.println("Led Green on");
              ledGreenState = "on";
              sr.set(2, HIGH);
            } else if (header.indexOf("GET /led_green/off") >= 0) {
              Serial.println("Led Green off");
              ledGreenState = "off";
              sr.set(2, LOW); 
            } else if (header.indexOf("GET /led_blue/on") >= 0) {
              Serial.println("Led Blue on");
              ledBlueState = "on";
              sr.set(3, HIGH);
            } else if (header.indexOf("GET /led_blue/off") >= 0) {
              Serial.println("Led Blue off");
              ledBlueState = "off";
              sr.set(3, LOW);
            } else if (header.indexOf("GET /led_white/on") >= 0) {
              Serial.println("Led White on");
              ledWhiteState = "on";
              sr.set(4, LOW);
            } else if (header.indexOf("GET /led_white/off") >= 0) {
              Serial.println("Led Green off");
              ledWhiteState = "off";
              sr.set(4, HIGH);
            } else if (header.indexOf("GET /first_valve/on") >= 0) {
              Serial.println("First Valve on");
              firstValveState = "on";
              sr.set(9, HIGH);
            } else if (header.indexOf("GET /first_valve/off") >= 0) {
              Serial.println("First Valve off");
              firstValveState = "off";
              sr.set(9, LOW);
            } else if (header.indexOf("GET /second_valve/on") >= 0) {
              Serial.println("Second Valve on");
              secondValveState = "on";
              sr.set(10, HIGH);
            } else if (header.indexOf("GET /second_valve/off") >= 0) {
              Serial.println("Second Valve off");
              secondValveState = "off";
              sr.set(10, LOW);
            } else if (header.indexOf("GET /third_valve/on") >= 0) {
              Serial.println("Third Valve on");
              thirdValveState = "on";
              sr.set(11, HIGH);
            } else if (header.indexOf("GET /third_valve/off") >= 0) {
              Serial.println("Third Valve off");
              thirdValveState = "off";
              sr.set(11, LOW);
            } else if (header.indexOf("GET /fourth_valve/on") >= 0) {
              Serial.println("Fourth Valve on");
              fourthValveState = "on";
              sr.set(12, HIGH);
            } else if (header.indexOf("GET /fourth_valve/off") >= 0) {
              Serial.println("Fourth Valve off");
              fourthValveState = "off";
              sr.set(12, LOW);
            } 
            
            html();
            // The HTTP response ends with another blank line
            client.println();
            // Break out of the while loop
            break;
          } else { // if you got a newline, then clear currentLine
            currentLine = "";
          }
        } else if (c != '\r') {  // if you got anything else but a carriage return character,
          currentLine += c;      // add it to the end of the currentLine
        }
      }
    }
    // Clear the header variable
    header = "";
    // Close the connection
    client.stop();
    Serial.println("Client disconnected.");
    Serial.println("");
  }
}

void html() {
  // Display the HTML web page
            client.println("<!DOCTYPE html><html>");
            client.println("<head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
            client.println("<link rel=\"icon\" href=\"data:,\">");
            // CSS to style the on/off buttons 
            // Feel free to change the background-color and font-size attributes to fit your preferences
            client.println("<style>html { font-family: Helvetica; display: inline-block; margin: 0px auto; text-align: center;}");
            client.println(".button { background-color: #195B6A; border: none; color: white; padding: 16px 40px;");
            client.println("text-decoration: none; font-size: 30px; margin: 2px; cursor: pointer;}");
            client.println(".button2 {background-color: #77878A;}</style></head>");
            
            // Web Page Heading
            client.println("<body><h1><b>A Q U A    S Y S T E M</b></h1><br>");
            client.println("<h2><i>What is the temperature?</i></h2><h3>Temperature in Celsius: ");
            client.println(temperatureCString);
            client.println("*C</h3><h3>Temperature in Fahrenheit: ");
            client.println(temperatureFString);
            client.println("*F</h3><br>"); 

            client.println("<h2><i>Distance for the bottle with clear water</i></h2><h3> ");
            trigger_pin();
            duration_J2 = pulseIn(EchoPin_J2, HIGH);
            distance_J2 = (duration_J2 / 2) * 0.0343;
            
            Serial.print("Distance = ");
            client.print("Distance = ");
            if(distance_J2 >= 100 || distance_J2 <= 2) {
              Serial.println("Out of range");
              client.println("Out of range");
            } else {
              Serial.print(distance_J2);
              client.println(distance_J2);
              Serial.println(" cm");
              client.println(" cm");
            }
            client.println("</h3><br>");

            client.println("<h2><i>Distance for the bottle with dirty water</i></h2><h3> ");
            trigger_pin();
            duration_J3 = pulseIn(EchoPin_J3, HIGH);
            distance_J3 = (duration_J3 / 2) * 0.0343;
           
            client.print("Distance = ");
            if(distance_J3 >= 100 || distance_J3 <= 2) {
              client.println("Out of range");
            } else {
              client.println(distance_J3);
              client.println(" cm");
            }
            client.println("</h3><br>");

            client.println("<h2><i>Distance for the aquarium</i></h2><h3> ");
            trigger_pin();
            duration_J4 = pulseIn(EchoPin_J4, HIGH);
            distance_J4 = (duration_J4 / 2) * 0.0343;
           
            client.print("Distance = ");
            if(distance_J4 >= 100 || distance_J4 <= 2) {
              client.println("Out of range");
            } else {
              client.println(distance_J4);
              client.println(" cm"); 
            }
            client.println("</h3><br>");

            
            // Display current state, and ON/OFF buttons for ledRedState  
            client.println("<p>Led Red - State " + ledRedState + "</p>");
            // If the output5State is off, it displays the ON button       
            if (ledRedState=="off") {
              client.println("<p><a href=\"/led_red/on\"><button class=\"button\" style=\"background-color:red\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/led_red/off\"><button class=\"button button2\" style=\"background-color:#af0000\">OFF</button></a></p>");
            } 
               
            // Display current state, and ON/OFF buttons for GPIO 4  
            client.println("<p>Led Green - State " + ledGreenState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (ledGreenState=="off") {
              client.println("<p><a href=\"/led_green/on\"><button class=\"button\" style=\"background-color:green\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/led_green/off\"><button class=\"button button2\" style=\"background-color:#0f591a\">OFF</button></a></p>");
            }

             // Display current state, and ON/OFF buttons for GPIO 4  
            client.println("<p>Led Blue - State " + ledBlueState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (ledBlueState=="off") {
              client.println("<p><a href=\"/led_blue/on\"><button class=\"button\" style=\"background-color:blue\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/led_blue/off\"><button class=\"button button2\" style=\"background-color:#083191\">OFF</button></a></p>");
            }

             // Display current stawte, and ON/OFF buttons for GPIO 4  
            client.println("<p>Led White - State " + ledWhiteState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (ledWhiteState=="off") {
              client.println("<p><a href=\"/led_white/on\"><button class=\"button\" style=\"background-color:grey\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/led_white/off\"><button class=\"button button2\" style=\"background-color:#6a6b6a\">OFF</button></a></p>");
            }

            // Display current stawte, and ON/OFF buttons for GPIO 4  
            client.println("<p>First Valve - State " + firstValveState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (firstValveState=="off") {
              client.println("<p><a href=\"/first_valve/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/first_valve/off\"><button class=\"button button2\">OFF</button></a></p>");
            }

            // Display current stawte, and ON/OFF buttons for GPIO 4  
            client.println("<p>Second Valve - State " + secondValveState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (secondValveState=="off") {
              client.println("<p><a href=\"/second_valve/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/second_valve/off\"><button class=\"button button2\">OFF</button></a></p>");
            }
             // Display current stawte, and ON/OFF buttons for GPIO 4  
            client.println("<p>Third Valve - State " + thirdValveState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (thirdValveState=="off") {
              client.println("<p><a href=\"/third_valve/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/third_valve/off\"><button class=\"button button2\">OFF</button></a></p>");
            }

            // Display current stawte, and ON/OFF buttons for GPIO 4  
            client.println("<p>Fourth Valve - State " + fourthValveState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (fourthValveState=="off") {
              client.println("<p><a href=\"/fourth_valve/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/fourth_valve/off\"><button class=\"button button2\">OFF</button></a></p>");
            }
            client.println("</body></html>");
            
}
