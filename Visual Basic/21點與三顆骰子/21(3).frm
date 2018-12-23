VERSION 5.00
Begin VB.Form TheFirst 
   BackColor       =   &H00008000&
   Caption         =   "21點"
   ClientHeight    =   5670
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10335
   LinkTopic       =   "Form1"
   ScaleHeight     =   5670
   ScaleWidth      =   10335
   StartUpPosition =   3  '系統預設值
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   7680
      Top             =   360
   End
   Begin VB.CommandButton Command2 
      Caption         =   "停止要牌"
      Height          =   495
      Left            =   6360
      TabIndex        =   0
      Top             =   840
      Width           =   1335
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   0
      Left            =   2520
      Picture         =   "21(3).frx":0000
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   1
      Left            =   2640
      Picture         =   "21(3).frx":1274
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   2
      Left            =   2760
      Picture         =   "21(3).frx":24E8
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   3
      Left            =   2880
      Picture         =   "21(3).frx":375C
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   4
      Left            =   3000
      Picture         =   "21(3).frx":49D0
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   4
      Left            =   4920
      Picture         =   "21(3).frx":5C44
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   3
      Left            =   3720
      Picture         =   "21(3).frx":B0BE
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   2
      Left            =   2520
      Picture         =   "21(3).frx":10538
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   1
      Left            =   1320
      Picture         =   "21(3).frx":159B2
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   0
      Left            =   120
      Picture         =   "21(3).frx":1AE2C
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   4
      Left            =   4920
      Picture         =   "21(3).frx":202A6
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   3
      Left            =   3720
      Picture         =   "21(3).frx":25720
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   2
      Left            =   2520
      Picture         =   "21(3).frx":2AB9A
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   1
      Left            =   1320
      Picture         =   "21(3).frx":30014
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   0
      Left            =   120
      Picture         =   "21(3).frx":3548E
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   5
      Left            =   3120
      Picture         =   "21(3).frx":3A908
      Top             =   2160
      Width           =   1080
   End
End
Attribute VB_Name = "TheFirst"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim flower As String  '目前這張牌的花色
Dim num As Integer          '目前這張牌的數字
Dim rnd_flower As Integer  '花色_隨機數
Dim scores As Integer '目前這張牌的分數

Dim cards As Integer '已發出牌數(電腦加玩家)
Dim cardsCom As Integer '電腦拿到的牌數
Dim sumCom As Integer       '電腦加總分數
Dim sumPlayer As Integer    '玩家加總分數
Dim n As Integer        '第n輪發牌


Dim numCom(5) As Integer '記綠電腦數字
Dim floCom(5) As String '記綠電腦花色
Dim numPlayer(5) As Integer '記綠玩家數字
Dim floPlayer(5) As String  '記綠玩家花色


Sub giveCards() '==============取牌==============

Randomize Timer
    rnd_flower = Int(4 * Rnd + 1) '花色_隨機數
    
    Select Case rnd_flower
       Case 1
          flower = "h"  '卡片的花色
       Case 2
          flower = "c"
       Case 3
          flower = "s"
       Case 4
          flower = "d"
    End Select
   num = Int(13 * Rnd) + 1 '卡片的數字
    scores = num    '目前這張牌分數
    If num = 11 Or num = 12 Or num = 13 Then
       scores = 10
    End If

    '利用遞迴觀念重新檢查是否重複發牌
    '比對目前發的與前幾張是否一樣,花色及數字相同重新取牌==============
    For j = 0 To n
       If numPlayer(j) = num And floPlayer(j) = flower Then Call giveCards
    Next
'For j = 0 To cardsCom
'   If numCom(j) = num And floCom(j) = flower Then Call giveCards
'Next

End Sub


Sub Give4Cards()    '==============一開始前4張牌==============

cards = cards + 1   '已發出牌數(電腦加玩家)
'==============輪流發牌==============

