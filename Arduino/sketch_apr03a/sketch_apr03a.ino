#define clock_pin 8
#define latch_pin 9
#define data_pin 10

void setup() {
  pinMode(clock_pin,OUTPUT);
  pinMode(latch_pin,OUTPUT);
  pinMode(data_pin,OUTPUT);
}

void loop() {
  for(int i=0;i<=255;i++){
    for(int j=0;j<=255;j++){
      digitalWrite(latch_pin,HIGH);
      shiftOut(data_pin, clock_pin, MSBFIRST, i);
      shiftOut(data_pin, clock_pin, MSBFIRST, j);
      digitalWrite(latch_pin,LOW);
      delay(20);
    }
  }
}
