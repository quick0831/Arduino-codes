#include <IRremote.h>
#include <IRremoteInt.h>
const int ir_pin=2;
IRrecv irrecv(ir_pin); // 初始化紅外線訊號輸入
decode_results results; // 儲存訊號的結構

void setup() {
  Serial.begin(9600);
  irrecv.blink13(true); // 設為true的話，當收到訊號時，腳位13的LED便會閃爍
  irrecv.enableIRIn(); // 啟動接收
}


void loop() {
  if (irrecv.decode(&results)) { // 接收紅外線訊號並解碼
    if(results.value != 4294967295 && results.decode_type == 1){
      Serial.print(results.value, HEX);// 輸出解碼後的資料
      Serial.print(", ");
      Serial.println(results.bits);
    }
    irrecv.resume(); // 準備接收下一個訊號
  }
 }

