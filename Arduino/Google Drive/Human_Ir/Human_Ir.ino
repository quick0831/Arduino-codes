#include <Servo.h>
#include <Arduino.h>

Servo servo;

const byte human_ir_sensor_pin = 2;
const byte buzzer_pin = 3; //Because my buzzer sound strange
                           //, I use analogWrite(180)
const byte RGB_LED_B_pin = 5;
const byte RGB_LED_G_pin = 10;
const byte RGB_LED_R_pin = 11;

void setup() {
  pinMode(human_ir_sensor_pin,INPUT);
  pinMode(buzzer_pin,OUTPUT);
  pinMode(RGB_LED_B_pin,OUTPUT);
  pinMode(RGB_LED_G_pin,OUTPUT);
  pinMode(RGB_LED_R_pin,OUTPUT);
  servo.attach(9, 500, 2400); // 修正脈衝寬度範圍
  servo.write(90); // 一開始先置中90度
  delay(3000);
} 

void loop() {
  for(int i = 20; i <= 170; i+=1){
    servo.write(i);
    ir_sub();
    delay(10);
  }
  for(int i = 170; i >= 20; i-=1){
    servo.write(i);
    ir_sub();
    delay(10);
  }
}
void ir_sub(void){
  if(digitalRead(human_ir_sensor_pin)){
    analogWrite(buzzer_pin,150);
    analogWrite(RGB_LED_B_pin,random(0,(255)+1));
    analogWrite(RGB_LED_G_pin,random(0,(255)+1));
    analogWrite(RGB_LED_R_pin,random(0,(255)+1));
    delay(1000*0.2);
    analogWrite(buzzer_pin,0);
    analogWrite(RGB_LED_B_pin,0);
    analogWrite(RGB_LED_G_pin,0);
    analogWrite(RGB_LED_R_pin,0);
  }
}


