function draw(id) 
{  
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;  
    var context = canvas.getContext('2d'); 
    var oprtns = new Array(
    "source-atop",
    "source-in",
    "source-out",
    "source-over",
    "destination-atop",
    "destination-in",
    "destination-out",
    "destination-over",
    "lighter",
    "copy",
    "xor"
    );
    i=8;    //讀者可自行修改該參數來顯示想要檢視的群組合效果
    //繪制原有圖形（藍色長方形）
    context.fillStyle = "blue";
    context.fillRect(10, 10, 60, 60);
    /*設定群組合模式，從群組合的參數群組中挑選群組合模式，此處因為i是8，
   所以選取oprtns陣列中第9(陣列從0開始計算）個群組合模式lighter*/
    context.globalCompositeOperation = oprtns[i];
    //設定新圖形（紅色圓形）
    context.beginPath();
    context.fillStyle = "red";
    context.arc(60, 60, 30, 0, Math.PI*2, false);
    context.fill();
} 
