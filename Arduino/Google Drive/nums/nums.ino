const byte setnum_pin[4] ={10,11,12,13};
const byte latchpin = 9;
const byte clockpin = 8;
const byte datapin = 7;
byte data[10] = {
  B11111100,//0
  B01100000,//1
  B11011010,//2
  B11110010,//3
  B01100110,//4
  B10110110,//5
  B10111110,//6
  B11100000,//7
  B11111110,//8
  B11100110 //9
};
byte set = 3;
byte i;
byte d;
void setup() {
  Serial.begin(9600);
  pinMode(latchpin,OUTPUT);
  pinMode(clockpin,OUTPUT);
  pinMode(datapin,OUTPUT);
  for(byte j=0;j<4;j++)
    pinMode(setnum_pin[j],OUTPUT);
  digitalWrite(10,LOW);
}

void loop() {
  for(byte j=1;j<5;j++)
    digitalWrite(setnum_pin[i],LOW);
  digitalWrite ( latchpin , LOW ) ;
  //Serial.println(data[i%10]);
  shiftOut(datapin,clockpin,LSBFIRST, data[d]);
  digitalWrite(setnum_pin[set % 4],HIGH);
  digitalWrite ( latchpin , HIGH ) ;
  //set++;
  delay(130);
  if (Serial.available() > 0) {
    i=Serial.read();
    if(i<59 && i>47){
      d=i-48;
      Serial.print("I received: ");
      Serial.println(data[d], BIN);
    }
  }
}
