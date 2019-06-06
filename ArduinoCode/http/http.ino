


/*
 * ESP8266 NodeMCU LED Control over WiFi Demo
 *
 * https://circuits4you.com
 */
#include <ESP8266WiFi.h>
#include <WiFiClient.h>

//ESP Web Server Library to host a web page
#include <ESP8266WebServer.h>

//---------------------------------------------------------------
//Our HTML webpage contents in program memory
const char MAIN_page[] PROGMEM = R"=====(
<!DOCTYPE html>
<html>
<body>
<center>
<h1>WiFi LED on off demo: 1</h1><br>
Ciclk to turn <a href="ledOn" target="myIframe">LED ON</a><br>
Ciclk to turn <a href="ledOff" target="myIframe">LED OFF</a><br>
LED State:<iframe name="myIframe" width="100" height="25" frameBorder="0"><br>
<hr>
<a href="https://circuits4you.com">circuits4you.com</a>
</center>

</body>
</html>
)=====";
//---------------------------------------------------------------
//On board LED Connected to GPIO2
#define LED 2  

//SSID and Password of your WiFi router
const char* ssid     = "Bob4o";
const char* password = "12345678";

//Declare a global object variable from the ESP8266WebServer class.
ESP8266WebServer server(80); //Server on port 80

//===============================================================
// This routine is executed when you open its IP in browser
//===============================================================
void handleRoot() {
 Serial.println("You called root page");
 String s = MAIN_page; //Read HTML contents
 server.send(200, "text/html", getPage()); //Send web page
}

void handleLEDon() { 
 Serial.println("LED on page");
 digitalWrite(LED,LOW); //LED is connected in reverse
 server.send(200, "text/html", "ON"); //Send ADC value only to client ajax request
}

void handleLEDoff() { 
 Serial.println("LED off page");
 digitalWrite(LED,HIGH); //LED off
 server.send(200, "text/html", "OFF"); //Send ADC value only to client ajax request
}
//==============================================================
//                  SETUP
//==============================================================
void setup(void){
  Serial.begin(115200);
  
  WiFi.begin(ssid, password);     //Connect to your WiFi router
  Serial.println("");

  //Onboard LED port Direction output
  pinMode(LED,OUTPUT); 
  //Power on LED state off
  digitalWrite(LED,HIGH);
  
  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  //If connection successful show IP address in serial monitor
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());  //IP address assigned to your ESP
 
  server.on("/", handleRoot);      //Which routine to handle at root location. This is display page
  server.on("/ledOn", handleLEDon); //as Per  <a href="ledOn">, Subroutine to be called
  server.on("/ledOff", handleLEDoff);

  server.begin();                  //Start server
  Serial.println("HTTP server started");
}
//==============================================================
//                     LOOP
//==============================================================
void loop(void){
  server.handleClient();          //Handle client requests
}


