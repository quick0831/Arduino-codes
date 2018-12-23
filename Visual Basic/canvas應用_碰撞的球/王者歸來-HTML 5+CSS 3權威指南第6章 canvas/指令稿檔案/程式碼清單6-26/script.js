var globalId;
var i=0;
function draw(id)
{
    globalId=id;
    setInterval(Composite,1000);
}
function Composite() 
{  
    var canvas = document.getElementById(globalId);  
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
    if(i>10) i=0;
    context.clearRect(0,0,canvas.width,canvas.height);
    context.save();
    //繪制原有圖形（藍色長方形）
    context.fillStyle = "blue";
    context.fillRect(10, 10, 60, 60);
    //設定群組合模式 
    context.globalCompositeOperation = oprtns[i];
    //設定新圖形（紅色圓形）
    context.beginPath();
    context.fillStyle = "red";
    context.arc(60, 60, 30, 0, Math.PI*2, false);
    context.fill();
    context.restore();
    i=i+1;
}
