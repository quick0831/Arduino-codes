function draw(id)
{  
    var image = new Image();      
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;     
    var context = canvas.getContext('2d'); 
    image.src = "tyl2.jpg"; 
    image.onload = function()
    {  
        drawImg(canvas,context,image);  
    };        
}  
function drawImg(canvas,context,image)
{  
    //┑甶ゑㄒ
    var scale=5
    //┰环瓜糴
    var n1=image.width/scale;
   //┰环瓜蔼
    var n2=image.height/scale;
   //┑甶キ计
    var n3=canvas.width/n1;
   //┑甶计
    var n4=canvas.height/n2;
    for(var i=0;i<n3;i++)
        for(var j=0;j<n4;j++)
         context.drawImage(image,i*n1,j*n2,n1,n2);
}
