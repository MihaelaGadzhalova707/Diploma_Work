// Load Wi-Fi library
#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>
#include <ShiftRegister74HC595.h>
#include <OneWire.h>
#include <DallasTemperature.h>

/*
const char* ssid     = "Tardis";
const char* password = "JustTheDoctor!";
*/
char* ssid     = "RetyA6";
char* password = "samsungA6";

#define ON                  LOW
#define OFF                 HIGH
#define ONE_WIRE_BUS        D4
#define TriggerPin          D5
#define EchoPin_Aquarium    D6 //J4
#define EchoPin_Dirty_Water D7 //J3
#define EchoPin_Clear_Water D8 //J2

ShiftRegister74HC595 sr (3, D3,D1,D5);

float duration_Aquarium, distance_Aquarium;
float duration_Clear_Water, distance_Clear_Water;
float duration_Dirty_Water, distance_Dirty_Water;

// Setup a oneWire instance to communicate with any OneWire devices (not just Maxim/Dallas temperature ICs)
OneWire oneWire(ONE_WIRE_BUS);

// Pass our oneWire reference to Dallas Temperature. 
DallasTemperature DS18B20(&oneWire);
char temperatureCString[7];
char temperatureFString[7];

WiFiServer server(80);
WiFiClient client;

// Variable to store the HTTP request
String header;

// Auxiliar variables to store the current output state
String ledRedState = "off"; //1-1
String ledGreenState = "off"; //1-2
String ledBlueState = "off"; //1-3
String ledWhiteState = "off"; //1-4
String waterPumpState = "off"; //1-5

String firstValveState = "off"; //2-9
String secondValveState = "off"; //2-10
String thirdValveState = "off"; //2-11
String fourthValveState = "off"; //2-12

String waterInjectionState = "off";
String waterDrainingState = "off";
String waterCirculationState = "off";

void set_shift_pins_off() {
  sr.set(1, OFF);
  sr.set(2, OFF);
  sr.set(3, OFF);
  sr.set(4, OFF);
  sr.set(5, OFF);
  sr.set(9, OFF);
  sr.set(10, OFF);
  sr.set(11, OFF);
  sr.set(12, OFF);
}

