VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "大富翁test"
   ClientHeight    =   5970
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
   ScaleHeight     =   5970
   ScaleWidth      =   6750
   StartUpPosition =   2  '螢幕中央
   Begin VB.CommandButton Command2 
      Caption         =   "骰骰子"
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
      Left            =   3480
      TabIndex        =   1
      Top             =   3360
      Width           =   975
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
      Height          =   375
      Index           =   0
      Left            =   3600
      Style           =   1  '圖片外觀
      TabIndex        =   0
      Top             =   1560
      Width           =   615
   End
   Begin VB.Timer Timer1 
      Left            =   3840
      Top             =   960
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
      Height          =   375
      Index           =   1
      Left            =   3600
      Style           =   1  '圖片外觀
      TabIndex        =   5
      Top             =   1560
      Width           =   615
   End
   Begin VB.Label Land 
      BackColor       =   &H00FFC0C0&
      Caption         =   "空地"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   18
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   465
      Left            =   120
      TabIndex        =   6
      Top             =   1200
      Width           =   780
   End
   Begin VB.Label Label3 
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
      Left            =   1080
      TabIndex        =   4
      Top             =   3720
      Width           =   2055
   End
   Begin VB.Label Label2 
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
      Left            =   1080
      TabIndex        =   3
      Top             =   3360
      Width           =   2055
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000D&
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   18
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2295
      Left            =   1080
      TabIndex        =   2
      Top             =   1080
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pl  As Integer 'player人數
'Public sumDice As Integer '多顆骰子總數
Public wn As Integer    '骰子數
Dim cw As Integer   '計錄玩者走幾步
Dim wa(2) As Integer   '第幾面牆
Dim sw(2) As Integer   '還剩幾步到下一面牆
Dim pm(2) '玩者的金錢
Dim hCount(11)  As Integer  '幾棟房子
Dim hWho(11)  As Integer '土地所有權 9沒人
Dim hName(11)  As String    '土地名稱
Dim hPay(23)  As Integer '過路費(前12筆) vs每棟房子加收費


Private Sub Command2_Click()
    Randomize Timer
    If pl = 0 Then
        pl = 1
    Else
        pl = 0
    End If
    wn = Int(6 * Rnd + 1)  '骰子數
    'MsgBox "骰子數:" & wn
    Label1.Caption = "骰子數:" & wn
    Timer1.Interval = 100 '開始走
End Sub

Private Sub Form_Load()

wn = 0
cw = 0
For i = 0 To 1
    wa(i) = 0
    sw(i) = 0
    pm(i) = 10000
    Command1(i).Top = 1000 + 750 * 6
    Command1(i).Left = 1000 + 750 * 6
Next
Label2.Caption = "玩者一的金錢：" & pm(0) & "元"
Label3.Caption = "玩者二的金錢：" & pm(1) & "元"

'設定起點

Form1.FillStyle = 0
Form1.Width = (750 * 6) + 1000 * 2 + Form1.Width - Form1.ScaleWidth
Form1.Height = (750 * 6) + 1000 * 2 + Form1.Height - Form1.ScaleHeight
Form1.FillColor = &H80C0FF

Line (0, 0)-(1000, 1000), , B
Line ((750 * 6) + 1000, 0)-((750 * 6) + 2 * 1000, 1000), , B
Line (0, (750 * 6) + 1000)-(1000, (750 * 6) + 2 * 1000), , B
Line ((750 * 6) + 1000, (750 * 6) + 1000)-((750 * 6) + 2 * 1000, (750 * 6) + 2 * 1000), , B

