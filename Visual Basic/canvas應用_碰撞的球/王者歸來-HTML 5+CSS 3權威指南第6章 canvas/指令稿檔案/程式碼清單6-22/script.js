function draw(id) 
{  
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;  
    var context=canvas.getContext('2d'); 
    context.fillStyle= '#00f';
    context.font= 'italic 30px sans-serif';
    context.textBaseline = 'top';
    //¶ñ¥R¦r¦ê
    context.fillText  ('½d¨Ò¤å¦r', 0, 0);
    context.font='bold  30px sans-serif';
    //½ü¹ø¦r¦ê
    context.strokeText('½d¨Ò¤å¦r', 0, 50);
}
