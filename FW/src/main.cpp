/*
THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED 
TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For more details check out Voltlog #361

This is a work in progress, many of the functions below can be incomplete or may not work
*/
#include <Arduino.h>
#include <WiFi.h>
#include <time.h>
#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <DHT_U.h>
#include <SPIFFS.h>
#include <ESPAsyncWebServer.h>

#define K1pin 4
#define K2pin 27
#define K3pin 26
#define K4pin 13
#define SWITCH 25
#define SENSOR1 17
#define SENSOR2 16
#define DHTTYPE    DHT11     // DHT 11 sensor
#define HEATER K1pin
#define HUMIDIFIER K2pin

const int TEMP1_SET_POINT = 23; // degrees C
int TEMP1 = 0;
const int TEMP1_HYSTERESIS = 1; // 1 degree C of hysteresis
const int HUM1_SET_POINT = 50; // percent
int HUM1 = 0;
const int HUM1_HYSTERESIS = 5; // 5% of hysteresis


String K1status = "OFF";
String K2status = "OFF";
String K3status = "OFF";
String K4status = "OFF";
String Temperature = "-";
String Humidity = "-";
String Mode = "manual";


const char* ssid       = "ssid";
const char* password   = "password";

const char* ntpServer = "pool.ntp.org";
const long  gmtOffset_sec = 7200; //GMT+2 in seconds
const int   daylightOffset_sec = 3600;  //daylight saving in sec
char date_buff[32];

sensor_t sensor1;
DHT_Unified dht(SENSOR1, DHTTYPE);
AsyncWebServer server(80);

void printLocalTime();
char * returnLocalTime();
int getDaylightSavings();
void printSensorDiagnostic();
void printSensorData();
void getSensorData();
String processor(const String& var);
void updateHumidifier();
void updateHeater();
void configWebServer();


void setup() {
  // Init UART interface
  Serial.begin(115200);

  // Init SPIFFS
  if(!SPIFFS.begin()){
  Serial.println("An Error has occurred while mounting SPIFFS");
  return;
  }

  // Init IO pins
  pinMode(K1pin, OUTPUT);
  pinMode(K2pin, OUTPUT);
  pinMode(K3pin, OUTPUT);
  pinMode(K4pin, OUTPUT);
  pinMode(SWITCH, INPUT);

  // Init & connect to WiFi
  Serial.printf("Connecting to %s ", ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
      delay(500);
      Serial.print(".");
  }
  Serial.println(" CONNECTED");
  Serial.print("Got IP: ");  Serial.println(WiFi.localIP());

  //config webserver
  configWebServer();

  //config time
  Serial.println("Configuring NTP service and fetching current time.");
  configTime(gmtOffset_sec, 0, ntpServer);  //start with DST 0 to be able to config and get initial time
  printLocalTime();
  Serial.println("Adjusting for DST.");
  configTime(gmtOffset_sec, getDaylightSavings(), ntpServer);
  printLocalTime();

  //Initialize DHT sensor
  dht.begin();
  //printSensorDiagnostic();


  //Print stored config variables
  Serial.println("Retrieving stored settings from memory...");
  Serial.print  (F("TEMP1_SET_POINT: ")); Serial.println(TEMP1_SET_POINT);
  Serial.print  (F("TEMP1_HYSTERESIS: ")); Serial.println(TEMP1_HYSTERESIS);
  Serial.print  (F("HUM1_SET_POINT: ")); Serial.println(HUM1_SET_POINT);
  Serial.print  (F("HUM1_HYSTERESIS: ")); Serial.println(HUM1_HYSTERESIS);


  delay(1000);
  Serial.println("System ready.");
}

void loop() {
  
  //printLocalTime();
  getSensorData();
  printSensorData();
  updateHumidifier();
  updateHeater();

  delay(1000);

  //TODO Add safety checks for temp / hum values
  //TODO add watchdog that resets system in case of lockup


  // RUN THIS TO UPDATE TIME FRON NTP SERVER
  //  configTime(gmtOffset_sec, getDaylightSavings(), ntpServer);

}

