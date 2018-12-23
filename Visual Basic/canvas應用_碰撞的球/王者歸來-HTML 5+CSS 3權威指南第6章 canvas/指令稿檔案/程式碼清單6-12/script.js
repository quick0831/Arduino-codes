function draw(id) 
{  
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;  
    var context = canvas.getContext('2d');  
    /* ----------------------------------------------
    * ø���������
    * -------------------------------------------- */
    context.strokeStyle = "red";
    context.strokeRect(30, 10, 60, 20);
    /* ----------------------------------------------
    * ø��ɰw����45�X�᪺�Ŧ�����
    * -------------------------------------------- */
    /*ø��45�X�꩷ */
    var rad = 45 * Math.PI / 180;
    /*�w�q���ɰw����45�X���ܴ��x�}*/
    context.setTransform(Math.cos(rad), Math.sin(rad), -Math.sin(rad), 
Math.cos(rad), 0, 0 );
    /* ø��ϧ� */
    context.strokeStyle = "blue";
    context.strokeRect(30, 10, 60, 20);
    /* ----------------------------------------------
    * ø��Ԫ�2.5���᪺�������
    * -------------------------------------------- */
    /* �w�q�Ԫ�2.5�����ܴ��x�} */
    context.setTransform(2.5, 0, 0, 2.5, 0, 0);
    /* ø��ϧ� */
    context.strokeStyle = "green";
    context.strokeRect(30, 10, 60, 20);
    /* ----------------------------------------------
    * �N�y�Э��I�V�k�h��40�����A�V�U�h��80������ø��Ǧ�����
    * -------------------------------------------- */
    /* �w�q�N�y�Э��I�V�k�h��40�����A�V�U�h��80�������x�} */
    context.setTransform(1, 0, 0, 1, 40, 80);
    /* ø��ϧ� */
    context.strokeStyle = "gray";
    context.strokeRect(30, 10, 60, 20);
}
