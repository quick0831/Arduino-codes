function draw(id)
{  
    var image = new Image();      
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;     
    var context = canvas.getContext('2d'); 
    image.src = "tyl3.jpg"; 
    image.onload = function()
    {  
        //建立填充型態，全方向延展
        var ptrn = context.createPattern(image,'repeat'); 
        //指定填充型態
        context.fillStyle = ptrn;  
        //填充畫布
        context.fillRect(0,0,400,300);  
    };        
}
