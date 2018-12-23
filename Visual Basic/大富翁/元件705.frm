VERSION 5.00
Begin VB.Form Form3 
   AutoRedraw      =   -1  'True
   BackColor       =   &H0000FFFF&
   Caption         =   "大富翁test"
   ClientHeight    =   6405
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6750
   BeginProperty Font 
      Name            =   "新細明體"
      Size            =   26.25
      Charset         =   136
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   6405
   ScaleWidth      =   6750
   StartUpPosition =   2  '螢幕中央
   Begin VB.CommandButton Command3 
      Caption         =   "退出!"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   36
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   1080
      TabIndex        =   34
      Top             =   4080
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  '平面
      Caption         =   "玩者4"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   9
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   3
      Left            =   6120
      Picture         =   "元件705.frx":0000
      Style           =   1  '圖片外觀
      TabIndex        =   31
      Top             =   4680
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  '平面
      Caption         =   "玩者3"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   9
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   2
      Left            =   5520
      Picture         =   "元件705.frx":04FB
      Style           =   1  '圖片外觀
      TabIndex        =   30
      Top             =   4680
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "骰骰子"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   36
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   3000
      TabIndex        =   1
      Top             =   4080
      Width           =   2415
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  '平面
      Caption         =   "玩者1"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   9
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   0
      Left            =   5520
      Picture         =   "元件705.frx":09F6
      Style           =   1  '圖片外觀
      TabIndex        =   0
      Top             =   5520
      Width           =   615
   End
   Begin VB.Timer Timer1 
      Left            =   120
      Top             =   120
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  '平面
      Caption         =   "玩者2"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   9
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Index           =   1
      Left            =   6120
      Picture         =   "元件705.frx":0EF1
      Style           =   1  '圖片外觀
      TabIndex        =   5
      Top             =   5520
      Width           =   615
   End
   Begin VB.Label lb_money 
      BorderStyle     =   1  '單線固定
      Caption         =   "Label5"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   9
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   3
      Left            =   1080
      TabIndex        =   33
      Top             =   3600
      Width           =   4335
   End
   Begin VB.Label lb_money 
      BorderStyle     =   1  '單線固定
      Caption         =   "Label4"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   9
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   2
      Left            =   1080
      TabIndex        =   32
      Top             =   3240
      Width           =   4335
   End
   Begin VB.Label redd 
      BackColor       =   &H00C0C0FF&
      Caption         =   "機會! 機會!"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Index           =   3
      Left            =   5640
      TabIndex        =   29
      Top             =   4080
      Width           =   675
   End
   Begin VB.Label yelloww 
      BackColor       =   &H0080FFFF&
      Caption         =   "命運! 命運!"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Index           =   3
      Left            =   5640
      TabIndex        =   27
      Top             =   1800
      Width           =   675
   End
   Begin VB.Label yelloww 
      BackColor       =   &H0080FFFF&
      Caption         =   "命運! 命運!"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Index           =   1
      Left            =   240
      TabIndex        =   26
      Top             =   1800
      Width           =   675
   End
   Begin VB.Label yelloww 
      BackColor       =   &H0080FFFF&
      Caption         =   "命運! 命運!"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   2
      Left            =   1800
      TabIndex        =   25
      Top             =   120
      Width           =   675
   End
   Begin VB.Label redd 
      BackColor       =   &H00C0C0FF&
      Caption         =   "機會! 機會!"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   2
      Left            =   4080
      TabIndex        =   24
      Top             =   120
      Width           =   675
   End
   Begin VB.Label redd 
      BackColor       =   &H00C0C0FF&
      Caption         =   "機會! 機會!"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   0
      Left            =   4080
      TabIndex        =   23
      Top             =   5640
      Width           =   675
   End
   Begin VB.Label yelloww 
      BackColor       =   &H0080FFFF&
      Caption         =   "命運! 命運!"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   0
      Left            =   1800
      TabIndex        =   22
      Top             =   5640
      Width           =   675
   End
   Begin VB.Label Stop 
      BackColor       =   &H00C0FFC0&
      Caption         =   "暫停一次"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Index           =   3
      Left            =   5760
      TabIndex        =   21
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label Stop 
      BackColor       =   &H00C0FFC0&
      Caption         =   "暫停一次"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Index           =   1
      Left            =   240
      TabIndex        =   20
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label Stop 
      BackColor       =   &H00C0FFC0&
      Caption         =   "暫停一次"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   0
      Left            =   2640
      TabIndex        =   19
      Top             =   5640
      Width           =   585
   End
   Begin VB.Label Stop 
      BackColor       =   &H00C0FFC0&
      Caption         =   "暫停一次"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   2
      Left            =   2640
      TabIndex        =   18
      Top             =   120
      Width           =   585
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   11
      Left            =   5640
      TabIndex        =   17
      Top             =   1200
      Width           =   900
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   10
      Left            =   5640
      TabIndex        =   16
      Top             =   3480
      Width           =   900
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   9
      Left            =   5640
      TabIndex        =   15
      Top             =   4920
      Width           =   900
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   8
      Left            =   1080
      TabIndex        =   14
      Top             =   120
      Width           =   660
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   7
      Left            =   3360
      TabIndex        =   13
      Top             =   120
      Width           =   585
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   6
      Left            =   4800
      TabIndex        =   12
      Top             =   120
      Width           =   660
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   5
      Left            =   120
      TabIndex        =   11
      Top             =   4920
      Width           =   855
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   4
      Left            =   120
      TabIndex        =   10
      Top             =   3480
      Width           =   855
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   2
      Left            =   4800
      TabIndex        =   9
      Top             =   5640
      Width           =   660
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   1
      Left            =   3360
      TabIndex        =   8
      Top             =   5640
      Width           =   585
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Index           =   0
      Left            =   1080
      TabIndex        =   7
      Top             =   5640
      Width           =   660
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Index           =   3
      Left            =   120
      TabIndex        =   6
      Top             =   1200
      Width           =   855
   End
   Begin VB.Label lb_money 
      BorderStyle     =   1  '單線固定
      Caption         =   "Label3"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   9
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   1080
      TabIndex        =   4
      Top             =   2880
      Width           =   4335
   End
   Begin VB.Label lb_money 
      BorderStyle     =   1  '單線固定
      Caption         =   "Label2"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   9
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   1080
      TabIndex        =   3
      Top             =   2520
      Width           =   4335
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000D&
      Caption         =   "骰子數:?"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   18
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   1080
      TabIndex        =   2
      Top             =   1080
      Width           =   4335
   End
   Begin VB.Label redd 
      BackColor       =   &H00C0C0FF&
      Caption         =   "機會! 機會!"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   14.25
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   675
      Index           =   1
      Left            =   120
      TabIndex        =   28
      Top             =   4080
      Width           =   675
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pl  As Integer ' 第幾player
'Public sumDice As Integer '多顆骰子總數
Public wn As Integer    '骰子數
Dim cw As Integer   '計錄玩者走幾步
Dim wa(3) As Integer   '第幾面牆
Dim stepW(3) As Integer   '還剩幾步到下一面牆
Dim pm(3) '玩者的金錢
Dim hCount(11)  As Integer  '幾棟房子
Dim hWho(11)  As Integer '土地所有權 9沒人
Dim hName(11)  As String    '土地名稱
Dim hPay(23)  As Integer '過路費(前12筆) vs每棟房子加收費
Dim waitAmin As Byte
Public player As Byte   'player   人數-1



