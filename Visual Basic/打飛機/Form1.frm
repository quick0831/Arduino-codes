VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7125
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11100
   LinkTopic       =   "Form1"
   ScaleHeight     =   7125
   ScaleWidth      =   11100
   StartUpPosition =   3  '系統預設值
   Begin VB.Timer Timer1 
      Interval        =   750
      Left            =   600
      Top             =   1680
   End
   Begin VB.Image Image1 
      Height          =   885
      Left            =   1080
      Picture         =   "Form1.frx":0000
      Top             =   360
      Width           =   1200
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Image1_Click()
    MsgBox "ghghg"
End Sub

Private Sub Timer1_Timer()
Randomize Timer

x = Int(Form1.Width * Rnd + 1)
y = Int(Form1.Height * Rnd + 1)

    If birds = False Then
        Image1.Left = x
        Image1.Top = y
        Image1.Visible = True
        birds = True
    Else
        Image1.Visible = False
        birds = False
    End If

End Sub
