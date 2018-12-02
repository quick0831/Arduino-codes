const int GLED=13;
const int YLED=12;
const int RLED=11;

void setup() {
  pinMode(GLED,OUTPUT);
  pinMode(YLED,OUTPUT);
  pinMode(RLED,OUTPUT);
}

void loop() {
  digitalWrite(GLED,HIGH);
  digitalWrite(YLED,LOW);
  digitalWrite(RLED,LOW);
  delay(800);
  
  digitalWrite(YLED,HIGH);
  digitalWrite(GLED,LOW);
  digitalWrite(RLED,LOW);
  delay(300);
  
  digitalWrite(RLED,HIGH);
  digitalWrite(GLED,LOW);
  digitalWrite(YLED,LOW);
  delay(700);
}
