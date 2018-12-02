const int led_pin=13;
int t=50;

void setup() {
  pinMode(led_pin,OUTPUT);
  Serial.begin(9600);
}

void loop() {
  digitalWrite(led_pin,HIGH);
  delay(t);
  digitalWrite(led_pin,LOW);
  delay(t);
}

void serialEvent() {
  t=int(Serial.read());
  Serial.println(Serial.read());
}

