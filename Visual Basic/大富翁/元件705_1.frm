VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton pl2 
      Caption         =   "大富翁2"
      Height          =   975
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   4455
   End
   Begin VB.CommandButton pl3 
      Caption         =   "大富翁3"
      Height          =   975
      Left            =   120
      TabIndex        =   1
      Top             =   1080
      Width           =   4455
   End
   Begin VB.CommandButton pl4 
      Caption         =   "大富翁4"
      Height          =   975
      Left            =   120
      TabIndex        =   0
      Top             =   2040
      Width           =   4455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub pl2_Click()
Form3.player = 1
Form5.player = 1
Me.Hide
Form5.Show
End Sub
Private Sub pl3_Click()
Form3.player = 2
Form5.player = 2
Me.Hide
Form5.Show
End Sub
Private Sub pl4_Click()
Form3.player = 3
Form5.player = 3
Me.Hide
Form5.Show
End Sub