Private Sub Command2_Click()
    Randomize Timer


        
    If waitAmin = pl Then
        MsgBox "您暫停一次", vbInformation, "訊息"
        waitAmin = 9
    Else
        wn = Int(6 * Rnd + 1)  '骰子數
        'MsgBox "骰子數:" & wn
        Label1.Caption = "骰子數:" & wn
        Timer1.Interval = 100 '開始走
    End If
End Sub

Private Sub Command3_Click()
yn = MsgBox("", vbYesNo)
If yn = 6 Then 'y=6 n=7
    End
End If
End Sub

Private Sub Form_Activate()
Command1(0).Picture = Form5.Image1(0).Picture
Command1(1).Picture = Form5.Image1(1).Picture
Command1(2).Picture = Form5.Image1(2).Picture
Command1(3).Picture = Form5.Image1(3).Picture
End Sub

Private Sub Form_Load()
For i = 0 To 3
    Command1(i).Visible = False
    lb_money(i).Visible = False
Next
For i = 0 To player
    Command1(i).Visible = True
    lb_money(i).Visible = True
Next
For j = 0 To 11
    hWho(j) = 9
Next
waitAmin = 9
wn = 0
cw = 0
For i = 0 To player
    wa(i) = 0
    stepW(i) = 0
    pm(i) = 2E+307
    Command1(i).Top = 1000 + 750 * 6
    Command1(i).Left = 1000 + 750 * 6
Next
Call EndGame(0)

'設定起點

Form3.FillStyle = 0
Form3.Width = (750 * 6) + 1000 * 2 + Form3.Width - Form3.ScaleWidth
Form3.Height = (750 * 6) + 1000 * 2 + Form3.Height - Form3.ScaleHeight
Form3.FillColor = &H80C0FF

Line (0, 0)-(1000, 1000), , B
Line ((750 * 6) + 1000, 0)-((750 * 6) + 2 * 1000, 1000), , B
Line (0, (750 * 6) + 1000)-(1000, (750 * 6) + 2 * 1000), , B
Line ((750 * 6) + 1000, (750 * 6) + 1000)-((750 * 6) + 2 * 1000, (750 * 6) + 2 * 1000), , B

