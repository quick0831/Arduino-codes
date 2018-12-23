function draw(id) 
{   
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;  
    var context = canvas.getContext('2d');  
    context.fillStyle = "#EEEEFF";  
    context.fillRect(0, 0, 400, 300);  
    image = new Image(); 
    image.src = "tyl.jpg";  
    image.onload = function() 
    {  
        drawImg(context,image);  
    };       
}  
function drawImg(context,image)
{  
    var i=0;
    //首先呼叫該方法繪制原始圖形
    context.drawImage(image,0,0,100,100); 
    //繪制將局部區域進行拉近後的圖形
    context.drawImage(image,23,5,57,80,110,0,100,100);  
}
