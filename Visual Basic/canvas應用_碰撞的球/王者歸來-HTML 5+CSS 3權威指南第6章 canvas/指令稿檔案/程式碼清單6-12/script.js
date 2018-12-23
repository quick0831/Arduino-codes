function draw(id) 
{  
    var canvas = document.getElementById(id);  
    if (canvas == null)  
        return false;  
    var context = canvas.getContext('2d');  
    /* ----------------------------------------------
    * 繪制紅色長方形
    * -------------------------------------------- */
    context.strokeStyle = "red";
    context.strokeRect(30, 10, 60, 20);
    /* ----------------------------------------------
    * 繪制順時針旋轉45°後的藍色長方形
    * -------------------------------------------- */
    /*繪制45°圓弧 */
    var rad = 45 * Math.PI / 180;
    /*定義順時針旋轉45°的變換矩陣*/
    context.setTransform(Math.cos(rad), Math.sin(rad), -Math.sin(rad), 
Math.cos(rad), 0, 0 );
    /* 繪制圖形 */
    context.strokeStyle = "blue";
    context.strokeRect(30, 10, 60, 20);
    /* ----------------------------------------------
    * 繪制拉近2.5倍後的綠色長方形
    * -------------------------------------------- */
    /* 定義拉近2.5倍的變換矩陣 */
    context.setTransform(2.5, 0, 0, 2.5, 0, 0);
    /* 繪制圖形 */
    context.strokeStyle = "green";
    context.strokeRect(30, 10, 60, 20);
    /* ----------------------------------------------
    * 將座標原點向右搬移40像素，向下搬移80像素後繪制灰色長方形
    * -------------------------------------------- */
    /* 定義將座標原點向右搬移40像素，向下搬移80像素的矩陣 */
    context.setTransform(1, 0, 0, 1, 40, 80);
    /* 繪制圖形 */
    context.strokeStyle = "gray";
    context.strokeRect(30, 10, 60, 20);
}
