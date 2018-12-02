#include <IRremote.h>
#define ir_recv_pin 2
IRrecv irrecv(ir_recv_pin);
decode_results results;

#include <Wire.h> 
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x27,2,1,0,4,5,6,7,3,POSITIVE);  // Set the LCD I2C address

const byte chars[8][8] = {
  {0x3,0x6,0xC,0x18,0x18,0xC,0x6,0x3},
  {0x18,0xC,0x6,0x3,0x3,0x6,0xC,0x18}
};

void setup() {
  irrecv.blink13(true);
  irrecv.enableIRIn();

  lcd.begin(16,2);
  for(int i = 0; i < 8; i++){
    lcd.createChar(i,(byte *)chars[i]);
  }
  lcd.home();
  lcd.print("Hello Arduino!");
}

void loop() {
  if(irrecv.decode(&results)){
    if(results.bits != 0 && results.decode_type != -1){
      lcd.home();
      lcd.print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
      lcd.home();
      lcd.print(results.value,HEX);
    }
    irrecv.resume();
  }
}