String processor(const String& var){
  if (var == "TIME"){
    return returnLocalTime();
  }
  else if (var == "TEMP"){
    return Temperature;
  }
  else if (var == "HUMIDITY"){
    return Humidity;
  }
  else if (var == "OUTPUT1_STATUS"){
    return K1status;
  }
  else if (var == "OUTPUT2_STATUS"){
    return K2status;
  }
  else if (var == "OUTPUT3_STATUS"){
    return K3status;
  }
  else if (var == "OUTPUT4_STATUS"){
    return K4status;
  }
  return String();
}

void getSensorData()
{
    // Get temperature event and print its value.
  sensors_event_t event;
  dht.temperature().getEvent(&event);
  if (isnan(event.temperature)) {
   //Serial.println(F("Error reading temperature!"));
  }
  else {
    //Serial.print(F("Temperature: "));
    //Serial.print(event.temperature);
    //Serial.println(F("°C"));
    TEMP1 = event.temperature;
    Temperature = event.temperature;
  }
  // Get humidity event and print its value.
  dht.humidity().getEvent(&event);
  if (isnan(event.relative_humidity)) {
    //Serial.println(F("Error reading humidity!"));
  }
  else {
    //Serial.print(F("Humidity: "));
    //Serial.print(event.relative_humidity);
    //Serial.println(F("%"));
    HUM1 = event.relative_humidity;
    Humidity = event.relative_humidity;
  }
}

//config webserver
void configWebServer() {
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request){request->send(SPIFFS, "/index.html", String(), false, processor);});
  server.on("/bootstrap.min.css", HTTP_GET, [](AsyncWebServerRequest *request){request->send(SPIFFS, "/bootstrap.min.css", "text/css");});
  server.on("/output1_on", HTTP_GET, [](AsyncWebServerRequest *request){digitalWrite(K1pin, HIGH);K1status="ON";request->send(SPIFFS, "/index.html", String(), false, processor);});
  server.on("/output1_off", HTTP_GET, [](AsyncWebServerRequest *request){digitalWrite(K1pin, LOW);K1status="OFF";request->send(SPIFFS, "/index.html", String(), false, processor);});
  server.on("/output2_on", HTTP_GET, [](AsyncWebServerRequest *request){digitalWrite(K2pin, HIGH);K2status="ON";request->send(SPIFFS, "/index.html", String(), false, processor);});
  server.on("/output2_off", HTTP_GET, [](AsyncWebServerRequest *request){digitalWrite(K2pin, LOW);K2status="OFF";request->send(SPIFFS, "/index.html", String(), false, processor);});
  server.on("/output3_on", HTTP_GET, [](AsyncWebServerRequest *request){digitalWrite(K3pin, HIGH);K3status="ON";request->send(SPIFFS, "/index.html", String(), false, processor);});
  server.on("/output3_off", HTTP_GET, [](AsyncWebServerRequest *request){digitalWrite(K3pin, LOW);K3status="OFF";request->send(SPIFFS, "/index.html", String(), false, processor);});
  server.on("/output4_on", HTTP_GET, [](AsyncWebServerRequest *request){digitalWrite(K4pin, HIGH);K4status="ON";request->send(SPIFFS, "/index.html", String(), false, processor);});
  server.on("/output4_off", HTTP_GET, [](AsyncWebServerRequest *request){digitalWrite(K4pin, LOW);K4status="OFF";request->send(SPIFFS, "/index.html", String(), false, processor);});

  server.on("/temperature", HTTP_GET, [](AsyncWebServerRequest *request){request->send_P(200, "text/plain", Temperature.c_str());});
  server.on("/humidity", HTTP_GET, [](AsyncWebServerRequest *request){request->send_P(200, "text/plain", Humidity.c_str());});
  server.on("/time", HTTP_GET, [](AsyncWebServerRequest *request){request->send_P(200, "text/plain", returnLocalTime());});
  server.on("/auto", HTTP_GET, [](AsyncWebServerRequest *request){Mode="auto";request->send_P(200, "text/plain", Mode.c_str());});
  server.on("/manual", HTTP_GET, [](AsyncWebServerRequest *request){Mode="manual";request->send_P(200, "text/plain", Mode.c_str());});
  server.on("/get_mode", HTTP_GET, [](AsyncWebServerRequest *request){request->send_P(200, "application/json", Mode.c_str());});
  
  server.begin();
}

