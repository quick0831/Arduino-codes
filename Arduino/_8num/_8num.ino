#define data_pin 8
#define latch_pin 9
#define clock_pin 10

/*
const int n[10][7]={
  {0,0,0,0,0,0,1},
  {1,0,0,1,1,1,1},
  {0,0,1,0,0,1,0},
  {0,0,0,0,1,1,0},
  {1,0,0,1,1,0,0},
  {0,1,0,0,1,0,0},
  {0,1,0,0,0,0,0},
  {0,0,0,1,1,1,1},
  {0,0,0,0,0,0,0},
  {0,0,0,0,1,0,0}
};
*/

const byte n[10]={
//bABCDEFGH,  H = Dp
  B00000011,
  B10011111,
  B00100101,
  B00001101,
  B10011001,
  B01001001,
  B01000001,
  B00011111,
  B00000001,
  B00001001
};

long pows(int base, int top){
  long k = 1;
  int i = 0;
  while (i < top){
    i++;
    k = k * base;
  }
  return k;
}

//Only single number
void show(long num, int place){
  /*
  for(int i = 0; i <= 6; i++)
    digitalWrite(i+2,n[num % 10][i]);
  */
  digitalWrite(latch_pin,LOW);
  shiftOut(data_pin, clock_pin, MSBFIRST, (byte)(1 << place));
  shiftOut(data_pin, clock_pin, LSBFIRST, n[num % 10]);
  //Serial.println(num % 10);
  digitalWrite(latch_pin,HIGH);
}

//Show a number for one second
void printNum(long num, int delay_time){
  if(num < pows(10, 8) && num >= 0L){
    int d = 500;//Delay time per show(micro seconds)
    unsigned long t = millis();
    while(millis() - t < delay_time){
      /*
      if(num / 10 != 0){
        digitalWrite(12,LOW);
        show(num / 10);
        digitalWrite(11,HIGH);
        delay(d);
        t = t + d;
      }
      */
      for(int p = 7; p > 0; p--)
        if((num / (long)pows(10, p)) != 0){
          show((num / (long)pows(10, p)),p);
          delayMicroseconds(d);
          //t = t + d / 1000;
        }
      show(num,0);
      delayMicroseconds(d);
      //t = t + d / 1000;
    }
    //Serial.println(millis() - t);
  }
  digitalWrite(latch_pin,LOW);
  shiftOut(data_pin, clock_pin, MSBFIRST, 0);
  shiftOut(data_pin, clock_pin, LSBFIRST, 0);
  digitalWrite(latch_pin,HIGH);
}


void setup() {
  //Serial.begin(9600);
  pinMode(latch_pin, OUTPUT);
  pinMode(clock_pin, OUTPUT);
  pinMode(data_pin, OUTPUT);
}

void loop(){
  for(long i = 0; i < pows(10, 8); i++){
    printNum(i,20);
  }
}