For i = 0 To 5
   Form3.FillStyle = 0
   If i = 0 Or i = 3 Or i = 5 Then Form3.FillColor = &HFFC0C0 'blue
   If i = 1 Then Form3.FillColor = &H80FFFF
   If i = 2 Then Form3.FillColor = &HC0FFC0
   If i = 4 Then Form3.FillColor = &HFFC0FF
   Line ((750 * i) + 1000, (750 * 6) + 1000)-((750 * (i + 1)) + 1000, (750 * 6) + 2 * 1000), , B
   Line ((750 * 6) + 1000, 1000 + (750 * i))-((750 * 6) + 2 * 1000, 1000 + (750 * (i + 1))), , B
   Line (1000 + (750 * i), 0)-(1000 + (750 * (i + 1)), 1000), , B
   Line (0, 1000 + (750 * i))-(1000, 1000 + (750 * (i + 1))), , B
Next
For i = 0 To 3
redd(i).BackColor = &HFFC0FF

Next
End Sub



Private Sub Timer1_Timer()
cw = cw + 1 '計錄玩者走幾步
If stepW(pl) = 0 Then
   If wa(pl) = 0 Then wa(pl) = 3 Else wa(pl) = wa(pl) - 1
   stepW(pl) = 7
End If


'每走一步
   stepW(pl) = stepW(pl) - 1
   If wa(pl) = 0 Then Command1(pl).Left = Command1(pl).Left + 750
   If wa(pl) = 3 Then Command1(pl).Top = Command1(pl).Top - 750
   If wa(pl) = 2 Then Command1(pl).Left = Command1(pl).Left - 750
   If wa(pl) = 1 Then Command1(pl).Top = Command1(pl).Top + 750


If cw >= wn Then    '走完發生事件後換人
      '停止走
    Call EndGame(0)
    AreaEvent (stepW(pl))

    '換人
    If pl >= player Then
        pl = 0
    Else
        pl = pl + 1
    End If

Else
    If stepW(pl) = 0 And wa(pl) = 0 Then MsgBox "由此去"
End If


End Sub
Sub AreaEvent(i)    '--------------判斷所到達區域要執行的事件--------------

cw = 0
Timer1.Interval = 0

'orange
If wa(pl) <= 1 Then
      If i = 0 Then orange
      If i = 1 Or i = 3 Or i = 6 Then blue
      If i = 2 Then red
      If i = 4 Then green
      If i = 5 Then yellow
   Else
      If i = 0 Then orange
      If i = 6 Or i = 4 Or i = 1 Then blue
      If i = 5 Then red
      If i = 3 Then green
      If i = 2 Then yellow
End If

End Sub
Sub green()
    waitAmin = pl
End Sub
Sub orange()
If wa(pl) = 2 Then
    wn = 14
    Timer1.Interval = 1
Else
End If
End Sub

Sub yellow()  '--------------讀入運命，改變局面--------------
    Randomize Timer
    sy = Int(1 + Rnd * 16)
    Open App.Path + "\yellow.txt" For Input As #1
   For i = 1 To sy
      Input #1, s, p
   Next
   Close #1
   MsgBox s

'--------------判斷所出現的命運類型--------------

If p = 1 Then pm(pl) = Int(pm(pl) - (pm(pl) / 100 * 75))

If p < 0 Or p > 100 Then
   pm(pl) = pm(pl) + Int(p)
End If

Call EndGame(9)

End Sub
Sub red()  '--------------讀入機會，改變局面--------------
    Randomize Timer
    sy = Int(1 + Rnd * 4)
    Open App.Path + "\red.txt" For Input As #1
   For i = 1 To sy
      Input #1, s, p
   Next
   Close #1
  ' MsgBox s & p & " " & Mid$(p, 3, 1)

'--------------判斷所出現的機會類型--------------
If p > 0 Then
   Select Case Mid(p, 1, 1)
   
   Case "A"
            Form4.dice = Mid$(p, 3, 1)
            Command2.Enabled = False
            Form4.Show
            'Label1.Caption = Me.sumDice

    Case "B"   '骰子遙控器
