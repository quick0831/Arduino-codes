VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H0080FFFF&
   Caption         =   "打洛克test"
   ClientHeight    =   5190
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4890
   LinkTopic       =   "Form1"
   ScaleHeight     =   5190
   ScaleWidth      =   4890
   StartUpPosition =   3  '系統預設值
   Begin VB.Timer Timer2 
      Interval        =   100
      Left            =   960
      Top             =   4320
   End
   Begin VB.Timer Timer1 
      Index           =   8
      Interval        =   500
      Left            =   360
      Top             =   4320
   End
   Begin VB.Timer Timer1 
      Index           =   7
      Interval        =   500
      Left            =   360
      Top             =   4320
   End
   Begin VB.Timer Timer1 
      Index           =   6
      Interval        =   500
      Left            =   360
      Top             =   4320
   End
   Begin VB.Timer Timer1 
      Index           =   5
      Interval        =   500
      Left            =   360
      Top             =   4320
   End
   Begin VB.Timer Timer1 
      Index           =   4
      Interval        =   500
      Left            =   360
      Top             =   4320
   End
   Begin VB.Timer Timer1 
      Index           =   3
      Interval        =   500
      Left            =   360
      Top             =   4320
   End
   Begin VB.Timer Timer1 
      Index           =   2
      Interval        =   500
      Left            =   360
      Top             =   4320
   End
   Begin VB.Timer Timer1 
      Index           =   1
      Interval        =   500
      Left            =   360
      Top             =   4320
   End
   Begin VB.Timer Timer1 
      Index           =   0
      Interval        =   500
      Left            =   360
      Top             =   4320
   End
   Begin VB.Label Label1 
      Caption         =   "分數：0"
      BeginProperty Font 
         Name            =   "新細明體"
         Size            =   12
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   3720
      Width           =   1215
   End
   Begin VB.Image Image2 
      Height          =   945
      Index           =   1
      Left            =   1680
      Picture         =   "元件308.frx":0000
      Top             =   3720
      Width           =   1425
   End
   Begin VB.Image Image3 
      Height          =   225
      Left            =   3480
      Picture         =   "元件308.frx":4722
      Top             =   4440
      Width           =   240
   End
   Begin VB.Line Line1 
      Index           =   0
      Visible         =   0   'False
      X1              =   3600
      X2              =   4800
      Y1              =   3960
      Y2              =   4440
   End
   Begin VB.Line Line1 
      Index           =   1
      Visible         =   0   'False
      X1              =   3600
      X2              =   4800
      Y1              =   4200
      Y2              =   4680
   End
   Begin VB.Line Line1 
      Index           =   2
      Visible         =   0   'False
      X1              =   3600
      X2              =   4800
      Y1              =   3840
      Y2              =   4320
   End
   Begin VB.Line Line1 
      Index           =   3
      Visible         =   0   'False
      X1              =   3600
      X2              =   4800
      Y1              =   3720
      Y2              =   4200
   End
   Begin VB.Line Line1 
      Index           =   4
      Visible         =   0   'False
      X1              =   3600
      X2              =   4800
      Y1              =   4320
      Y2              =   4800
   End
   Begin VB.Line Line1 
      Index           =   5
      Visible         =   0   'False
      X1              =   3600
      X2              =   4800
      Y1              =   4080
      Y2              =   4560
   End
   Begin VB.Line Line1 
      Index           =   6
      Visible         =   0   'False
      X1              =   3600
      X2              =   4800
      Y1              =   4080
      Y2              =   4560
   End
   Begin VB.Line Line1 
      Index           =   7
      Visible         =   0   'False
      X1              =   3600
      X2              =   4800
      Y1              =   4080
      Y2              =   4560
   End
   Begin VB.Line Line1 
      Index           =   8
      Visible         =   0   'False
      X1              =   3600
      X2              =   4800
      Y1              =   4080
      Y2              =   4560
   End
   Begin VB.Image Image2 
      Height          =   945
      Index           =   0
      Left            =   1680
      Picture         =   "元件308.frx":4A34
      Top             =   3720
      Width           =   1425
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   0
      Left            =   240
      Top             =   240
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   1
      Left            =   1680
      Top             =   240
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   2
      Left            =   3120
      Top             =   240
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   3
      Left            =   240
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   4
      Left            =   1680
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   5
      Left            =   3120
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   6
      Left            =   240
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   8
      Left            =   3120
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   7
      Left            =   1680
      Top             =   2400
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim ifshow
Dim showpic(8)
Dim ball

Dim score As Long
Private Sub Form_Load()
Image3.Top = Image2(1).Top + 250
Image3.Left = Image2(1).Left + 1000
For i = 0 To 8
    Image1(i).Picture = LoadPicture(App.Path + "\pic2.bmp")
Next
ball = -1
Image3.Visible = False
End Sub


Private Sub Image1_Click(Index As Integer)
Timer2.Interval = 1
If showpic(Index) > 0 Then
ball = Index
Image3.Visible = True
Image2(0).Visible = True
Image2(1).Visible = False
End If

End Sub

Private Sub Timer1_Timer(Index As Integer)
Randomize Timer

'If showpic(Index) = 0 Then
ifshow = Int(5 * Rnd + 1)

showpic(Index) = 1
Image1(Index).Picture = LoadPicture(App.Path + "\pic.bmp")

showpic(Index) = 0
Image1(Index).Picture = LoadPicture(App.Path + "\pic2.bmp")

End Sub

Private Sub Timer2_Timer()
If ball >= 0 Then
    Image3.Top = Image3.Top - (Line1(ball).Y2 - Line1(ball).Y1) / 10
    Image3.Left = Image3.Left - (Line1(ball).X2 - Line1(ball).X1) / 10

    If Image3.Left + Image3.Left - (Line1(ball).X2 - Line1(ball).X1) / 10 > Line1(ball).X1 And Image3.Top < Line1(ball).Y1 Then
        score = score + 20
        Label1.Caption = "分數：" & score
        Image1(ball).Picture = LoadPicture(App.Path + "\pic2.bmp")
        Image3.Visible = False
        Image3.Top = Image2(1).Top + 250
        Image3.Left = Image2(1).Left + 1000
        ball = -1
    End If
End If
End Sub
