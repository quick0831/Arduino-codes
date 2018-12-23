VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "馬航為什麼一直掉下來"
   ClientHeight    =   5835
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10380
   LinkTopic       =   "Form1"
   ScaleHeight     =   5835
   ScaleWidth      =   10380
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "說明"
      Height          =   735
      Left            =   9720
      TabIndex        =   6
      Top             =   120
      Width           =   615
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   375
      LargeChange     =   5
      Left            =   1920
      Max             =   100
      Min             =   1
      TabIndex        =   5
      Top             =   5400
      Value           =   50
      Width           =   8535
   End
   Begin VB.TextBox Text2 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   21.75
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   4560
      TabIndex        =   3
      Text            =   "0"
      Top             =   240
      Width           =   1455
   End
   Begin VB.TextBox Text1 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   21.75
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   1320
      TabIndex        =   1
      Text            =   "0"
      Top             =   240
      Width           =   1455
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   9960
      Top             =   0
   End
   Begin VB.Label Label4 
      Caption         =   "速度調整"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   15.75
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   7
      Top             =   5400
      Width           =   1815
   End
   Begin VB.Label Label3 
      Caption         =   "子彈數: "
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   21.75
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2880
      TabIndex        =   4
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label Label2 
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   21.75
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6000
      TabIndex        =   2
      Top             =   240
      Width           =   3735
   End
   Begin VB.Label Label1 
      Caption         =   "分數: "
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   21.75
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   885
      Index           =   4
      Left            =   3360
      Picture         =   "Form33.frx":0000
      Top             =   3120
      Width           =   1200
   End
   Begin VB.Image Image1 
      Height          =   840
      Index           =   3
      Left            =   3360
      Picture         =   "Form33.frx":093E
      Top             =   1560
      Width           =   690
   End
   Begin VB.Image Image1 
      Height          =   885
      Index           =   2
      Left            =   6480
      Picture         =   "Form33.frx":4CC4
      Top             =   2640
      Width           =   1200
   End
   Begin VB.Image Image1 
      Height          =   885
      Index           =   1
      Left            =   4680
      Picture         =   "Form33.frx":5602
      Top             =   2880
      Width           =   1200
   End
   Begin VB.Image Image1 
      Height          =   885
      Index           =   0
      Left            =   4680
      Picture         =   "Form33.frx":5F40
      Top             =   1920
      Width           =   1200
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim img(4), score, bomb


Private Sub Command1_Click()
readme
End Sub

Private Sub Form_Click()
score = score - 1
Label2.Caption = "沒打到,扣1分"
useBomb
End Sub

Private Sub Form_Load()
init
readme
End Sub
Private Sub init()
score = 0
Text1.Text = score
bomb = 111
useBomb
Label2.Caption = ""

End Sub
Private Sub useBomb()
bomb = bomb - 1
Text2.Text = bomb
Text1.Text = score
If bomb = 0 Then
    reply = MsgBox("roc Over!!!!!" & vbNewLine & "你的分數是" & score, vbRetryCancel)
    If reply = vbRetry Then
        init
    Else
        End
    End If

End If
End Sub


Private Sub HScroll1_Change()
    Timer1.Interval = HScroll1.Value
End Sub

Private Sub Image1_Click(Index As Integer)
useBomb
If Index = 3 Then
    score = score - 15
    Label2.Caption = "沒環保意識,扣5分"
Else
    score = score + 10
    Label2.Caption = "打到馬航了,加10分"
End If
Text1.Text = score
End Sub



Private Sub Timer1_Timer()
Randomize Timer
For Index = 0 To 4
    t = Int(Rnd * 50) + 1
    X = Int((Form1.Width - Image1(Index).Width) * Rnd + 1)
    'Y = Int((Form1.Height - Image1(Index).Height) * Rnd + 800)
    Y = Int((4000) * Rnd + 800)
    If t = 17 Then
        If img(Index) = False Then
            Image1(Index).Left = X
            Image1(Index).Top = Y
            Image1(Index).Visible = True
            img(Index) = True
        Else
            Image1(Index).Visible = False
            img(Index) = False
        End If
    End If
Next
End Sub
Private Sub readme()
txt = "沒打到,扣1分"
txt = txt & vbNewLine & "沒環保意識,扣5分"
txt = txt & vbNewLine & "打到馬航了,加10分"
MsgBox txt, , "說明"
End Sub