//  http://www.esp8266.com/viewtopic.php?f=8&t=4897&start=5
//
//#include <ESP8266WiFi.h>
//#include <ESP8266WebServer.h>
//
//const char* ssid     = "Bob4o";
//const char* password = "12345678";
//
////const char* ssid = "esp-net";  //  your network SSID (name)
////const char* password = "123456789";   // your network password
//
//ESP8266WebServer webserver(80);
//
////---------------------------------------------------------
//static const char PROGMEM INDEX_HTML[] = R"rawliteral(  
//<!DOCTYPE html>
//<html>
//<head>
//<title>Clock Settings</title>
//</head>
//<body>
//<form method="post" action="/save" >
//Turn on time:<br><input name="onTime" type="text" size="16" value="" ><br><br>
//Turn off time:<br><input name="offTime" type="text" size="16" value="" ><br><br> 
//<input type="submit" name="clk_action" value="accept">
//</form>
//</body>
//</html>
//)rawliteral";
//
////---------------------------------------------------------
//void handleRoot() {
//  webserver.send(200, "text/html", INDEX_HTML);
//}
//
////---------------------------------------------------------
//void handleNotFound() {
//  webserver.send(404, "text/plain", "Page not found ...");
//}
//
////---------------------------------------------------------
//void handleSave() {
//  String str = "Settings Saved ...\r\n";
//  
//  Serial.print("number of arguments "); 
//  Serial.println(webserver.args());                    // number of arguments
//  
//  if (webserver.args() > 0 ) {
//    for ( uint8_t i = 0; i < webserver.args(); i++ ) {
//      str += webserver.argName(i) + " = " + webserver.arg(i) + "\r\n";
//      
//      Serial.println("Arg "+ String(i)+"="+ webserver.argName(i));     
//      Serial.println("Arg "+ String(i)+"="+ webserver.arg(i));
//    }
//  }
//  webserver.send(200, "text/plain", str.c_str());
//}
//
//
////---------------------------------------------------------
//static const char PROGMEM EXAMPLE_HTML[] = R"rawliteral( 
//<!DOCTYPE html>
//<html>
//    <head>
//        <meta name="viewport" content="width=device-width, initial-scale=1">
//        <style>
//            body {
//                color: #434343;
//                font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
//                font-size: 14px;
//                line-height: 1.42857142857143;
//                padding: 20px;
//            }
//
//            .container {
//                margin: 0 auto;
//                max-width: 400px;
//            }
//
//            form .field-group {
//                box-sizing: border-box;
//                clear: both;
//                padding: 4px 0;
//                position: relative;
//                margin: 1px 0;
//                width: 100%;
//            }
//
//            form .field-group > label {
//                color: #757575;
//                display: block;
//                margin: 0 0 5px 0;
//                padding: 5px 0 0;
//                position: relative;
//                word-wrap: break-word;
//            }
//
//            input[type=text] {
//                background: #fff;
//                border: 1px solid #d0d0d0;
//                border-radius: 2px;
//                box-sizing: border-box;
//                color: #434343;
//                font-family: inherit;
//                font-size: inherit;
//                height: 2.14285714em;
//                line-height: 1.4285714285714;
//                padding: 4px 5px;
//                margin: 0;
//                width: 100%;
//            }
//
//            input[type=text]:focus {
//                border-color: #4C669F;
//                outline: 0;
//            }
//
//            .button-container {
//                box-sizing: border-box;
//                clear: both;
//                margin: 1px 0 0;
//                padding: 4px 0;
//                position: relative;
//                width: 100%;
//            }
//
//            button[type=submit] {
//                box-sizing: border-box;
//                background: #f5f5f5;
//                border: 1px solid #bdbdbd;
//                border-radius: 2px;
//                color: #434343;
//                cursor: pointer;
//                display: inline-block;
//                font-family: inherit;
//                font-size: 14px;
//                font-variant: normal;
//                font-weight: 400;
//                height: 2.14285714em;
//                line-height: 1.42857143;
//                margin: 0;
//                padding: 4px 10px;
//                text-decoration: none;
//                vertical-align: baseline;
//                white-space: nowrap;
//            }
//        </style>
//    </head>
//    <body>
//        <div class="container">
//            <h1 style="text-align: center;">Wifi Details</h1>
//            <form method="post" action="/">
//                <div class="field-group">
//                    <label>SSID</label>
//                    <input name="ssid" type="text" length=32>
//                </div>
//                <div class="field-group">
//                    <label>Password</label>
//                    <input name="password" type="text" length=64>
//                </div>
//                <div class="button-container">
//                    <button type="submit">Save</button
//                </div>
//            </form>
//        </div>
//    </body>
//</html>
//)rawliteral";
//
////---------------------------------------------------------
//void handleExample() {
//  webserver.send(200, "text/html", EXAMPLE_HTML);
//}
//
//
//
////=========================================================
//void setup() {
//  Serial.begin(115200);
//  WiFi.begin(ssid, password);
//  Serial.println("");
//
//  // Wait for connection
//  while (WiFi.status() != WL_CONNECTED) {
//    delay(500);
//    Serial.print(".");
//  }
//  Serial.println("");
//  Serial.print("Connected to ");
//  Serial.println(ssid);
//  Serial.print("IP address: ");
//  Serial.println(WiFi.localIP());
//
//  
//  webserver.on("/", handleRoot);
//  webserver.on("/save", handleSave);
//  webserver.onNotFound(handleNotFound);
//  webserver.on("/example", handleExample);
//  
//  webserver.begin();
//  Serial.println("Web server has started");
//}
//
//void loop() {
//  webserver.handleClient();
//}