For i = 0 To 5
   Form1.FillStyle = 0
   If i = 0 Or i = 3 Or i = 5 Then Form1.FillColor = &HFFC0C0 'blue
   If i = 1 Then Form1.FillColor = &H80FFFF
   If i = 2 Then Form1.FillColor = &HC0FFC0
   If i = 4 Then Form1.FillColor = &HFFC0FF
   Line ((750 * i) + 1000, (750 * 6) + 1000)-((750 * (i + 1)) + 1000, (750 * 6) + 2 * 1000), , B
   Line ((750 * 6) + 1000, 1000 + (750 * i))-((750 * 6) + 2 * 1000, 1000 + (750 * (i + 1))), , B
   Line (1000 + (750 * i), 0)-(1000 + (750 * (i + 1)), 1000), , B
   Line (0, 1000 + (750 * i))-(1000, 1000 + (750 * (i + 1))), , B
Next


End Sub




Private Sub Timer1_Timer()
cw = cw + 1 '計錄玩者走幾步
If sw(pl) = 0 Then
   If wa(pl) = 0 Then wa(pl) = 3 Else wa(pl) = wa(pl) - 1
   sw(pl) = 7
End If


'每走一步
   sw(pl) = sw(pl) - 1
   If wa(pl) = 0 Then Command1(pl).Left = Command1(pl).Left + 750
   If wa(pl) = 3 Then Command1(pl).Top = Command1(pl).Top - 750
   If wa(pl) = 2 Then Command1(pl).Left = Command1(pl).Left - 750
   If wa(pl) = 1 Then Command1(pl).Top = Command1(pl).Top + 750


  '停止走
Label2.Caption = "玩者一的金錢：" & pm(0) & "元"
Label3.Caption = "玩者二的金錢：" & pm(1) & "元"
  If cw >= wn Then AreaEvent (sw(pl))

   
End Sub

Sub AreaEvent(i)    '--------------判斷所到達區域要執行的事件--------------

cw = 0
Timer1.Interval = 0

'yellow
If wa(pl) <= 1 Then
      If i = 0 Then MsgBox "orange"
      If i = 1 Or i = 3 Or i = 6 Then blue
      If i = 2 Then red
      If i = 4 Then MsgBox "green"
      If i = 5 Then yellow
   Else
      If i = 0 Then MsgBox "orange"
      If i = 6 Or i = 4 Or i = 1 Then blue
      If i = 5 Then red
      If i = 3 Then MsgBox "green"
      If i = 2 Then yellow
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

Label2.Caption = "玩者一的金錢：" & pm(0) & "元"
Label3.Caption = "玩者二的金錢：" & pm(1) & "元"
If pm(pl) <= 0 Then End
End Sub
Sub red()  '--------------讀入機會，改變局面--------------
    Randomize Timer
    sy = Int(1 + Rnd * 4)
    Open App.Path + "\red.txt" For Input As #1
   For i = 1 To sy
      Input #1, s, p
   Next
   Close #1
   MsgBox s & p & " " & Mid$(p, 3, 1)

'--------------判斷所出現的機會類型--------------
If p > 0 Then
   If Mid(p, 1, 1) = "A" Then
            Form3.dice = Mid(p, 3, 1)
            Form3.Show
            'Label1.Caption = Me.sumDice
   End If
End If
If Mid$(p, 1, 1) = "B" Then
inum:
    n = InputBox("請輸入？※範圍：" & Int(Mid$(p, 2, 2)) & "～" & Int(Mid$(p, 4, 2)))
    If n > Int(Mid$(p, 4, 2)) Or n < Int(Mid$(p, 2, 2)) Then MsgBox "對不起!輸入有問題!": GoTo inum
    wn = n
    aj = 1
    lflr = 1
    Timer1.Interval = 100
End If
End Sub
Sub blue()

'--------------調整並控制土地所有權--------------
'c:該面牆的第幾筆土地
If wa(pl) <= 1 Then
   If sw(pl) = 1 Then c = 3
   If sw(pl) = 3 Then c = 2
   If sw(pl) = 6 Then c = 1
Else
   If sw(pl) = 1 Then c = 3
   If sw(pl) = 4 Then c = 2
   If sw(pl) = 6 Then c = 1

End If
h = wa(pl) * 3 + c - 1 '土地編號
MsgBox h
End Sub
