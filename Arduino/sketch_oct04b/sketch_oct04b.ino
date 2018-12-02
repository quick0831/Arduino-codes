void setup() {
  pinMode(9,OUTPUT);
}

void loop() {
  //digitalWrite(9,HIGH);
  //delay(300);
  //digitalWrite(9,LOW);
  //delay(300);
  for(int i=0;i<100;i++){
    analogWrite(9,i);
    delay(15);
  }
  for(int i=100;i>0;i--){
    analogWrite(9,i);
    delay(15);
  }
}
