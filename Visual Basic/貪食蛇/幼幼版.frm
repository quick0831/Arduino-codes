VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H0080FFFF&
   Caption         =   "貪食蛇"
   ClientHeight    =   5715
   ClientLeft      =   60
   ClientTop       =   690
   ClientWidth     =   8685
   Icon            =   "幼幼版.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5715
   ScaleWidth      =   8685
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   8280
      Top             =   5280
   End
   Begin VB.Label Label1 
      Alignment       =   2  '置中對齊
      BackColor       =   &H0080FFFF&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   36
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   735
      Left            =   2640
      TabIndex        =   0
      Top             =   2640
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim headX As Integer        '蛇頭x
Dim headY As Integer        '蛇頭y
Dim cnt As Integer      '蛇身數
Dim bodyY(500) As Integer    '蛇身y
Dim bodyX(500) As Integer    '蛇身x
Dim go1 As String             '方向
Dim score As Integer            '分數
Dim APPLEX As Integer   '食物
Dim APPLEY As Integer
Dim GameWidth As Byte
Dim GameHeight As Byte
Const bSize = 300
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    '2.2,蛇只能朝三個方向移動,不能直接調頭
    If KeyCode = 37 And go1 <> "R" Then go1 = "L"
    If KeyCode = 38 And go1 <> "D" Then go1 = "U"
    If KeyCode = 39 And go1 <> "L" Then go1 = "R"
    If KeyCode = 40 And go1 <> "U" Then go1 = "D"



End Sub


Private Sub Form_Load()
    Randomize Timer
    GameWidth = 25
    GameHeight = 20
    headX = 12         '設定headX的初值
    headY = 10         '設定headY的初值
    cnt = 3            '設定蛇一開始有3節身數
    go1 = "L"
    
    APPLEX = Int(Rnd * GameWidth)       '4.2隨機生成食物
    APPLEY = Int(Rnd * GameHeight)
    
    For I = 1 To cnt        '蛇身初始的位置
       bodyX(I) = headX + I
       bodyY(I) = headY
    Next
    Form_Paint          '更新畫面 繪製 蛇頭和蛇身,apple
    
    
    Me.Width = GameWidth * bSize + Form1.Width - Form1.ScaleWidth
    Me.Height = GameHeight * bSize + Form1.Height - Form1.ScaleHeight
End Sub



'1. 繪製 蛇頭和蛇身,apple
Private Sub Form_Paint()  '表單繪製事件
Cls          '清除表單畫面

'4.1繪制蘋果
FillStyle = 0      '圖型中心為實心
DrawStyle = 5      '圖型線為透明
FillColor = RGB(255, 0, 0)  '圖型中心顏色為紅色
Line (APPLEX * bSize, APPLEY * bSize)-(APPLEX * bSize + bSize, APPLEY * bSize + bSize), , B

'繪制蛇頭


FillColor = RGB(0, 255, 0)   '圖型中心顏色
Line (headX * bSize, headY * bSize)-(headX * bSize + bSize, headY * bSize + bSize), , B

'繪制蛇身
FillColor = RGB(0, 0, 0)   '黑色
For I = 1 To cnt
   Line (bodyX(I) * bSize, bodyY(I) * bSize)-(bodyX(I) * bSize + bSize, bodyY(I) * bSize + bSize), , B
Next
End Sub




Private Sub Timer1_Timer()
'7.讓蛇自動移動
    '3.蛇身隨著蛇頭的軌跡進行移動

    For I = cnt To 2 Step -1
        bodyX(I) = bodyX(I - 1)
        bodyY(I) = bodyY(I - 1)
    Next
    bodyX(1) = headX
    bodyY(1) = headY
    
    '2.1利用 VB的KEY_DOWN 事件移動蛇頭
    '依照方向更新蛇頭位置
    If go1 = "L" Then headX = headX - 1
    If go1 = "U" Then headY = headY - 1
    If go1 = "R" Then headX = headX + 1
    If go1 = "D" Then headY = headY + 1
    Form_Paint '更新畫面 繪製 蛇頭和蛇身,apple
    
    
'    '6.蛇撞到牆壁會死,撞到則遊戲結束.
'    '判斷是否超過左右邊界與上下邊界，是就宣告失敗
'    If headX < 0 Or headY < 0 Or headX > GameWidth - 1 Or headY > GameHeight - 1 Then MsgBox "總分：" & score, vbInformation, "訊息": End
'
'    '5.蛇頭不能咬到蛇身,咬到則遊戲結束.
'    For I = cnt To 2 Step -1
'    If headX = bodyX(I) And headY = bodyY(I) Then MsgBox "總分：" & score, vbInformation, "訊息": End
'    Next
    
    'roc2.蛇撞到牆壁由另一端穿出.
    If headX < 0 Then headX = GameWidth - 1
    If headX > GameWidth - 1 Then headX = 0
    If headY < 0 Then headY = GameHeight - 1
    If headY > GameHeight - 1 Then headY = 0

    'roc1.蛇頭咬到蛇身,蛇身-1.
    For I = 1 To cnt
        If headX = bodyX(I) And headY = bodyY(I) Then cnt = cnt - 1: Exit For  'error2
    Next
    
    
    
    '4.3吃掉食物後蛇身會變長,加分,重生食物
    If headX = APPLEX And headY = APPLEY Then '吃掉食物
        '蛇身變長
        cnt = cnt + 1
        '4.2隨機生成食物
        APPLEX = Int(Rnd * GameWidth)
        APPLEY = Int(Rnd * GameHeight)
        Form_Paint         '更新畫面 繪製 蛇頭和蛇身,apple
        '加分
        score = score + 1
        Label1.Caption = score
    End If

End Sub



