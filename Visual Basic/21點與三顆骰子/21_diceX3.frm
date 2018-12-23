VERSION 5.00
Begin VB.Form TheSecond 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "甩骰子"
      Height          =   495
      Left            =   1800
      TabIndex        =   0
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   14
      Left            =   3480
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   15
      Left            =   3480
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   16
      Left            =   3480
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   17
      Left            =   3840
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   18
      Left            =   4200
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   19
      Left            =   4200
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   20
      Left            =   4200
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   6
      Left            =   960
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   5
      Left            =   960
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   4
      Left            =   960
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   3
      Left            =   600
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   2
      Left            =   240
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   1
      Left            =   240
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   0
      Left            =   240
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   7
      Left            =   1920
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   8
      Left            =   1920
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   9
      Left            =   1920
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   10
      Left            =   2280
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   11
      Left            =   2640
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   12
      Left            =   2640
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   13
      Left            =   2640
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Label Label3 
      Caption         =   "目前就讀義方國小 四年級"
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
      Left            =   1080
      TabIndex        =   2
      Top             =   2520
      Width           =   2775
   End
   Begin VB.Label Label2 
      Caption         =   "設計者:張峻魁(2014年7月)"
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
      Left            =   1080
      TabIndex        =   1
      Top             =   2280
      Width           =   2775
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  '不透明
      Height          =   1200
      Index           =   1
      Left            =   1800
      Shape           =   4  '圓角矩形
      Top             =   360
      Width           =   1185
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  '不透明
      Height          =   1215
      Index           =   2
      Left            =   3360
      Shape           =   4  '圓角矩形
      Top             =   360
      Width           =   1215
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  '不透明
      Height          =   1200
      Index           =   0
      Left            =   120
      Shape           =   4  '圓角矩形
      Top             =   360
      Width           =   1185
   End
End
Attribute VB_Name = "TheSecond"
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


