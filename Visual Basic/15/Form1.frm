VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "抓15遊戲"
   ClientHeight    =   3975
   ClientLeft      =   3285
   ClientTop       =   2400
   ClientWidth     =   7110
   LinkTopic       =   "Form1"
   ScaleHeight     =   3975
   ScaleWidth      =   7110
   Begin VB.CommandButton bye 
      Caption         =   "結束"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4320
      TabIndex        =   1
      Top             =   840
      Width           =   2655
   End
   Begin VB.CommandButton go 
      Caption         =   "重玩"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   4320
      TabIndex        =   0
      Top             =   240
      Width           =   2655
   End
   Begin VB.Label Label4 
      BackColor       =   &H00FFFFFF&
      Caption         =   "和為15即獲勝"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4200
      TabIndex        =   13
      Top             =   3360
      Width           =   2775
   End
   Begin VB.Label Label3 
      BackColor       =   &H00FFFFFF&
      Caption         =   "只要抓到任三個"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4200
      TabIndex        =   12
      Top             =   2880
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   8
      Left            =   1440
      TabIndex        =   11
      Top             =   120
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   7
      Left            =   2760
      TabIndex        =   10
      Top             =   2760
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   6
      Left            =   120
      TabIndex        =   9
      Top             =   1440
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   5
      Left            =   120
      TabIndex        =   8
      Top             =   2760
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   4
      Left            =   1440
      TabIndex        =   7
      Top             =   1440
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   3
      Left            =   2760
      TabIndex        =   6
      Top             =   120
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   2
      Left            =   2760
      TabIndex        =   5
      Top             =   1440
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   1
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   255
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Index           =   0
      Left            =   1440
      TabIndex        =   3
      Top             =   2760
      Width           =   255
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "玩者:"
      BeginProperty Font 
         Name            =   "微軟正黑體"
         Size            =   36
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   4080
      TabIndex        =   2
      Top             =   1920
      Width           =   1815
   End
   Begin VB.Image Image2 
      Height          =   1020
      Index           =   1
      Left            =   5880
      Picture         =   "Form1.frx":0000
      Top             =   1680
      Width           =   1140
   End
   Begin VB.Image Image2 
      Height          =   1020
      Index           =   0
      Left            =   5880
      Picture         =   "Form1.frx":3CD2
      Top             =   1680
      Width           =   1140
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   8
      Left            =   1440
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   7
      Left            =   2760
      Top             =   2760
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   6
      Left            =   120
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   5
      Left            =   120
      Top             =   2760
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   4
      Left            =   1440
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   3
      Left            =   2760
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   2
      Left            =   2760
      Top             =   1440
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   1
      Left            =   120
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   0
      Left            =   1440
      Top             =   2760
      Width           =   1095
   End
   Begin VB.Line Line4 
      X1              =   2640
      X2              =   2640
      Y1              =   0
      Y2              =   4080
   End
   Begin VB.Line Line3 
      X1              =   1320
      X2              =   1320
      Y1              =   0
      Y2              =   4080
   End
   Begin VB.Line Line2 
      X1              =   -120
      X2              =   3960
      Y1              =   2640
      Y2              =   2640
   End
   Begin VB.Line Line1 
      X1              =   -120
      X2              =   3960
      Y1              =   1320
      Y2              =   1320
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim xo As String '輪到誰
Dim TF(8) '紀錄圈叉 0-O 1-X 2-沒選
Dim win

Private Sub bye_Click()
    End
End Sub

Private Sub Form_Load()
    Call ini
End Sub

Private Sub go_Click()
    Call ini 'reset
End Sub

Private Sub Image1_Click(Index As Integer)
    If TF(Index) <> 2 Then Exit Sub
    If win <> 0 Then Exit Sub
    
    Image1(Index).Picture = Image2(xo).Picture
    'MsgBox xo
        TF(Index) = xo
    Call whowin '顯示結果
    Image2(xo).Visible = False '換人
    xo = 1 - xo
    Image2(xo).Visible = True

End Sub

Private Sub ini() '開始

    
    xo = 0
    Image2(xo).Visible = True
    For i = 0 To 8
       ' Image1(i).Visible = False
        Image1(i).Picture = LoadPicture()
        TF(i) = 2
    Next
End Sub

Private Sub whowin() '顯示結果
win = "0"
If TF(2) = xo And TF(4) = xo And TF(6) = xo Then
    win = "4, 5, 6"
End If
If TF(0) = xo And TF(4) = xo And TF(8) = xo Then
    win = "2, 5, 8"
End If
If TF(1) = xo And TF(4) = xo And TF(7) = xo Then
    win = "1, 5, 9"
End If
If TF(2) = xo And TF(5) = xo And TF(8) = xo Then
    win = "2, 6, 7"
End If
If TF(0) = xo And TF(3) = xo And TF(6) = xo Then
    win = "3, 4, 8"
End If
If TF(0) = xo And TF(1) = xo And TF(2) = xo Then
    win = "1, 6, 8"
End If
If TF(3) = xo And TF(4) = xo And TF(5) = xo Then
    win = "3, 5, 7"
End If
If TF(6) = xo And TF(7) = xo And TF(8) = xo Then
    win = "4, 8, 9"
End If

If win <> "0" Then
    MsgBox ("You win! " & win)
Else
'    tx = "輪到" & xo & " :"
'    For i = 0 To 8
'     tx = tx & TF(i)
'    Next
'    MsgBox tx
End If

End Sub

