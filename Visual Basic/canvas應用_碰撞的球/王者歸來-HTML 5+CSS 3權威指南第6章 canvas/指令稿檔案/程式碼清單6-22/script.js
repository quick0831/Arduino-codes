function draw(id) 
{  
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;  
    var context=canvas.getContext('2d'); 
    context.fillStyle= '#00f';
    context.font= 'italic 30px sans-serif';
    context.textBaseline = 'top';
    //��R�r��
    context.fillText  ('�d�Ҥ�r', 0, 0);
    context.font='bold  30px sans-serif';
    //�����r��
    context.strokeText('�d�Ҥ�r', 0, 50);
}
