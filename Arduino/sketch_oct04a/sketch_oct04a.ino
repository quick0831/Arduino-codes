#include <Servo.h>

Servo myservo;

int val,dir;//dir direction

void setup() {
  myservo.attach(9);
  dir=1;
}

void loop() {
  if(dir){
    val++;
  }else{
    val--;
  }
  if(val>=165){
    dir=0;
  }
  if(val<=15){
    dir=1;
  }
  myservo.write(val);
  delay(15);
}
