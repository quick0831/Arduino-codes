VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000008&
   Caption         =   "Form1"
   ClientHeight    =   4560
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8955
   LinkTopic       =   "Form1"
   ScaleHeight     =   4560
   ScaleWidth      =   8955
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.Timer BeeTimer 
      Interval        =   2000
      Left            =   0
      Top             =   1080
   End
   Begin VB.Timer BombTime 
      Enabled         =   0   'False
      Interval        =   800
      Left            =   0
      Top             =   0
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   375
      Left            =   7320
      TabIndex        =   1
      Top             =   1920
      Width           =   1335
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   3120
      Picture         =   "Form1_1.frx":0000
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   615
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      BackColor       =   &H00000000&
      Caption         =   "��"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   0
      Left            =   3240
      TabIndex        =   0
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   0
      Left            =   3000
      Picture         =   "Form1_1.frx":0662
      Stretch         =   -1  'True
      Top             =   240
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*******************'
'*�p�e���C��
'*******************'
Dim gameH, gameW As Integer
Dim scn As Integer 'Load ���u��
Private go1 As String  '�e�����ʤ�V
Private Score As Long
Private DownControl As Long
Private BeeCounts As Long
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'MsgBox KeyCode
'*�o�g�x�k���B�z:Image2.Left+ 300����o�g�x�k��
If KeyCode = 39 Then
    Image2.Left = Image2.Left + 300
    If Image2.Left >= gameW Then Image2.Left = gameW
    'If Image1.Left > Form1.Width Then Image1.Left = -Image1.Width
    go1 = "R"
End If

'*�o�g�x�����B�z����B�z:Image2.Left - 300����o�g�x����
If KeyCode = 37 Then
    Image2.Left = Image2.Left - 300
    If Image2.Left <= 0 Then Image2.Left = 0
    go1 = "L"
    'If Image1.Left < -Image1.Width Then Image1.Left = Form1.Width
End If

'*�o�g���u����:Label1(i)
If KeyCode = 32 Or KeyCode = 229 Then

    '�o�g�s���u

    'Label1(0).Top =  - 240
    'Label1(0).Left =  + CLng((Image2.Width - 240) \ 2)
    'Label1(0).Visible =
    Label2.Caption = scn
End If
End Sub


Private Sub Form_Load()
'*******************'
'*
'*******************'
init '��l��

End Sub
Private Function init()
    gameH = Form1.Height - Image2.Height
    gameW = Form1.Width - Image2.Width
    Label1(0).Visible = False
    BeeTimer.Enabled = True
    BombTime.Enabled = True


'    Image2.Top =      '*�o�g�x��m
'    Image2.Left =     '*�o�g�x��m



init = True
End Function
'*******************'
'*
'*******************'
Private Sub BombTime_Timer()
'******************************************'
'*��Label1(j).Visible=True��,�����j�����u����i���|
'******************************************'
For j = 0 To scn '�����j�����u����i���|
 'If     Then
   Label1(j).Top = Label1(j).Top - 240
   'If  Then  '�W�X���
     ' Label1(j) =     False
   'Else


   'End If
 'End If
Next j
End Sub

Private Sub BeeTimer_Timer()
'*******************'
'*�̥kbee-->Image1(9)�I���V����
'*�̥�bee-->Image1(0)�I���V�k��
'*******************'

End Sub
