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
  if(num < 10 && num >= 0)
    for(int i = 0; i <= 6; i++)
      digitalWrite(i+2,n[num][i]);
}

//Show a number for one second
void print(int num){
  if(num < 100 && num >= 0){
    int t = 0;
    int d = 10;
    digitalWrite(10,LOW);
    while (t < 1000){
      if(num / 10 != 0){
        show(num / 10);
        digitalWrite(9,LOW);
        digitalWrite(10,HIGH);
        delay(d);
        t = t + d;
      }
      show(num % 10);
      digitalWrite(9,HIGH);
      digitalWrite(10,LOW);
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
}

void loop(){
  //Red 11,Yellow 12,Green 13
  digitalWrite(11,LOW);
  for(int i = 20; i > 0; i--)
    print(i);
  digitalWrite(11,HIGH);
  digitalWrite(9,LOW);
  digitalWrite(10,LOW);
  digitalWrite(13,LOW);
  delay(20000);
  digitalWrite(13,HIGH);
  digitalWrite(12,LOW);
  delay(2000);
  digitalWrite(12,HIGH);
}
