function draw(id) 
{ 
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;   
    var context = canvas.getContext('2d'); 
    context.font = 'italic 20px sans-serif';
    /* �w�qø���r*/
    var txt = "�r�ꪺ�e�׬�";
    /* ���o��r�e�� */
    var tm1 = context.measureText(txt);
    /* ø���r */
    context.fillText(txt, 10, 30);
    context.fillText(tm1.width, tm1.width+10, 30);
    /* ���ܦr�� */
    context.font = "bold  30px sans-serif";
    /* ���s���o��r�e�� */
    var tm2 = context.measureText(txt);
    /* ���sø���r*/
    context.fillText(txt, 10, 70);
    context.fillText(tm2.width,tm2.width+10, 70);
}
