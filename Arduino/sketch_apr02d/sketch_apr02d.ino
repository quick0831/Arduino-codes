const int key_out_pin[4]={4,5,6,7};
const int key_in_pin[4]={8,9,10,11};

void setup() {
  Serial.begin(9600);
  for(int i=0;i<=3;i++){
    pinMode(key_out_pin[i],OUTPUT);
    pinMode(key_in_pin[i],INPUT);
  }
}

void loop() {
  for(int i=0;i<=3;i++){
    digitalWrite(key_out_pin[i],HIGH);
    for(int j=0;j<=3;j++){
      Serial.print(digitalRead(key_in_pin[j]));
    }
    digitalWrite(key_out_pin[i],LOW);
  }
  Serial.println("");
}