//Function that controls the heater output
void updateHeater() {                         
  static double lastTemp = 0;
  if (lastTemp != TEMP1) {
    digitalWrite(HEATER, TEMP1 <= TEMP1_SET_POINT - TEMP1_HYSTERESIS ? HIGH : LOW);
    lastTemp = TEMP1;
  }
}

void updateHumidifier() {                         
  static double lastHum = 0;
  if (lastHum != HUM1) {
    digitalWrite(HUMIDIFIER, HUM1 <= HUM1_SET_POINT - HUM1_HYSTERESIS ? HIGH : LOW);
    lastHum = HUM1;
  }
}

void printLocalTime()
{
  struct tm timeinfo;
  if(!getLocalTime(&timeinfo)){
    Serial.println("Failed to obtain time");
    return;
  }
  Serial.println(&timeinfo, "%A, %B %d %Y %H:%M:%S");
}

char * returnLocalTime()
{
  struct tm timeinfo;
  
  if(!getLocalTime(&timeinfo)){
    Serial.println("Failed to obtain time");
  } 
  strftime(date_buff, 32, "%A, %B %d %Y %H:%M:%S", &timeinfo);
  return date_buff;

}


int getDaylightSavings()
{
  struct tm timeinfo;
  int daylightOffset;
  
  if(!getLocalTime(&timeinfo)){
    Serial.println("Failed to obtain time");
  } 
  daylightOffset =  daylightOffset_sec * timeinfo.tm_isdst;
  return daylightOffset;
}

void printSensorDiagnostic()
{
  dht.temperature().getSensor(&sensor1);
  Serial.println(F("------------------------------------"));
  Serial.println(F("Temperature Sensor"));
  Serial.print  (F("Sensor Type: ")); Serial.println(sensor1.name);
  Serial.print  (F("Driver Ver:  ")); Serial.println(sensor1.version);
  Serial.print  (F("Unique ID:   ")); Serial.println(sensor1.sensor_id);
  Serial.print  (F("Max Value:   ")); Serial.print(sensor1.max_value); Serial.println(F("°C"));
  Serial.print  (F("Min Value:   ")); Serial.print(sensor1.min_value); Serial.println(F("°C"));
  Serial.print  (F("Resolution:  ")); Serial.print(sensor1.resolution); Serial.println(F("°C"));
  Serial.println(F("------------------------------------"));
  // Print humidity sensor details.
  dht.humidity().getSensor(&sensor1);
  Serial.println(F("Humidity Sensor"));
  Serial.print  (F("Sensor Type: ")); Serial.println(sensor1.name);
  Serial.print  (F("Driver Ver:  ")); Serial.println(sensor1.version);
  Serial.print  (F("Unique ID:   ")); Serial.println(sensor1.sensor_id);
  Serial.print  (F("Max Value:   ")); Serial.print(sensor1.max_value); Serial.println(F("%"));
  Serial.print  (F("Min Value:   ")); Serial.print(sensor1.min_value); Serial.println(F("%"));
  Serial.print  (F("Resolution:  ")); Serial.print(sensor1.resolution); Serial.println(F("%"));
  Serial.println(F("------------------------------------"));
}

void printSensorData()
{
  // Get temperature event and print its value.
  sensors_event_t event;
  dht.temperature().getEvent(&event);
  if (isnan(event.temperature)) {
    Serial.println(F("Error reading temperature!"));
  }
  else {
    Serial.print(F("Temperature: "));
    Serial.print(event.temperature);
    Serial.println(F("°C"));
  }
  // Get humidity event and print its value.
  dht.humidity().getEvent(&event);
  if (isnan(event.relative_humidity)) {
    Serial.println(F("Error reading humidity!"));
  }
  else {
    Serial.print(F("Humidity: "));
    Serial.print(event.relative_humidity);
    Serial.println(F("%"));
  }
}

