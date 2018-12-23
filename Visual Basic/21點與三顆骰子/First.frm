VERSION 5.00
Begin VB.Form First 
   Caption         =   "Form2"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command3 
      Caption         =   "Command3"
      Height          =   735
      Left            =   720
      TabIndex        =   2
      Top             =   2160
      Width           =   3015
   End
   Begin VB.CommandButton diceX3 
      Caption         =   "三顆骰子"
      Height          =   735
      Left            =   720
      TabIndex        =   1
      Top             =   1440
      Width           =   3015
   End
   Begin VB.CommandButton the21 
      Caption         =   "21點"
      Height          =   735
      Left            =   720
      TabIndex        =   0
      Top             =   720
      Width           =   3015
   End
End
Attribute VB_Name = "First"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub diceX3_Click()
TheSecond.Show
End Sub

Private Sub the21_Click()

TheFirst.Show
End Sub
