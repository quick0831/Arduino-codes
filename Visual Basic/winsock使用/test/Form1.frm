VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  '╰参箇砞
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   480
      TabIndex        =   2
      Text            =   "test"
      Top             =   240
      Width           =   3135
   End
   Begin VB.TextBox Text2 
      Height          =   1335
      Left            =   480
      TabIndex        =   1
      Text            =   "Text2"
      Top             =   840
      Width           =   3135
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   3840
      TabIndex        =   0
      Top             =   240
      Width           =   735
   End
   Begin MSWinsockLib.Winsock Winsock2 
      Left            =   2760
      Top             =   2280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   2280
      Top             =   2280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Winsock1.SendData "ok"
End Sub

Private Sub Form_Load()

            
'砆北
'    Winsock1.LocalPort = "333"
'    Winsock1.RemotePort = "338"
'    Winsock1.Listen
'    Me.Caption = "砆北"

'北
   Winsock1.RemoteHost = "127.0.0.1"
   Winsock1.LocalPort = "338"
   Winsock1.RemotePort = "333"
   Winsock1.Connect
   Me.Caption = "北"
    
   ' MsgBox Winsock1.LocalIP
End Sub


Private Sub Winsock1_Connect()
isConnect = True
MsgBox "硈絬Θ"
End Sub

Private Sub Winsock1_ConnectionRequest(ByVal requestID As Long)
Winsock2.Accept requestID
isListen = True
MsgBox "砆璶―硈絬"

End Sub


Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)

Winsock1.GetData strTempData, vbString
 MsgBox strTempData
If Trim(strTempData) = "OK" Then
   isConnect = True
   MsgBox "硈絬Θ,秨﹍笴栏"

   Winsock1.SendData "NAME-"
   Exit Sub
End If
End Sub

Private Sub Winsock1_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
isConnect = False
MsgBox "硈絬ア毖"
End Sub
Private Sub Winsock2_DataArrival(ByVal bytesTotal As Long)

Winsock2.GetData strTempData, vbString

If Trim(strTempData) = "OK" Then
   isConnect = True
   MsgBox "硈絬Θ,秨﹍笴栏"

 '  Winsock1.SendData "OK"
'   Exit Sub
End If
End Sub
