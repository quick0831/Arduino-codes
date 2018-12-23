VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   4440
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11475
   Icon            =   "Form204.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   4440
   ScaleWidth      =   11475
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command1 
      Caption         =   "送出"
      Height          =   375
      Left            =   10080
      TabIndex        =   10
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "連線"
      Height          =   495
      Left            =   10080
      TabIndex        =   9
      Top             =   480
      Width           =   735
   End
   Begin VB.TextBox Text4 
      Height          =   375
      Left            =   8760
      TabIndex        =   8
      Text            =   "Text3"
      Top             =   840
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   8760
      TabIndex        =   7
      Text            =   "Text3"
      Top             =   480
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   8280
      MultiLine       =   -1  'True
      TabIndex        =   6
      Top             =   1320
      Width           =   1695
   End
   Begin VB.TextBox Text2 
      Height          =   2655
      Left            =   8280
      MultiLine       =   -1  'True
      TabIndex        =   5
      Top             =   1680
      Width           =   1695
   End
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
      Enabled         =   0   'False
      Height          =   615
      Left            =   5400
      TabIndex        =   0
      Top             =   240
      Width           =   2655
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   10320
      Top             =   2160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Label5 
      Caption         =   "Port:"
      Height          =   255
      Left            =   8280
      TabIndex        =   12
      Top             =   960
      Width           =   375
   End
   Begin VB.Label Label4 
      Caption         =   "IP:"
      Height          =   255
      Left            =   8280
      TabIndex        =   11
      Top             =   600
      Width           =   375
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
      Caption         =   "設計者:張峻魁(2014年8月)"
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
   Begin VB.Image Image2 
      Height          =   1020
      Index           =   1
      Left            =   6960
      Picture         =   "Form204.frx":9E4A
      Top             =   1680
      Width           =   1140
   End
   Begin VB.Image Image2 
      Height          =   1020
      Index           =   0
      Left            =   6960
      Picture         =   "Form204.frx":DB1C
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
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim xo As Integer '輪到誰
Dim TF(8) '紀錄圈叉 0-O 1-X 2-沒選
Public ListenSide As Boolean
Dim Con As New ADODB.Connection
Dim Rs As New ADODB.Recordset



Private Sub Form_Load()

ListenSide = True
Call ini
Randomize Timer
If ListenSide Then
    lport = Int(Rnd * 5555) + 334
    Winsock1.LocalPort = lport
    Winsock1.Listen
    Me.Caption = "等待連線端"
    Command2.Visible = False
    Text2.Text = "等待連線..." & vbCrLf & "IP:" & Winsock1.LocalIP & vbCrLf
    Text2.Text = Text2.Text & "Port:" & lport & vbCrLf
Else
    Winsock1.LocalPort = 333
    Me.Caption = "主動連線端"
    Text2.Text = "請輸入對方IP與Port,並按下連線..."
End If

Command1.Enabled = False
Text3.Text = Winsock1.LocalIP
Text4.Text = lport

End Sub

Private Sub Winsock1_ConnectionRequest(ByVal requestID As Long)
    If Winsock1.State <> sckClosed Then
        Winsock1.Close
        Winsock1.Accept requestID
        isListen = True
        Text2.Text = "連線中,遊戲開始..."
        Command1.Enabled = True
    End If
    
End Sub

'Winscok收到資料時會呼叫的副程式
Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
    Winsock1.GetData dataTmp, vbString  '收到資料
    dataType = Left(dataTmp, 2)
    dataMsgx = Right(dataTmp, Len(dataTmp) - 2)
    If dataType = "g:" Then
        tmpindex = CInt(dataMsgx)
        If tmpindex < 9 Then        '下棋子
            Image1(tmpindex).Picture = Image2(xo).Picture
            TF(tmpindex) = xo
            Call whowin
            '顯示結果
            xo = 1 - xo
        ElseIf tmpindex = 99 Then  '對方贏了
            Text2.Text = "You Lost!!"
            go.Enabled = True
        ElseIf tmpindex = 22 Then  '對方按重玩
            yn = MsgBox("對方想重玩,你也是嗎?", vbYesNo, "訊息")
            If yn = vbYes Then
                Call ini 'reset
                go.Enabled = False
            Else
                End
            End If
        ElseIf tmpindex = 11 Then  '平手
            Text2.Text = "平手!!"
            go.Enabled = True
        End If
    End If
    If dataType = "d:" Then
         Text2.Text = "他說:" & dataMsgx & vbCrLf & Text2.Text
    End If
    
End Sub

Private Sub Command1_Click()
 
 
 Winsock1.SendData "d:" & Text1.Text '把資料送出去
 Text2.Text = "我說:" & Text1.Text & vbCrLf & Text2.Text
 Text1.Text = ""
End Sub
Private Sub Winsock1_Connect()
MsgBox "連線成功"
  
    '將傳送按鈕恢復成可以被按下
    Command1.Enabled = True
End Sub
Private Sub Winsock1_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
isConnect = False
MsgBox "連線失敗"
End Sub

Private Sub bye_Click()
End
End Sub
Private Sub go_Click()
 Call ini 'reset
 go.Enabled = False
 Winsock1.SendData "g:22"  '告訴對方重玩
End Sub

Private Sub Image1_Click(Index As Integer)
    If TF(Index) <> 2 Or Abs(ListenSide) - xo <> 0 Then Exit Sub
    
    Image1(Index).Picture = Image2(xo).Picture
    TF(Index) = xo
    Winsock1.SendData "g:" & Index '把資料送出去
    Call whowin '顯示結果
    xo = 1 - xo

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

If ((ListenSide = True And xo = 1) Or (ListenSide = False And xo = 0)) Then '一方負責判斷
    If win Then
        '間隔以下,以免資訊連在一起
        Winsock1.SendData "   "
        DoEvents
        Text2.Text = "You Win!"
        Winsock1.SendData "g:" & 99  '對方輸了
        go.Enabled = True
    Else
        'tx = "輪到" & xo & " :"
        For i = 0 To 8
        If TF(i) = 2 Then Exit For
        Next
        
        If i = 9 Then
            Text2.Text = "平手!!"
            go.Enabled = True
            '間隔以下,以免資訊連在一起
            Winsock1.SendData "   "
            DoEvents
            Winsock1.SendData "g:11" ' 平手
        End If
    End If
End If

End Sub

'*******************************'
'*FORM 關閉時,檢查若TCP/IP已開啟,則需關閉
'*******************************'
Private Sub Form_Unload(Cancel As Integer)
'*******************************'
'*若TCP/IP 已開啟,則需關閉
'*******************************'

   Winsock1.Close

End Sub
