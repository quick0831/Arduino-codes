VERSION 5.00
Begin VB.Form frmLogin 
   BorderStyle     =   3  '���u�T�w��ܤ��
   Caption         =   "�n�J"
   ClientHeight    =   1545
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   3855
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   912.837
   ScaleMode       =   0  '�ϥΪ̦ۭq
   ScaleWidth      =   3619.636
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '�ù�����
   Begin VB.TextBox txtUserName 
      Height          =   345
      Left            =   1440
      TabIndex        =   1
      Text            =   "test"
      Top             =   135
      Width           =   2325
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "�T�w"
      Default         =   -1  'True
      Height          =   390
      Left            =   495
      TabIndex        =   4
      Top             =   1020
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "����"
      Height          =   390
      Left            =   2220
      TabIndex        =   5
      Top             =   1020
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      Height          =   345
      IMEMode         =   3  '�Ȥ�
      Left            =   1440
      PasswordChar    =   "*"
      TabIndex        =   3
      Text            =   "test"
      Top             =   525
      Width           =   2325
   End
   Begin VB.Label lblLabels 
      Caption         =   "�ϥΪ̦W��(&U):"
      Height          =   270
      Index           =   0
      Left            =   105
      TabIndex        =   0
      Top             =   150
      Width           =   1200
   End
   Begin VB.Label lblLabels 
      Caption         =   "�K�X(&P):"
      Height          =   270
      Index           =   1
      Left            =   105
      TabIndex        =   2
      Top             =   540
      Width           =   1080
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Con As New ADODB.Connection
Dim Rs As New ADODB.Recordset
Public LoginSucceeded As Boolean

Private Sub cmdCancel_Click()
    '�]�w�����ܼƬ� false �ӥN��
    '���Ѫ��n�J
    LoginSucceeded = False
    Me.Hide
End Sub
Private Sub Form_Load()
     Con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\ACCESS\account.mdb;Jet OLEDB:Database Password=quicklily;"
     Con.Open

End Sub


Private Sub Form_Unload(Cancel As Integer)
   Con.Close
End Sub
Private Sub cmdOK_Click()
  If txtUserName = "" And txtPassword = "" Then
     MsgBox "��J�T�����ର��", 48, "���ܰT��"
  Else
  
    'Set Rs = Con.Execute("select * from pass")
    'Set Rs = Con.Execute("select * from pass where username='" & Trim(Text1.Text) & "'")
    Set Rs = Con.Execute("select * from pass where username='" & Trim(txtUserName) & "' and password='" & txtPassword & "'")
    
    If Not Rs.EOF Then '����ƪ������B�z
        
        
'        Do While Not Rs.EOF
'         'MsgBox (Rs("username") & "--" & Rs("qqqq"))'/;.l,kmjnbhygtv
'         MsgBox (Rs("password"))
'         Rs.MoveNext
'        Loop
    
        '�N�ǻ����\�T���ܩI�s���Ƶ{����
        '�Ƶ{�����{���X�m�󦹳B
        '�]�w�����ܼƬO��²�檺�覡
        LoginSucceeded = True
        Me.Hide
        Form1.Show
        Form2.Show
    
    Else
        MsgBox "�K�X���~�A�Э��s��J!", , "�n�J"
        txtPassword.SetFocus
        SendKeys "{Home}+{End}"
    End If
  End If

End Sub

'Private Sub cmdOK_Click()
'    '�ˬd�K�X�����T��
'    If txtUserName = "" And txtPassword = "" Then
'        MsgBox "��J�T�����ର��", 48, "���ܰT��"
'        '�N�ǻ����\�T���ܩI�s���Ƶ{����
'        '�Ƶ{�����{���X�m�󦹳B
'        '�]�w�����ܼƬO��²�檺�覡
'        LoginSucceeded = True
'        Me.Hide
'        Form1.Show
'        Form2.Show
'    Else
'        MsgBox "�K�X���~�A�Э��s��J!", , "�n�J"
'        txtPassword.SetFocus
'        SendKeys "{Home}+{End}"
'    End If
'End Sub
