#include <IRremote.h>
#include <IRremoteInt.h>
IRsend irsend; // IRRemote限定使用數位腳位3

void setup()
  Serial.begin(115200);


void loop() {
   int d;
   if( (d = Serial.read()) != -1) { // 讀取序列埠
     unsigned long v = 0x0;
     switch(d){ // 根據讀取到的資料，換成代表六個按鍵的紅外線編碼
       case 'H':
         v = 0xFF30CF;
       break;
     }
     
     if(v != 0x0){
       Serial.print("read ");
       Serial.print(d);
       Serial.print(", IR send ");
       Serial.println(v, HEX);
       irsend.sendNEC(v, 32); // 輸出紅外線訊號
     }
   }
}

