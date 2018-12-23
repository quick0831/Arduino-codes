VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "大富翁test"
   ClientHeight    =   5970
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6750
   LinkTopic       =   "Form1"
   ScaleHeight     =   5970
   ScaleWidth      =   6750
   StartUpPosition =   2  '螢幕中央
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   375
      Left            =   3840
      TabIndex        =   1
      Top             =   2280
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  '平面
      Caption         =   "玩者1"
      Height          =   375
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
   Begin VB.Label Label2 
      BorderStyle     =   1  '單線固定
      Caption         =   "Label2"
      Height          =   375
      Left            =   1080
      TabIndex        =   3
      Top             =   3360
      Width           =   1935
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
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dim pa As Integer
Dim wn As Integer   '骰子數
Dim cw As Integer   '計錄玩者走幾步
Dim wa As Integer   '第幾面牆
Dim sw As Integer   '還剩幾步到下一面牆
Dim pm '玩者的金錢

Private Sub Command2_Click()
    Randomize Timer
    wn = Int(6 * Rnd + 1)  '骰子數
    'MsgBox "骰子數:" & wn
    Label1.Caption = "骰子數:" & wn
    Timer1.Interval = wn '開始走
End Sub

Private Sub Form_Activate()
wn = 0
cw = 0
wa = 0
sw = 0


'設定起點
Command1.Top = 1000 + 750 * 6
Command1.Left = 1000 + 750 * 6
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


Private Sub Form_Load()
pm = 5000
Label2.Caption = "玩者一的金錢：" & pm & "元"
End Sub

Private Sub Timer1_Timer()
cw = cw + 1 '計錄玩者走幾步
If sw = 0 Then
   If wa = 0 Then wa = 3 Else wa = wa - 1
   sw = 7
End If


'每走一步
   sw = sw - 1
   If wa = 0 Then Command1.Left = Command1.Left + 750
   If wa = 3 Then Command1.Top = Command1.Top - 750
   If wa = 2 Then Command1.Left = Command1.Left - 750
   If wa = 1 Then Command1.Top = Command1.Top + 750


  '停止走
  Label2.Caption = "玩者一的金錢：" & pm & "元"
  If cw = wn Then AreaEvent (sw)

   
End Sub

Sub AreaEvent(i)    '--------------判斷所到達區域要執行的事件--------------

cw = 0
Timer1.Interval = 0
yellow
'If wa <= 1 Then
'      If i = 0 Then MsgBox "orange"
'      If i = 1 Or i = 3 Or i = 6 Then MsgBox "blue"
'      If i = 2 Then MsgBox "red"
'      If i = 4 Then MsgBox "green"
'      If i = 5 Then yellow
'   Else
'      If i = 0 Then MsgBox "orange"
'      If i = 6 Or i = 4 Or i = 1 Then MsgBox "blue"
'      If i = 5 Then MsgBox "red"
'      If i = 3 Then MsgBox "green"
'      If i = 2 Then yellow
'End If

End Sub
Sub yellow()
'--------------讀入運命，改變局面--------------
Randomize Timer

    sy = Int(1 + Rnd * 16)
    Open App.Path + "\yellow.txt" For Input As #1
   For i = 1 To sy
      Input #1, s, p
   Next
   Close #1

   MsgBox s

'--------------判斷所出現的命運類型--------------

If p = 1 Then pm = Int(pm - (pm / 100 * 75))

If p < 0 Or p > 100 Then
   pm = pm + Int(p)
End If

Label2.Caption = "玩者一的金錢：" & pm & "元"
If pm <= 0 Then End
End Sub
