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
    //�����I�s�Ӥ�kø���l�ϧ�
    context.drawImage(image,0,0,100,100); 
    //ø��N�����ϰ�i��Ԫ�᪺�ϧ�
    context.drawImage(image,23,5,57,80,110,0,100,100);  
}
