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
        //�إ߶�R���A�A����V���i
        var ptrn = context.createPattern(image,'repeat'); 
        //���w��R���A
        context.fillStyle = ptrn;  
        //��R�e��
        context.fillRect(0,0,400,300);  
    };        
}