inub:
        n = InputBox("撿到骰子遙控器,請輸入可控範圍：" & Int(Mid$(p, 2, 2)) & "～" & Int(Mid$(p, 4, 2)), "訊息")
        If n > Int(Mid$(p, 4, 2)) Or n < Int(Mid$(p, 2, 2)) Then MsgBox "對不起!輸入有問題!", vbInformation, "訊息": GoTo inub
        wn = n
        aj = 1
        lflr = 1
        Timer1.Interval = 100


 Case "C"   '給翔翔的計算題
    
    If Mid$(p, 2, 1) = "+" Then '第二個數為加總後最大數
        n2 = Int(Rnd * Int(Mid$(p, 3, 2))) + 1
        n1 = Int(Rnd * (Int(Mid$(p, 5, 2)) - n2)) + 1
        ans = n1 + n2
    End If
    If Mid$(p, 2, 1) = "-" Then '第二個數為被減數最大數
        n2 = Int(Rnd * Int(Mid$(p, 3, 2))) + 1
        n1 = Int(Rnd * (Int(Mid$(p, 5, 2)) - n2)) + n2
        ans = n1 - n2
    End If
    If Mid$(p, 2, 1) = "X" Then
        n2 = Int(Rnd * Int(Mid$(p, 3, 2))) + 1
        n1 = Int(Rnd * Int(Mid$(p, 5, 2))) + 1
        ans = n1 * n2
    End If
    ques = n1 & " " & Mid$(p, 2, 1) & " " & n2

inuc:
    n = InputBox("請計算這題,正確可往前走：" & ques & " =", "訊息")
    If n > 2000 Or n < -100 Then MsgBox "對不起!輸入有問題!", vbInformation, "訊息": GoTo inuc
    If ans = Int(n) Then
        wn = Int(6 * Rnd + 1)  '骰子數
        Label1.Caption = "骰子數:" & wn
        Timer1.Interval = 100 '開始走
        MsgBox "正確,可往前走" & wn & "步", vbInformation, "訊息"
    Else
        MsgBox "錯誤,下次請加油!!", vbInformation, "訊息"
    End If

 End Select
End If
End Sub
Sub blue()

'--------------調整並控制土地所有權--------------
'c:該面牆的第幾筆土地
If wa(pl) <= 1 Then
   If stepW(pl) = 1 Then c = 3: hcoin = 5000
   If stepW(pl) = 3 Then c = 2: hcoin = 3000
   If stepW(pl) = 6 Then c = 1: hcoin = 2000
Else
   If stepW(pl) = 1 Then c = 3: hcoin = 5000
   If stepW(pl) = 4 Then c = 2: hcoin = 3000
   If stepW(pl) = 6 Then c = 1: hcoin = 2000

End If
h = wa(pl) * 3 + c - 1 '土地編號
If hWho(h) = 9 Then   '沒人
    yn = MsgBox("氣寶問你要不要買這塊地" & vbNewLine & "土地價值為" & hcoin & "元", vbYesNo, "訊息")
    If yn = 6 Then 'y=6:n=7
        hWho(h) = pl
        Land(h).Caption = "玩者" & pl + 1
        pm(pl) = pm(pl) - hcoin
    Else
        'pm(pl) = pm(pl) - hCoin \ 10
    End If
Else    '有人


   Label1.Caption = "土地所有權:" & Land(h).Caption & Chr$(13)
   Label1.Caption = Label1.Caption & "過路費：" & hcoin / 10 & "元" & Chr$(13)
   Label1.Caption = Label1.Caption & "1棟房子加收：" & hcoin / 20 & "元" & Chr$(13)
   Label1.Caption = Label1.Caption & "目前有：" & hCount(h) & "棟"
    If hWho(h) = pl Then
        yn = MsgBox("你是否要加蓋房屋?" & vbNewLine & "1棟房子" & hcoin / 20 & "元", vbYesNo, "訊息")
        If yn = 6 Then hCount(h) = hCount(h) + 1
        
    Else
        paycoin = (hcoin / 10) + hCount(h) * hcoin / 20
        MsgBox "你經過" & Land(h).Caption & "的土地!" & vbNewLine & "罰" & paycoin & "元", vbInformation, "訊息"
        pm(pl) = pm(pl) - paycoin
    
    End If
End If
'MsgBox h
End Sub

Sub EndGame(state)
    lb_money(0).Caption = "玩者一的金錢：" & pm(0) & "元"
    lb_money(1).Caption = "玩者二的金錢：" & pm(1) & "元"
    lb_money(2).Caption = "玩者三的金錢：" & pm(2) & "元"
    lb_money(3).Caption = "玩者四的金錢：" & pm(3) & "元"
    Command1(0).ToolTipText = "玩者一的金錢：" & pm(0) & "元"
    Command1(1).ToolTipText = "玩者二的金錢：" & pm(1) & "元"
    Command1(2).ToolTipText = "玩者三的金錢：" & pm(2) & "元"
    Command1(3).ToolTipText = "玩者四的金錢：" & pm(3) & "元"
    
    If state = 9 Then '判斷是否結束
        If pm(pl) <= 0 Then MsgBox "玩家" & pl + 1 & "破產": End
    End If
End Sub
