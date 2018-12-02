#include <Wire.h>
byte buff[6];

void setup(){
  Wire.begin();
  Serial.begin(9600);
  Wire.beginTransmission(0x52);
  Wire.write(0x40);
  Wire.write(0x00);
  Wire.endTransmission();
}

void loop(){
  Wire.requestFrom(0x52,6);
  read_buff();
  for(byte i=0;i<6;i++){
    Serial.print(buff[i]);
    Serial.print(" ");
    if (buff[i]<100){
      Serial.print(" ");
    }
  }
  Serial.print(buff[i] mod 2);
  Serial.println("");
  Wire.beginTransmission(0x52);
  Wire.write(0x00);
  Wire.endTransmission();
  delay(15);
}

void read_buff(void){
  for(byte i=0;Wire.available() && (i<6);i++){
    buff[i]=(Wire.read() ^ 0x17) + 0x17;
  }
}

int getnum(void){}
