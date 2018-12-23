function draw(id) 
{  
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;  
    var context = canvas.getContext('2d');  
    /* 定義彩色 */
    var colors = ["red", "orange", "yellow", "green", "blue", "navy", "purple"];
    /* 定義線寬*/
    context.lineWidth = 10;
    context.transform(1, 0, 0, 1, 100,0)
    /*循環繪制圓弧*/
    for( var i=0; i<colors.length; i++ ) 
    {
        /* 定義每次向下搬移10個像素的變換矩陣 */
        context.transform(1, 0, 0, 1, 0, 10);
        /* 設定彩色 */
        context.strokeStyle = colors[i];
        /* 繪制圓弧 */
        context.beginPath();
        context.arc(50, 100, 100, 0, Math.PI, true);
        context.stroke();
    } 
}
