VERSION 5.00
Begin VB.Form Form4 
   Caption         =   "Form2"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6225
   LinkTopic       =   "Form2"
   ScaleHeight     =   3090
   ScaleWidth      =   6225
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "甩骰子"
      Height          =   495
      Left            =   2400
      TabIndex        =   0
      Top             =   1680
      Width           =   1215
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   14
      Left            =   3240
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   15
      Left            =   3240
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   16
      Left            =   3240
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   17
      Left            =   3600
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   18
      Left            =   3960
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   19
      Left            =   3960
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   20
      Left            =   3960
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   6
      Left            =   1320
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   5
      Left            =   1320
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   4
      Left            =   1320
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   3
      Left            =   960
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   2
      Left            =   600
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   1
      Left            =   600
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   0
      Left            =   600
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
      Left            =   1680
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
      Left            =   1680
      TabIndex        =   1
      Top             =   2280
      Width           =   2775
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  '不透明
      Height          =   1200
      Index           =   2
      Left            =   3120
      Shape           =   4  '圓角矩形
      Top             =   360
      Width           =   1185
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
      Height          =   1200
      Index           =   0
      Left            =   480
      Shape           =   4  '圓角矩形
      Top             =   360
      Width           =   1185
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   27
      Left            =   5280
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   26
      Left            =   5280
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   25
      Left            =   5280
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   24
      Left            =   4920
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   23
      Left            =   4560
      Shape           =   3  '圓形
      Top             =   1200
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   22
      Left            =   4560
      Shape           =   3  '圓形
      Top             =   840
      Width           =   255
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  '不透明
      Height          =   255
      Index           =   21
      Left            =   4560
      Shape           =   3  '圓形
      Top             =   480
      Width           =   255
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  '不透明
      Height          =   1200
      Index           =   3
      Left            =   4440
      Shape           =   4  '圓角矩形
      Top             =   360
      Width           =   1185
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public dice As Integer
Private Sub Command1_Click()
Randomize
Sum = 0
For i = 0 To 27
   Shape2(i).Visible = False
Next
For s = 0 To dice - 1

    n = Int(1 + Rnd * 6)
    Sum = Sum + n
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

'Form3.sumDice = Sum
Form3.wn = Sum
Form3.Label1.Caption = "共走" & Sum & "步"
MsgBox Sum
Me.Hide
Form3.Timer1.Interval = 100
Form3.Command2.Enabled = True
End Sub


Private Sub Form_Activate()
    'MsgBox dice
    For i = 0 To 3
       Shape1(i).Visible = False
    Next

    For j = 0 To 27
       Shape2(j).Visible = False
    Next
    For s = 0 To dice - 1
       Shape1(s).Visible = True
       Shape2(3 + 7 * s).Visible = True
    Next
End Sub

