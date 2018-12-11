#define latchPin 9
#define clockPin 10
#define dataPin 8
int num[]={B11111100,B01100000,B11011010,B11110010,B01100110,B10110110,B10111110,B11100100,B11111110,B11100110};

void setup() {
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);
}

void loop() {
  for(int i=0;i<=9;i++){
    digitalWrite(latchPin, LOW);
    shiftOut(dataPin, clockPin, LSBFIRST, num[i]);
    digitalWrite(latchPin, HIGH);
    delay(500);
  }
}