void setup() {

  set_shift_pins_off();
  
  // Initializing serial port for debugging purposes
  Serial.begin(115200);
  delay(10);

  DS18B20.begin(); // IC Default 9 bit. If you have troubles consider upping it 12. Ups the delay giving the IC more time to process the temperature measurement

  pinMode(TriggerPin, OUTPUT);
  pinMode(EchoPin_Aquarium, INPUT);
  pinMode(EchoPin_Clear_Water, INPUT);
  pinMode(EchoPin_Dirty_Water, INPUT);
  
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


void set_red_led_on() {
  Serial.println("Led RED on");
  ledRedState = "on";
  sr.set(1, ON);
}

void set_red_led_off() {
  Serial.println("Led RED off");
  ledRedState = "off";
  sr.set(1, OFF);
}

void set_green_led_on() {
  Serial.println("Led Green on");
  ledGreenState = "on";
  sr.set(2, ON);
}

void set_green_led_off() {
  Serial.println("Led Green off");
  ledGreenState = "off";
  sr.set(2, OFF); 
}

void set_blue_led_on() {
  Serial.println("Led Blue on");
  ledBlueState = "on";
  sr.set(3, ON);
}

void set_blue_led_off() {
  Serial.println("Led Blue off");
  ledBlueState = "off";
  sr.set(3, OFF);
}

void set_white_led_on() {
  Serial.println("Led White on");
  ledWhiteState = "on";
  sr.set(4, ON);
}

void set_white_led_off() {
  Serial.println("Led Green off");
  ledWhiteState = "off";
  sr.set(4, OFF);
}

void set_water_pump_on() {
  Serial.println("Water Pump on");
  waterPumpState = "on";
  sr.set(5, ON);
}

void set_water_pump_off() {
  Serial.println("Water Pump off");
  waterPumpState = "off";
  sr.set(5, OFF);
}

void set_water_injection_on() {
  Serial.println("First Valve on");
  Serial.println("Fourth Valve on");
  firstValveState = "on";
  fourthValveState = "on";
  waterInjectionState = "on";
  sr.set(5, ON);
  sr.set(9, ON);
  sr.set(12, ON);
  sr.set(10, OFF);
  sr.set(11, OFF);
}

void set_water_injection_off() {
  sr.set(9, OFF);
  sr.set(12, OFF);
  sr.set(10, OFF);
  sr.set(11, OFF);
}

void set_water_draining_on() {
  Serial.println("Second Valve on");
  Serial.println("Third Valve on");
  secondValveState = "on";
  thirdValveState = "on";
  waterDrainingState = "on";
  sr.set(5, ON);
  sr.set(10, ON);
  sr.set(11, ON);
  sr.set(12, OFF);
  sr.set(9, OFF);
}

void set_water_draining_off() {
  Serial.println("Second Valve off");
  Serial.println("Third Valve off");
  secondValveState = "off";
  thirdValveState = "off";
  waterDrainingState = "off";
  sr.set(5, OFF);
  sr.set(10, OFF);
  sr.set(11, OFF);
  sr.set(12, OFF);
  sr.set(9, OFF);
}

void set_water_circulation_on() {
  Serial.println("Second Valve on");
  Serial.println("Fourth Valve on");
  secondValveState = "on";
  fourthValveState = "on";
  waterCirculationState = "on";
  sr.set(5, ON);
  sr.set(10, ON);
  sr.set(11, OFF);
  sr.set(12, ON);
  sr.set(9, OFF);
}

void set_water_circulation_off() {
  Serial.println("Second Valve off");
  Serial.println("Fourth Valve off");
  secondValveState = "off";
  fourthValveState = "off";
  waterCirculationState = "off";
  sr.set(5, OFF);
  sr.set(10, OFF);
  sr.set(11, OFF);
  sr.set(12, OFF);
  sr.set(9, OFF);
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
              set_red_led_on();
            } else if (header.indexOf("GET /led_red/off") >= 0) {
              set_red_led_off();
            } else if (header.indexOf("GET /led_green/on") >= 0) {
              set_green_led_on();
            } else if (header.indexOf("GET /led_green/off") >= 0) {
              set_green_led_off();
            } else if (header.indexOf("GET /led_blue/on") >= 0) {
              set_blue_led_on();
            } else if (header.indexOf("GET /led_blue/off") >= 0) {
              set_blue_led_off();
            } else if (header.indexOf("GET /led_white/on") >= 0) {
              set_white_led_on();
            } else if (header.indexOf("GET /led_white/off") >= 0) {
              set_white_led_off();
            } else if (header.indexOf("GET /water_pump/on") >= 0) {
              set_water_pump_on();
            } else if (header.indexOf("GET /water_pump/off") >= 0) {
              set_water_pump_off();
            } else if (header.indexOf("GET /water_injection/on") >= 0) {
              set_water_injection_on();
            } else if (header.indexOf("GET /water_injection/off") >= 0) {
              set_water_injection_off();
            } else if (header.indexOf("GET /water_draining/on") >= 0) {
              set_water_draining_on();
            } else if (header.indexOf("GET /water_draining/off") >= 0) {
              set_water_draining_off();
            } else if (header.indexOf("GET /water_circulation/on") >= 0) {
              set_water_circulation_on();
            } else if (header.indexOf("GET /water_circulation/off") >= 0) {
              set_water_circulation_off();
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

            client.println("<script type=\"text/javascript\">");
            client.println("function display_ct() {");
            client.println("var x = new Date(); var month=x.getMonth()+1; var day=x.getDate(); var year=x.getFullYear();");
            client.println("if (month <10 ){month='0' + month;} if (day <10 ){day='0' + day;}");
            client.println("var x3= day+'-'+month+'-'+year;");
            client.println("var hour=x.getHours(); var minute=x.getMinutes(); var second=x.getSeconds();");
            client.println("if(hour <10 ){hour='0'+hour;} if(minute <10 ) {minute='0' + minute; } if(second<10){second='0' + second;}");
            client.println("var x3 = 'Last refreshed: ' + x3 + ' ' +  hour+':'+minute+':'+second");
            client.println("document.getElementById('ct').innerHTML = x3; }");
            client.println("</script>");
            
            client.println("<style>html { font-family: Helvetica; display: inline-block; margin: 0px auto; text-align: center;}");
            client.println(".button { background-color: #195B6A; border: none; color: white; padding: 16px 40px;");
            client.println("text-decoration: none; font-size: 30px; margin: 2px; cursor: pointer;}");
            client.println(".button2 {background-color: #77878A;}</style></head>");
            
            // Web Page Heading
            client.println("<body onload=display_ct();><h1><b>A Q U A    S Y S T E M</b></h1><br>");
             client.println("<span id='ct' ></span>");
            client.println("<h2><i>What is the temperature?</i></h2><h3>Temperature in Celsius: ");
            client.println(temperatureCString);
            client.println("*C</h3><h3>Temperature in Fahrenheit: ");
            client.println(temperatureFString);
            client.println("*F</h3><br>"); 

            client.println("<h2><i>Distance for the bottle with clear water</i></h2><h3> ");
            trigger_pin();
            duration_Clear_Water = pulseIn(EchoPin_Clear_Water, HIGH);
            distance_Clear_Water = (duration_Clear_Water / 2) * 0.0343;
           
            client.print("Distance = ");
            if(distance_Clear_Water >= 100 || distance_Clear_Water <= 2) {
              Serial.println("Out of range");
              client.println("Out of range");
            } else {
              Serial.print(distance_Clear_Water);
              client.println(distance_Clear_Water);
              Serial.println(" cm");
              client.println(" cm");
            }
            
            if(distance_Clear_Water > 33) {
              client.println("<h2><i><b>Warning:</b> Too low level in the bottle with clear water</i></h2>");
            }
            client.println("</h3><br>");

            client.println("<h2><i>Distance for the bottle with dirty water</i></h2>");
            trigger_pin();
            duration_Dirty_Water = pulseIn(EchoPin_Dirty_Water, HIGH);
            distance_Dirty_Water = (duration_Dirty_Water / 2) * 0.0343;
            
            Serial.print("Distance = ");
            client.print("Distance = ");
            if(distance_Dirty_Water >= 100 || distance_Dirty_Water <= 2) {
              Serial.println("Out of range");
              client.println("Out of range");
            } else {
              Serial.print(distance_Dirty_Water);
              client.println(distance_Dirty_Water);
              Serial.println(" cm");
              client.println(" cm");
            }

            if(distance_Dirty_Water < 7) {
              client.println("<h2><i><b>Warning:</b> Too high level in the bottle with dirty water</i></h2>");
            }
            client.println("</h3><br>");

            client.println("<h2><i>Distance for the aquarium</i></h2><h3> ");
            trigger_pin();
            duration_Aquarium = pulseIn(EchoPin_Aquarium, HIGH);
            distance_Aquarium = (duration_Aquarium / 2) * 0.0343;
           
            client.print("Distance = ");
            if(distance_Aquarium >= 100 || distance_Aquarium <= 2) {
              client.println("Out of range");
            } else {
              Serial.print(distance_Aquarium);
              client.println(distance_Aquarium);
              Serial.println(" cm");
              client.println(" cm"); 
            }

            if(distance_Aquarium < 7) {
              set_water_injection_off();
            } else if(distance_Aquarium > 17) {
              set_water_draining_off();
              set_water_injection_on();
              if(distance_Aquarium < 7) {
                set_water_injection_off(); 
              }
            } else {
              client.println("<h2><i>Water level in the aquarium is good/i></h2><h3> ");
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
            client.println("<p>Water Injection - State " + waterInjectionState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (waterInjectionState=="off") {
              client.println("<p><a href=\"/water_injection/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/water_injection/off\"><button class=\"button button2\">OFF</button></a></p>");
            }

            // Display current stawte, and ON/OFF buttons for GPIO 4  
            client.println("<p>Water Draining - State " + waterDrainingState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (waterDrainingState=="off") {
              client.println("<p><a href=\"/water_draining/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/water_draining/off\"><button class=\"button button2\">OFF</button></a></p>");
            }

            // Display current stawte, and ON/OFF buttons for GPIO 4  
            client.println("<p>Water Circulation - State " + waterCirculationState + "</p>");
            // If the output4State is off, it displays the ON button       
            if (waterCirculationState=="off") {
              client.println("<p><a href=\"/water_circulation/on\"><button class=\"button\">ON</button></a></p>");
            } else {
              client.println("<p><a href=\"/water_circulation/off\"><button class=\"button button2\">OFF</button></a></p>");
            }
            client.println("</body></html>");
            
}
