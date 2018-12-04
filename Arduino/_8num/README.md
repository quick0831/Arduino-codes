# _8num.ino

一個可以將8位數顯示的程式

利用的是**視覺暫留**

## 所需腳位

Pin 8 : data_pin

Pin 9 : latch_pin
(ST_CP)

Pin 10 : clock_pin
(SH_CP)

## 材料

* 1 個 Arduino

* 2 個 74HC595

* 2 個 4位數7段式顯示器

* 許多電阻 (220 ohm)

* 一堆線

## 自訂函數

### pows(int base, int top)

輸出 base 的 top 次方

用意 : 為了得到比內建函數pow()更精準的值而設

Ex. `pows(2, 10) = 1024`

### show(long num, int place)

將一個位數顯示在**特定位置上**

取 num 的個位數顯示

```Arduino
place = 0 指個位

place = 0 指十位
```

### printNum(long num, int delay_time)

顯示 num
時間長 delay_time 毫秒

利用**視覺暫留**

一次只顯示一位數