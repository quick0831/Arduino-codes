#include <SoftwareSerial.h>
int led_pin=3;
int rxPin=11;
int txPin=10;
SoftwareSerial BTS = SoftwareSerial(rxPin, txPin);

void setup() {
  pinMode(led_pin,OUTPUT);
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  BTS.begin(9600);
}

void loop() {
  char c = BTS.read();
  BTS.println(c);
}
