
#include <ESP8266WiFi.h>
#include <DNSServer.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>       
#include "Mosquitto.h"
#include <ArduinoJson.h>

#define __APP_VERSION__  "1.0.0 build 2019-01-05"

//................................

const int DEBUG_LEVEL         = 3;
const int send_requests_count = 10;
const int local_id            = 1;

//CREATE UBUNTU SERVER AND THEN COMPLETE THOSE BELOW

const String mqtt_host        = ""; //input host when you have it
const int mqtt_port           = ; // input port
const String mqtt_id          = ; //input id
const String mqtt_user        = "";
const String mqtt_password    = "";
const String mqtt_topic_in    = "aquarium";
const String mqtt_topic_out   = "server";

WiFiServer server(80);

String header;

Mosquitto mosquitto;

void setup() {
  Serial.begin(9600);

  WiFiManager wifiManager;
  
  wifiManager.autoConnect("AutoConnectAP");
 
  Serial.println("Connected.");
  
  server.begin();

  Serial.println("Connecting mosquitto broker");

  mosquitto.setMqttReconnectCount(send_requests_count);
  mosquitto.setDebugLevel(DEBUG_LEVEL);
  mosquitto.setCallback(mqttCallback);

  mosquitto.setup(mqtt_host, mqtt_id, mqtt_user, mqtt_password, mqtt_port, mqtt_topic_in, mqtt_topic_out);
}

void loop(){

 if(! mosquitto.read()) Serial.println("Failed to read !!!");
}


void mqttCallback(char* topic, byte* payload, unsigned int length)
{
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");

  String msg;
  for (int i = 0; i < length; i++)
  {
    Serial.print((char) payload[i]);
    msg += (char) payload[i];
  }

  Serial.println();

  if(msg.equals("on_off")) doOnOff();
  else if(msg.equals("open_valve_1")) doOpenValve1();
  else if(msg.equals("close_valve_1")) doCloseValve1();
  else if(msg.equals("open_valve_2")) doOpenValve2();
  else if(msg.equals("close_valve_2")) doCloseValve2();
  else if(msg.equals("open_valve_3")) doOpenValve3();
  else if(msg.equals("close_valve_3")) doCloseValve3();
  else if(msg.equals("open_valve_4")) doOpenValve4();
  else if(msg.equals("close_valve_4")) doCloseValve4();
  else if(msg.equals("start_water_pump")) doStartWaterPump();
  else if(msg.equals("stop_water_pump")) doStopWaterPump();
  else if(msg.equals("start_wave_maker")) doStartWaveMaker();
  else if(msg.equals("stop_wave_maker")) doStopWaveMaker();
  else if(msg.equals("get_version"))
  {
    mosquitto.publish("version:" + String(__APP_VERSION__));
    return;
  }else if(msg.startsWith("set:")){
    String tmp = msg.substring(4);

    if(tmp.indexOf(":") <= 0)
    {
      mosquitto.publish("error");
      return;
    }
      mosquitto.publish("success");
  }
}
//........................................
//void doOnOff() {Serial.println ("Switch ON OFF funcion");}
//void doStartOneCup() {Serial.println ("One cup function");}
//void doStartTwoCups() {Serial.println ("One cup function");}
