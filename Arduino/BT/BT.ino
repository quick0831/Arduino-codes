#include <SoftwareSerial.h>
SoftwareSerial BT(8,7);
#define led_pin 11
char data;
byte val;

void setup() {
  pinMode(led_pin,OUTPUT);
  BT.begin(9600);
  BT.print("!!!BT Is Ready!!!");
}

void loop() {
  if(BT.available()){
    val=0;
    while(BT.available()){
      data=BT.read();
      //val=val*10+data-48;
      switch(data){
        case '1':
          val=val*10+1;
          break;
        case '2':
          val=val*10+2;
          break;
        case '3':
          val=val*10+3;
          break;
        case '4':
          val=val*10+4;
          break;
        case '5':
          val=val*10+5;
          break;
        case '6':
          val=val*10+6;
          break;
        case '7':
          val=val*10+7;
          break;
        case '8':
          val=val*10+8;
          break;
        case '9':
          val=val*10+9;
          break;
        case '0':
          val=val*10;
          break;
      }
      /*
      switch(data){
        case 'h' :
          digitalWrite(led_pin,HIGH);
          break;
        case 'l' :
          digitalWrite(led_pin,LOW);
          break;
      }*/
      delay(10);
    }
  }
  analogWrite(led_pin,val);
  BT.print(val);
}
