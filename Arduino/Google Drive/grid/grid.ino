#include <Wire.h>
byte buff[6];
int accelx,accely,accelz;
byte analogx,analogy;
boolean c,z;

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
  getnum();
  for(byte i=0;(i*25)<analogx*4;i++)
    Serial.print(" ");
  Serial.println("|");
  //debug();
  //for(byte i=0;i<6;i++){
  //  Serial.print(buff[i]);
  //  Serial.print(" ");
  //  if (buff[i]<100){
  //    Serial.print(" ");
  //  }
  //}
  //Serial.print(buff[i] mod 2);
  //Serial.println("");
  Wire.beginTransmission(0x52);
  Wire.write(0x00);
  Wire.endTransmission();
  delay(15);
}

void read_buff(void){
  for(byte i=0;Wire.available() && (i<6);i++){
    buff[i]=255-((Wire.read() ^ 0x17) + 0x17);
  }
}

void getnum(void){
  accelx=buff[2]<<2 | buff[5] >> 2 & B11;
  accely=buff[3]<<2 | buff[5] >> 4 & B11;
  accelz=buff[4]<<2 | buff[5] >> 6 & B11;
  analogx=buff[0];
  analogy=buff[1];
  c=buff[5] >> 1 & B1;
  z=buff[5] & B1;
}

void debug(void){
  Serial.print(accelx);
  Serial.print(",");
  Serial.print(accely);
  Serial.print(",");
  Serial.print(accelz);
  Serial.print(",");
  Serial.print(analogx);
  Serial.print(",");
  Serial.print(analogy);
  Serial.print(",");
  Serial.print(c);
  Serial.print(",");
  Serial.println(z);
}
