//ESP8266 librarys
#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>
//DHT sensor library
#include "DHT.h"

//temperature sensor format. Pin and model
#define DHTPIN 2     // what digital pin we're connected to
#define DHTTYPE DHT21   // DHT 21 (AM2301)

const char* ssid = "XXXX";
const char* password = "XXXX";

ESP8266WebServer server(80);

//Testiin staattinen ip
IPAddress ip(192, 168, 0, 110);
IPAddress gateway(192, 168, 0, 1);
IPAddress subnet(255, 255, 255, 0);
const int led = 13;

//create DHT Object
DHT dht(DHTPIN, DHTTYPE);
//creat variaples for temperature 
float humidity, temp_c,hic; //Humidity, temperature in celcius and heat index
String webString="";     // String to display
// Generally, you should use "unsigned long" for variables that hold time

unsigned long previousMillis = 0;        // will store last temp was read
const long interval = 2000;              // interval at which to read sensor


void handleRoot() {
  digitalWrite(led, 1);
  server.send(200, "text/plain", "hello from esp8266!");
  digitalWrite(led, 0);
}

void handleNotFound(){
  digitalWrite(led, 1);
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET)?"GET":"POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i=0; i<server.args(); i++){
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
  digitalWrite(led, 0);
}

void setup(void){
  pinMode(led, OUTPUT);
  digitalWrite(led, 0);
  Serial.begin(115200);
  WiFi.mode(WIFI_STA);
//static ip
  WiFi.config(ip, gateway, subnet);
  WiFi.begin(ssid, password);
  
  
  Serial.begin(115200);
  dht.begin();
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (MDNS.begin("esp8266")) {
    Serial.println("MDNS responder started");
  }

  server.on("/", handleRoot);

  server.on("/tempData", [](){  
    gettemperature();       // read sensor
    //webString="<html>"+String((float)temp_c)+"</html>";
    webString="NewbsDiy.com \nTemperature: "+String((float)temp_c)+" C \nHumidity: "+String((float)humidity)+" % \nHeat Index: "+String((float)hic)+" C";   // Arduino has a hard time with float to string
    server.send(200, "text/plain", webString);    
  });

  server.onNotFound(handleNotFound);

  server.begin();
  Serial.println("HTTP server started");
}

void loop(void)
{
  server.handleClient();
} 

void gettemperature() {
  // Wait at least 2 seconds seconds between measurements.
  // if the difference between the current time and last time you read
  // the sensor is bigger than the interval you set, read the sensor
  // Works better than delay for things happening elsewhere also
  unsigned long currentMillis = millis();
 
  if(currentMillis - previousMillis >= interval) {
    // save the last time you read the sensor 
    previousMillis = currentMillis;   
 
    // Reading temperature for humidity takes about 250 milliseconds!
    // Sensor readings may also be up to 2 seconds 'old' (it's a very slow sensor)
    humidity = dht.readHumidity();          // Read humidity (percent)
    temp_c = dht.readTemperature();     // Read temperature as Fahrenheit
    // Check if any reads failed and exit early (to try again).
    if (isnan(humidity) || isnan(temp_c)) {
      Serial.println("Failed to read from DHT sensor!");
      return;
    }
  }
}
