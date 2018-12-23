VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "大富翁test"
   ClientHeight    =   3555
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8715
   LinkTopic       =   "Form1"
   ScaleHeight     =   3555
   ScaleWidth      =   8715
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "甩骰子"
      Height          =   495
      Left            =   2640
      TabIndex        =   0
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   13
      Left            =   3480
      Shape           =   3  '圓形
      Top             =   1320
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   12
      Left            =   3480
      Shape           =   3  '圓形
      Top             =   960
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   11
      Left            =   3480
      Shape           =   3  '圓形
      Top             =   600
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   10
      Left            =   3120
      Shape           =   3  '圓形
      Top             =   960
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   9
      Left            =   2760
      Shape           =   3  '圓形
      Top             =   1320
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   8
      Left            =   2760
      Shape           =   3  '圓形
      Top             =   960
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   7
      Left            =   2760
      Shape           =   3  '圓形
      Top             =   600
      Width           =   255
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
      Index           =   0
      Left            =   960
      Shape           =   4  '圓角矩形
      Top             =   480
      Width           =   1185
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  '不透明
      Height          =   1200
      Index           =   1
      Left            =   2640
      Shape           =   4  '圓角矩形
      Top             =   480
      Width           =   1185
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   20
      Left            =   5040
      Shape           =   3  '圓形
      Top             =   1320
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   19
      Left            =   5040
      Shape           =   3  '圓形
      Top             =   960
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   18
      Left            =   5040
      Shape           =   3  '圓形
      Top             =   600
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   17
      Left            =   4680
      Shape           =   3  '圓形
      Top             =   960
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   16
      Left            =   4320
      Shape           =   3  '圓形
      Top             =   1320
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   15
      Left            =   4320
      Shape           =   3  '圓形
      Top             =   960
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   14
      Left            =   4320
      Shape           =   3  '圓形
      Top             =   600
      Width           =   255
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  '不透明
      Height          =   1200
      Index           =   2
      Left            =   4200
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
Randomize
For i = 0 To 20
   Shape2(i).Visible = False
Next
For s = 0 To 2

n = Int(1 + Rnd * 6)
    If n = 1 Then
       Shape2(3 + 7 * s).Visible = True
    End If
    
    If n = 2 Then
       Shape2(2 + 7 * s).Visible = True
       Shape2(4 + 7 * s).Visible = True
    End If
    
    If n = 3 Then
       Shape2(2 + 7 * s).Visible = True
       Shape2(3 + 7 * s).Visible = True
       Shape2(4 + 7 * s).Visible = True
    End If
    If n = 4 Then
       Shape2(0 + 7 * s).Visible = True
       Shape2(2 + 7 * s).Visible = True
       Shape2(4 + 7 * s).Visible = True
       Shape2(6 + 7 * s).Visible = True
    End If
    If n = 5 Then
       Shape2(0 + 7 * s).Visible = True
       Shape2(2 + 7 * s).Visible = True
       Shape2(3 + 7 * s).Visible = True
       Shape2(4 + 7 * s).Visible = True
       Shape2(6 + 7 * s).Visible = True
    End If
    If n = 6 Then
       Shape2(0 + 7 * s).Visible = True
       Shape2(1 + 7 * s).Visible = True
       Shape2(2 + 7 * s).Visible = True
       Shape2(4 + 7 * s).Visible = True
       Shape2(5 + 7 * s).Visible = True
       Shape2(6 + 7 * s).Visible = True
    End If
Next
End Sub

