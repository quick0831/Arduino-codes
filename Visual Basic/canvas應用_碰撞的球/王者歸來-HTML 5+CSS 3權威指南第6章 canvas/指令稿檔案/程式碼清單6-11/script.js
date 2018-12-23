function draw(id) 
{  
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;  
    var context = canvas.getContext('2d');  
    /* �w�q�m�� */
    var colors = ["red", "orange", "yellow", "green", "blue", "navy", "purple"];
    /* �w�q�u�e*/
    context.lineWidth = 10;
    context.transform(1, 0, 0, 1, 100,0)
    /*�`��ø��꩷*/
    for( var i=0; i<colors.length; i++ ) 
    {
        /* �w�q�C���V�U�h��10�ӹ������ܴ��x�} */
        context.transform(1, 0, 0, 1, 0, 10);
        /* �]�w�m�� */
        context.strokeStyle = colors[i];
        /* ø��꩷ */
        context.beginPath();
        context.arc(50, 100, 100, 0, Math.PI, true);
        context.stroke();
    } 
}
