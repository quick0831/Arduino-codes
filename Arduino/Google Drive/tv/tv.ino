#include <IRremote.h>
#include <IRremoteInt.h>
// IRRemote限定使用數位腳位3
IRsend irsend;

void loop() {
  irsend.sendNEC(0x2FDF20D,32); // 輸出紅外線訊號
  irsend.sendNEC(0x420352AD,32);
  delay(400);
}

