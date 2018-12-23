VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  '系統預設值
   Begin VB.TextBox Text1 
      Height          =   735
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   2895
   End
   Begin VB.TextBox Text2 
      Height          =   1575
      Left            =   120
      TabIndex        =   2
      Top             =   960
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   3240
      TabIndex        =   1
      Top             =   240
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   615
      Left            =   3240
      TabIndex        =   0
      Top             =   1200
      Width           =   1215
   End
   Begin MSWinsockLib.Winsock Winsock2 
      Left            =   4200
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   3720
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   495
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   2895
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command2_Click()
Winsock1.Close '因為可能先前已經開著，所以先關閉
Winsock1.Connect
End Sub

Private Sub Form_Load()
Winsock1.LocalPort = 555
Winsock1.RemotePort = 333
Winsock1.RemoteHost = "127.0.0.1"
Me.Caption = "被控"
Winsock1.Listen


'Winsock1.LocalPort = 333
'Winsock1.RemotePort = 555
'Winsock1.RemoteHost = "127.0.0.1"
'Me.Caption = "主控"
'Command1.Enabled = False
'Winsock1.Close '因為可能先前已經開著，所以先關閉
'Winsock1.Connect
End Sub

Private Sub Winsock1_ConnectionRequest(ByVal requestID As Long)
    If Winsock1.State <> sckClosed Then
        Winsock1.Close
        Winsock1.Accept requestID
        isListen = True
        MsgBox "被要求連線"
    End If
    
End Sub

'Winscok收到資料時會呼叫的副程式
Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
 Winsock1.GetData TmpStr, vbString
 Text2.Text = TmpStr & vbCrLf & Text2.Text
End Sub


Private Sub Command1_Click()
 
 
 Winsock1.SendData Text1.Text '把資料送出去
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


