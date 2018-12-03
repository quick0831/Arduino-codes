/*
 * This code can control a buzzer
 * Can be controlled by an app using bluetooth
 * 
 * Can receive :
 * C,c,D,d,E,F,f,G,g,A,a,B (Nodes)
 * s (stop the Nodes)
 * T,L(change the Node height)
 * 1,2,3(set the Node height)
*/

#include <SoftwareSerial.h>
#define rxpin 10
#define txpin 11
SoftwareSerial BT = SoftwareSerial(rxpin,txpin);

#define buzzer_pin 8
#define C4 262
float pitch = 1;//Means C0,C#0,D0 & use 1,2,3...12
int height = 1;//Means C4,C5,C6 & use 0,1,2

void setup() {
  pinMode(rxpin,INPUT);
  pinMode(txpin,OUTPUT);
  BT.begin(9600);
  pinMode(buzzer_pin,OUTPUT);
}

void loop() {
  if(BT.available() > 0){
    char c = BT.read();
    if(c != 's'){
      boolean ck = check(c);
      if(ck){
        tone(buzzer_pin,C4*pow(2,(pitch-1)/12)*pow(2,height));
      }
    }else{
      noTone(buzzer_pin);
    }
  }
}

boolean check(char value) {
  boolean play = true;
  switch(value){
    case 'C':
      pitch = 1;
      break;
    case 'c':
      pitch = 2;
      break;
    case 'D':
      pitch = 3;
      break;
    case 'd':
      pitch = 4;
      break;
    case 'E':
      pitch = 5;
      break;
    case 'F':
      pitch = 6;
      break;
    case 'f':
      pitch = 7;
      break;
    case 'G':
      pitch = 8;
      break;
    case 'g':
      pitch = 9;
      break;
    case 'A':
      pitch = 10;
      break;
    case 'a':
      pitch = 11;
      break;
    case 'B':
      pitch = 12;
      break;
    
    case 'T':
      if(pitch != 12){
        pitch++;
      }else{
        pitch = 1;
        height++;
      }
      break;
    case 'L':
      pitch--;
      break;
    
    default:
      play = false;
  }
  switch(value){
    case '1':
      height = 0;
      break;
    case '2':
      height = 1;
      break;
    case '3':
      height = 2;
      break;
  }
  return play;
}

