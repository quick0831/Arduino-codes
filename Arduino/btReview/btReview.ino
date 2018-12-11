#include <Softwarebtserial.h>
const byte rxPin = 2;
const byte txPin = 3;
int incomingByte = 0;
SoftwareSerial btserial (rxPin, txPin);

void setup() {
  pinMode(rxPin, INPUT);
  pinMode(txPin, OUTPUT);
  btserial.begin(9600);
}

void loop() {
  if (btserial.available() > 0) {
    incomingByte = btserial.read();
    btserial.print("data received: ");
    btserial.print(incomingByte, DEC);
    btserial.print(", ");
    btserial.print(incomingByte, HEX);
    btserial.println(" (HEX)");
  }
  btserial.println("");
  delay(100);
}
