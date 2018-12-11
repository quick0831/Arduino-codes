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

//Only single number
void show(int num){
  for(int i = 0; i <= 6; i++)
    digitalWrite(i+2,n[num % 10][i]);
}

//Show a number for one second
void print(int num,int delay_time){
  if(num < 10000 && num >= 0){
    int t = 0;
    int d = 5;
    digitalWrite(10,LOW);
    digitalWrite(11,LOW);
    digitalWrite(12,LOW);
    digitalWrite(13,LOW);
    while (t < delay_time){
      if(num / 1000 != 0){
        digitalWrite(10,LOW);
        show(num / 1000);
        digitalWrite(13,HIGH);
        delay(d);
        t = t + d;
      }
      if(num / 100 != 0){
        digitalWrite(13,LOW);
        show(num / 100);
        digitalWrite(12,HIGH);
        delay(d);
        t = t + d;
      }
      if(num / 10 != 0){
        digitalWrite(12,LOW);
        show(num / 10);
        digitalWrite(11,HIGH);
        delay(d);
        t = t + d;
      }
      digitalWrite(11,LOW);
      show(num % 10);
      digitalWrite(10,HIGH);
      delay(d);
      t = t + d;
    }
  }
}

void setup(){
  for(int i = 2; i <= 13; i++){
    pinMode(i,OUTPUT);
    digitalWrite(i,HIGH);
  }
  //Serial.begin(9600);
}

void loop() {
  print(analogRead(A5),100);
}
