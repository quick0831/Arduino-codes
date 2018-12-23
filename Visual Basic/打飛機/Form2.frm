VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "馬航為什麼一直掉下來"
   ClientHeight    =   5835
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10380
   LinkTopic       =   "Form1"
   ScaleHeight     =   5835
   ScaleWidth      =   10380
   StartUpPosition =   3  '系統預設值
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
      Interval        =   7
      Left            =   0
      Top             =   5400
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
      Width           =   3855
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
      Picture         =   "Form2.frx":0000
      Top             =   3120
      Width           =   1200
   End
   Begin VB.Image Image1 
      Height          =   750
      Index           =   3
      Left            =   3360
      Picture         =   "Form2.frx":093E
      Top             =   1560
      Width           =   1035
   End
   Begin VB.Image Image1 
      Height          =   885
      Index           =   2
      Left            =   6480
      Picture         =   "Form2.frx":1462
      Top             =   2640
      Width           =   1200
   End
   Begin VB.Image Image1 
      Height          =   885
      Index           =   1
      Left            =   4680
      Picture         =   "Form2.frx":1DA0
      Top             =   2880
      Width           =   1200
   End
   Begin VB.Image Image1 
      Height          =   885
      Index           =   0
      Left            =   4680
      Picture         =   "Form2.frx":26DE
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


Private Sub Form_Click()
score = score - 1
Label2.Caption = "沒按到,扣1分"
End Sub

Private Sub Form_Load()
score = 0
bomb = 100
End Sub
Private Sub useBomb()
bomb = bomb - 1
Text2.Text = bomb
End Sub


Private Sub Image1_Click(Index As Integer)
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
    t = Int(Rnd * 100) + 1
    X = Int((Form1.Width - Image1(Index).Width) * Rnd + 1)
    Y = Int((Form1.Height - Image1(Index).Height) * Rnd + 800)
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
