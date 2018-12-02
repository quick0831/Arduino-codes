#include <SoftwareSerial.h>
#include <Servo.h>

#define rxpin 10
#define txpin 11
SoftwareSerial BT = SoftwareSerial(rxpin,txpin);
Servo sv;

void setup() {
  pinMode(rxpin,INPUT);
  pinMode(txpin,OUTPUT);
  BT.begin(9600);
  sv.attach(9,600,2300);
}

void loop() {
  if(BT.available() > 0){
    delay(50);
    char c = BT.read();
    if(c == 'A'){
      float a = 0;
      delay(50);
      c = BT.read();
      boolean negative = false;
      if(c == '-'){
        negative = true;
        delay(50);
        c = BT.read();
      }
      while(c != '.' && c != '*'){
        delay(50);
        a = 10 * a + String(c).toInt();
        c = BT.read();
      }
      int i = 0;
      c = BT.read();
      while(c != '*'){
        i++;
        delay(50);
        a = a + String(c).toInt() / pow(10,i);
        c = BT.read();
      }
      if(negative){
        a = a * -1;
      }
      sv.write(a+90);
      BT.print("*T");
      BT.println(a);
      BT.println("*");
    }
  }
}
