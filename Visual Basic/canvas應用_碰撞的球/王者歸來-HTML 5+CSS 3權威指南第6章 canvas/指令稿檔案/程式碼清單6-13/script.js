function draw(id) 
{  
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;  
    var context = canvas.getContext('2d'); 
    var oprtns = new Array(
    "source-atop",
    "source-in",
    "source-out",
    "source-over",
    "destination-atop",
    "destination-in",
    "destination-out",
    "destination-over",
    "lighter",
    "copy",
    "xor"
    );
    i=8;    //Ū�̥i�ۦ�ק�ӰѼƨ���ܷQ�n�˵����s�զX�ĪG
    //ø��즳�ϧΡ]�Ŧ����Ρ^
    context.fillStyle = "blue";
    context.fillRect(10, 10, 60, 60);
    /*�]�w�s�զX�Ҧ��A�q�s�զX���ѼƸs�դ��D��s�զX�Ҧ��A���B�]��i�O8�A
   �ҥH���oprtns�}�C����9(�}�C�q0�}�l�p��^�Ӹs�զX�Ҧ�lighter*/
    context.globalCompositeOperation = oprtns[i];
    //�]�w�s�ϧΡ]�����Ρ^
    context.beginPath();
    context.fillStyle = "red";
    context.arc(60, 60, 30, 0, Math.PI*2, false);
    context.fill();
} 
