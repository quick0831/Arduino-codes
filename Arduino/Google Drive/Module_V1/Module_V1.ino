const int LED1=13;
const int LED2=12;
const int swich1=10;
const int swich2=11;
void setup() {
  // put your setup code here, to run once:
  pinMode(LED1,OUTPUT);
  pinMode(LED2,OUTPUT);
  pinMode(swich1,INPUT);
  pinMode(swich2,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int state1;
  state1=digitalRead(swich1);
  int state2;
  state2=digitalRead(swich2);
  if(state1 == LOW){
    digitalWrite(LED1,HIGH);
  }else{
    digitalWrite(LED1,LOW);
  }
  if(state2 == LOW){
    digitalWrite(LED2,HIGH);
  }else{
    digitalWrite(LED2,LOW);
  }
}