If cards Mod 2 = 0 Then '已發出牌數(電腦加玩家),為第偶數張,輪到玩家
   '秀圖
   Image1(n).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")
    
    '紀錄玩家分數....
   sumPlayer = sumPlayer + scores
   numPlayer(n) = num
   floPlayer(n) = flower
   n = n + 1

   '對A的檢查,不含目前這張牌的分數=10或1 且總分=11分 ==>改成21分
   If sumPlayer - scores = 10 Or sumPlayer - scores = 1 Then
      If sumPlayer = 11 Then sumPlayer = 21
   End If
      
Else    '輪到電腦
   
   '秀圖
    Image2(n).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")
    If n = 0 Then
    Image2(0).Picture = LoadPicture(App.Path & "\Picture\" & "new" & ".gif")
    End If
   '紀錄電腦分數....
   sumCom = sumPlayer + scores
   numCom(n) = num
   floCom(n) = flower
   
   '對A的檢查,不含目前這張牌的分數=10或1 且總分=11分 ==>改成21分
    If sumCom - scores = 10 Or sumCom - scores = 1 Then
         If sumCom = 11 Then sumCom = 21
    End If

End If

End Sub


Private Sub Command2_Click() '玩家不繼續取牌,按不要了按鈕
    Call EndShow(2)  '顯示遊戲結果,0電腦贏,1玩家贏,2依分數判斷
End Sub

Private Sub EndShow(whowin)  '顯示遊戲結果,0電腦贏,1玩家贏,2依分數判斷
    '秀出電腦隱藏的牌
    Image2(0).Picture = LoadPicture(App.Path & "\Picture\" & floCom(0) & numCom(0) & ".jpg")
    '==============判斷何人的總數較大，並且決定輸贏==============
    If whowin = 2 Then
        If sumPlayer > sumCom Then whowin = 1 Else whowin = 0
    End If
    
    MsgBox "您的分數是" & sumPlayer & "分" & "電腦的分數是" & sumCom & "分"
    For i = 0 To cardsCom
        MsgBox numCom(i)
    Next
    
    If whowin Then
        MsgBox "玩家贏了!!"
    Else
        MsgBox "電腦贏了!!"
    End If
    'Me.Hide
    End
End Sub




Private Sub Image3_Click(Index As Integer)      '玩家繼續拿牌

'發牌
giveCards
'累計玩家分數
 sumPlayer = sumPlayer + scores
'秀牌-玩家
Image1(n).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")



If sumPlayer > 21 Then  '玩家爆了,秀出電腦的牌

    Call EndShow(0)  '顯示遊戲結果,0電腦贏,1玩家贏,2依分數判斷
ElseIf n >= 4 Then    '拿到五張牌,玩家贏了
    Call EndShow(1)  '顯示遊戲結果,0電腦贏,1玩家贏,2依分數判斷
Else
    '紀錄玩家牌數
       numPlayer(n) = num
    '紀錄玩家花色
       floPlayer(n) = flower
    '輪數+1
        n = n + 1
End If
End Sub

Private Sub Timer1_Timer()  '自動發牌

    giveCards '====發牌===
    cardsCom = n    '電腦拿到的牌數

If n <= 1 Then
   Call Give4Cards   '一開始前4張牌
Else    '只自動發牌給電腦
   sumCom = sumCom + scores: MsgBox scores '計算若電腦拿牌會有多少分
   If sumCom <= 21 Then '若電腦沒爆,電腦繼續拿牌==>作弊
      Image2(n).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")
      numCom(n) = num
      floCom(n) = flower
      
      If n >= 4 Then    '拿到五張牌,電腦贏了,顯示所有牌
        Image2(n).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")
        Call EndShow(0)  '顯示遊戲結果,0電腦贏,1玩家贏,2依分數判斷
      End If
      
      n = n + 1
   Else '若繼續拿牌,電腦會爆,不繼續拿牌==>作弊
   
      sumCom = sumCom - scores: MsgBox scores '不拿牌,扣回累計分數
      Timer1.Interval = 0   '停止計時器,不再發牌給電腦
      n = 2  '發牌權還給玩家
      If sumPlayer = 21 Then
        Call EndShow(2)  '顯示遊戲結果,0電腦贏,1玩家贏,2依分數判斷
      End If
   End If

End If


End Sub


