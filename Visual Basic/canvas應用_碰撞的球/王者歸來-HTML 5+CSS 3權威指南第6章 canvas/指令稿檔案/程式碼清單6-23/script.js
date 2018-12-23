function draw(id) 
{ 
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;   
    var context = canvas.getContext('2d'); 
    context.font = 'italic 20px sans-serif';
    /* 定義繪制文字*/
    var txt = "字串的寬度為";
    /* 取得文字寬度 */
    var tm1 = context.measureText(txt);
    /* 繪制文字 */
    context.fillText(txt, 10, 30);
    context.fillText(tm1.width, tm1.width+10, 30);
    /* 改變字型 */
    context.font = "bold  30px sans-serif";
    /* 重新取得文字寬度 */
    var tm2 = context.measureText(txt);
    /* 重新繪制文字*/
    context.fillText(txt, 10, 70);
    context.fillText(tm2.width,tm2.width+10, 70);
}
