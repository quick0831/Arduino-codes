VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "井字遊戲"
   ClientHeight    =   4335
   ClientLeft      =   3285
   ClientTop       =   2400
   ClientWidth     =   8355
   LinkTopic       =   "Form1"
   ScaleHeight     =   4335
   ScaleWidth      =   8355
   Begin VB.CommandButton bye 
      Caption         =   "結束"
      Height          =   615
      Left            =   5400
      TabIndex        =   1
      Top             =   840
      Width           =   2655
   End
   Begin VB.CommandButton go 
      Caption         =   "重玩"
      Height          =   615
      Left            =   5400
      TabIndex        =   0
      Top             =   240
      Width           =   2655
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
      Left            =   5400
      TabIndex        =   4
      Top             =   3840
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
      Left            =   5400
      TabIndex        =   3
      Top             =   3600
      Width           =   2775
   End
   Begin VB.Label Label1 
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
      Left            =   5160
      TabIndex        =   2
      Top             =   1920
      Width           =   1815
   End
   Begin VB.Line Line12 
      BorderColor     =   &H80000003&
      BorderWidth     =   10
      X1              =   120
      X2              =   5280
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Line Line11 
      BorderColor     =   &H80000003&
      BorderWidth     =   10
      X1              =   120
      X2              =   5040
      Y1              =   2160
      Y2              =   2160
   End
   Begin VB.Line Line10 
      BorderColor     =   &H80000003&
      BorderWidth     =   10
      X1              =   120
      X2              =   5040
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Line Line9 
      BorderColor     =   &H80000003&
      BorderWidth     =   10
      X1              =   720
      X2              =   720
      Y1              =   0
      Y2              =   4200
   End
   Begin VB.Line Line8 
      BorderColor     =   &H80000003&
      BorderWidth     =   10
      X1              =   4080
      X2              =   4080
      Y1              =   0
      Y2              =   4200
   End
   Begin VB.Line Line7 
      BorderColor     =   &H80000003&
      BorderWidth     =   10
      X1              =   2520
      X2              =   2520
      Y1              =   0
      Y2              =   4200
   End
   Begin VB.Line Line6 
      BorderColor     =   &H80000003&
      BorderWidth     =   10
      X1              =   4800
      X2              =   120
      Y1              =   4200
      Y2              =   0
   End
   Begin VB.Line Line5 
      BorderColor     =   &H80000003&
      BorderWidth     =   10
      X1              =   120
      X2              =   4800
      Y1              =   4080
      Y2              =   120
   End
   Begin VB.Image Image2 
      Height          =   1020
      Index           =   1
      Left            =   6960
      Picture         =   "Form1.frx":0000
      Top             =   1680
      Width           =   1140
   End
   Begin VB.Image Image2 
      Height          =   1020
      Index           =   0
      Left            =   6960
      Picture         =   "Form1.frx":3CD2
      Top             =   1680
      Width           =   1140
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   8
      Left            =   3600
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   7
      Left            =   1920
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   6
      Left            =   240
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   5
      Left            =   3600
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   4
      Left            =   1920
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   3
      Left            =   240
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   2
      Left            =   3600
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   1
      Left            =   1920
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1095
      Index           =   0
      Left            =   240
      Top             =   120
      Width           =   1095
   End
   Begin VB.Line Line4 
      X1              =   3480
      X2              =   3480
      Y1              =   120
      Y2              =   4200
   End
   Begin VB.Line Line3 
      X1              =   1440
      X2              =   1440
      Y1              =   0
      Y2              =   4200
   End
   Begin VB.Line Line2 
      X1              =   0
      X2              =   5040
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   5160
      Y1              =   1320
      Y2              =   1320
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim xo As Integer '輪到誰
Dim TF(8) '紀錄圈叉 0-O 1-X 2-沒選

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
    
    Image1(Index).Picture = Image2(xo).Picture
    'MsgBox xo
        TF(Index) = xo
    Call whowin '顯示結果
    Image2(xo).Visible = False '換人
    xo = 1 - xo
    Image2(xo).Visible = True

End Sub

Private Sub ini() '開始
    Line5.Visible = False
    Line6.Visible = False
    Line7.Visible = False
    Line8.Visible = False
    Line9.Visible = False
    Line10.Visible = False
    Line11.Visible = False
    Line12.Visible = False
    
    xo = 0
    Image2(xo).Visible = True
    For i = 0 To 8
       ' Image1(i).Visible = False
        Image1(i).Picture = LoadPicture()
        TF(i) = 2
    Next
End Sub

Private Sub whowin() '顯示結果
win = 0
If TF(2) = xo And TF(4) = xo And TF(6) = xo Then
    win = 1
    Line5.Visible = True
End If
If TF(0) = xo And TF(4) = xo And TF(8) = xo Then
    win = 1
    Line6.Visible = True
End If
If TF(1) = xo And TF(4) = xo And TF(7) = xo Then
    win = 1
    Line7.Visible = True
End If
If TF(2) = xo And TF(5) = xo And TF(8) = xo Then
    win = 1
    Line8.Visible = True
End If
If TF(0) = xo And TF(3) = xo And TF(6) = xo Then
    win = 1
    Line9.Visible = True
End If
If TF(0) = xo And TF(1) = xo And TF(2) = xo Then
    win = 1
    Line10.Visible = True
End If
If TF(3) = xo And TF(4) = xo And TF(5) = xo Then
    win = 1
    Line11.Visible = True
End If
If TF(6) = xo And TF(7) = xo And TF(8) = xo Then
    win = 1
    Line12.Visible = True
End If

If win Then
    MsgBox ("You win!")
Else
'    tx = "輪到" & xo & " :"
'    For i = 0 To 8
'     tx = tx & TF(i)
'    Next
'    MsgBox tx
End If

End Sub

