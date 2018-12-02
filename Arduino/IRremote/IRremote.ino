//#include <boarddefs.h>
#include <IRremote.h>
//#include <IRremoteInt.h>
//#include <ir_Lego_PF_BitStreamEncoder.h>
#define ir_recv_pin 2
IRrecv irrecv(ir_recv_pin);
decode_results results;

void setup() {
  Serial.begin(9600);
  irrecv.blink13(true);
  irrecv.enableIRIn();
}

void loop() {
  if(irrecv.decode(&results)){
    Serial.print(results.value,HEX);
    Serial.print(" ");
    Serial.print(results.bits);
    Serial.print(" ");
    Serial.println(results.decode_type);
    irrecv.resume();
  }
}
