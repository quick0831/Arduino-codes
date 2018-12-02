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
byte set = 0;
int i;
void setup() {
  Serial.begin(9600);
  pinMode ( latchpin , OUTPUT ) ; 
  pinMode ( clockpin , OUTPUT ) ; 
  pinMode ( datapin , OUTPUT ) ; 
  
}

void loop() {
  //for(i = 1; i < 5; i++){
  //  digitalWrite(setnum_pin[i],LOW);
  //}
  digitalWrite ( latchpin , LOW ) ;
  //Serial.println(data[i%10]);
  shiftOut(datapin,clockpin,LSBFIRST,B11111111-data[i%10]);
  //digitalWrite(setnum_pin[set % 4],HIGH);
  digitalWrite ( latchpin , HIGH ) ;
  //set++;
  i++;
  delay(130);
  if(i==1000)
    i=0;
  if (Serial.available() > 0) {
    Serial.print("I received: ");
    Serial.println(Serial.read(), DEC);
  }
}
