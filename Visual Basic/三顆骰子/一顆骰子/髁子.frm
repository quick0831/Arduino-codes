VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "大富翁test"
   ClientHeight    =   3555
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4485
   LinkTopic       =   "Form1"
   ScaleHeight     =   3555
   ScaleWidth      =   4485
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "甩骰子"
      Height          =   495
      Left            =   960
      TabIndex        =   0
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   0
      Left            =   1080
      Shape           =   3  '圓形
      Top             =   600
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   1
      Left            =   1080
      Shape           =   3  '圓形
      Top             =   960
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   2
      Left            =   1080
      Shape           =   3  '圓形
      Top             =   1320
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   3
      Left            =   1440
      Shape           =   3  '圓形
      Top             =   960
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   4
      Left            =   1800
      Shape           =   3  '圓形
      Top             =   600
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   5
      Left            =   1800
      Shape           =   3  '圓形
      Top             =   960
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   6
      Left            =   1800
      Shape           =   3  '圓形
      Top             =   1320
      Width           =   255
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  '不透明
      Height          =   1200
      Left            =   960
      Shape           =   4  '圓角矩形
      Top             =   480
      Width           =   1185
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
n = Int(1 + Rnd * 6)
For i = 0 To 6
   Shape2(i).Visible = False
Next

If n = 1 Then
   Shape2(3).Visible = True
End If

If n = 2 Then
   Shape2(2).Visible = True
   Shape2(4).Visible = True
End If

If n = 3 Then
   Shape2(2).Visible = True
   Shape2(3).Visible = True
   Shape2(4).Visible = True
End If
If n = 4 Then
   Shape2(0).Visible = True
   Shape2(2).Visible = True
   Shape2(4).Visible = True
   Shape2(6).Visible = True
End If
If n = 5 Then
   Shape2(0).Visible = True
   Shape2(2).Visible = True
   Shape2(3).Visible = True
   Shape2(4).Visible = True
   Shape2(6).Visible = True
End If
If n = 6 Then
   Shape2(0).Visible = True
   Shape2(1).Visible = True
   Shape2(2).Visible = True
   Shape2(4).Visible = True
   Shape2(5).Visible = True
   Shape2(6).Visible = True
End If

End Sub

