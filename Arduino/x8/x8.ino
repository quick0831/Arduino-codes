#define datapin 8
#define latchpin 9
#define clockpin 10

void setup() {
  pinMode(datapin,OUTPUT);
  pinMode(latchpin,OUTPUT);
  pinMode(clockpin,OUTPUT);
}

void loop() {
  for(int i=1;i<=128;i=i*2){
    for(int j=1;j<=128;j=j*2){
      digitalWrite(latchpin,LOW);
      shiftOut(datapin,clockpin,LSBFIRST,12);
      shiftOut(datapin,clockpin,LSBFIRST,127);
      digitalWrite(latchpin,HIGH);
      delay(300);
    }
  }
}
