#include <SoftwareSerial.h>
#define led_pin 3
#define rxPin 10
#define txPin 11
SoftwareSerial mySerial =  SoftwareSerial(rxPin, txPin);

void setup()  {
  pinMode(led_pin,OUTPUT);
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  mySerial.begin(9600);
}

void loop() {
  int c = analogRead(A0);
//mySerial.read();
  mySerial.println(c);
  delay(10);
}
