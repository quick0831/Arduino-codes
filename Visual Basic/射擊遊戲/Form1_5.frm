VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000008&
   Caption         =   "�p�e��"
   ClientHeight    =   4560
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8955
   Icon            =   "Form1_5.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4560
   ScaleWidth      =   8955
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.Timer BeeTimer 
      Interval        =   100
      Left            =   0
      Top             =   1080
   End
   Begin VB.Timer BombTime 
      Enabled         =   0   'False
      Interval        =   800
      Left            =   0
      Top             =   0
   End
   Begin VB.Label Label3 
      BackStyle       =   0  '�z��
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   7680
      TabIndex        =   2
      Top             =   600
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   23
      Left            =   6240
      Picture         =   "Form1_5.frx":5C12
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   22
      Left            =   5280
      Picture         =   "Form1_5.frx":6456
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   21
      Left            =   4440
      Picture         =   "Form1_5.frx":6C9A
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   20
      Left            =   3600
      Picture         =   "Form1_5.frx":74DE
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   19
      Left            =   2760
      Picture         =   "Form1_5.frx":7D22
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   18
      Left            =   1920
      Picture         =   "Form1_5.frx":8566
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   17
      Left            =   7080
      Picture         =   "Form1_5.frx":8DAA
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   16
      Left            =   6240
      Picture         =   "Form1_5.frx":95EE
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   15
      Left            =   5280
      Picture         =   "Form1_5.frx":9E32
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   14
      Left            =   4440
      Picture         =   "Form1_5.frx":A676
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   13
      Left            =   3600
      Picture         =   "Form1_5.frx":AEBA
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   12
      Left            =   2760
      Picture         =   "Form1_5.frx":B6FE
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   11
      Left            =   1920
      Picture         =   "Form1_5.frx":BF42
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   10
      Left            =   1080
      Picture         =   "Form1_5.frx":C786
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   9
      Left            =   7800
      Picture         =   "Form1_5.frx":CFCA
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   8
      Left            =   6960
      Picture         =   "Form1_5.frx":D80E
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   7
      Left            =   6120
      Picture         =   "Form1_5.frx":E052
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   6
      Left            =   5280
      Picture         =   "Form1_5.frx":E896
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   4
      Left            =   3600
      Picture         =   "Form1_5.frx":F0DA
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   3
      Left            =   2760
      Picture         =   "Form1_5.frx":F91E
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   2
      Left            =   1920
      Picture         =   "Form1_5.frx":10162
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   1
      Left            =   1080
      Picture         =   "Form1_5.frx":109A6
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   5
      Left            =   4440
      Picture         =   "Form1_5.frx":111EA
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label2 
      BackStyle       =   0  '�z��
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   7440
      TabIndex        =   1
      Top             =   120
      Width           =   1335
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   3120
      Picture         =   "Form1_5.frx":11A2E
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
      Left            =   1320
      TabIndex        =   0
      Top             =   960
      Width           =   255
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   0
      Left            =   480
      Picture         =   "Form1_5.frx":12090
      Stretch         =   -1  'True
      Top             =   120
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
    go1 = "R"
End If

'*�o�g�x�����B�z����B�z:Image2.Left - 300����o�g�x����
If KeyCode = 37 Then
    Image2.Left = Image2.Left - 300
    If Image2.Left <= 0 Then Image2.Left = 0
    go1 = "L"
End If

'*�o�g���u����:Label1(i)
If KeyCode = 32 Or KeyCode = 229 Then
    'MsgBox "sss"
    '������ê��N����Load�sShape
    For n = 0 To scn
        If Not Label1(n).Visible Then '*��Label1(n).Visible=False��,�������u���o�g
           Exit For '��쥼�o�g���u�s���h���X
        End If
    Next
    
    '��o�g�}�C��,load�s���u��o�g
    If n > scn And n > 0 Then scn = n: Load Label1(n)
    Label1(n).Top = Image2.Top - 240
    Label1(n).Left = Image2.Left + CLng((Image2.Width - 240) \ 2)
    Label1(n).Visible = True
    'Label2.Caption = scn
End If
End Sub


Private Sub Form_Load()

init '��l��

End Sub
Private Function init()
    gameH = Form1.Height - Image2.Height
    gameW = Form1.Width - Image2.Width
    Label1(0).Visible = False
    BeeTimer.Enabled = True
    BombTime.Enabled = True

    BeeCounts = 24
    'Label3.Caption = BeeCounts
    DownControl = 0
    go1 = "R"
    Score = 0
    Label2.Caption = "����:" & Score * 10
'
'
'    Image2.Top =      '*�o�g�x��m
'    Image2.Left =     '*�o�g�x��m
'*******************'
'*�e����m�C�ӹj840
'*******************'
 For i = 0 To 23
    Image1(i).Top = 360: Image1(i).Left = 480 + 840 * i
    If i > 9 Then Image1(i).Top = 1080: Image1(i).Left = 480 + 840 * (i - 9)
    If i > 17 Then Image1(i).Top = 1800: Image1(i).Left = 480 + 840 * (i - 16)
 
 Next


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
 If Label1(j).Visible Then
   Label1(j).Top = Label1(j).Top - 240
   If Label1(j).Top <= 0 Then '�W�X���
      Label1(j).Visible = False
   Else
      '******************************************'
      '*��Label1(j).Visible=True��,�ˬd�O�_����p�e��
      '******************************************'
      For i = 0 To 23  '�ˬd�O�_����p�e��
          If Image1(i).Visible Then '�p�e���S��,���u����Ϥ��d��
          'MsgBox "dfsf"
          'a = CheckDie(i, Label1(j).Top, Label1(j).Left)
             If CheckDie(i, Label1(j).Top, Label1(j).Left) Then
                Image1(i).Visible = False
                Label1(j).Visible = False
                '*�p���B�z*'
                '*********'
                Score = Score + 1
                Label2.Caption = "����:" & Score * 10
                BeeCounts = BeeCounts - 1
                If BeeCounts = 0 Then MsgBox "�i�{��,�A�ƤF!!!!!", , "�T��": End
                'Label3.Caption = BeeCounts
                Exit For    '�@���l�u�u�|���@��
             End If
          End If
      Next
'      If Not Label1(j).Visible Then
'         Exit Sub
'      End If
   End If
 End If
Next j
End Sub

Private Sub BeeTimer_Timer()  '�e������
'Dim i As Long
'*******************'
'*�̥kbee-->Image1(9)�I���V����
'*�̥�bee-->Image1(0)�I���V�k��
'*******************'
If go1 = "R" Then
   If (Image1(9).Left + 120) >= gameW Then '�̥kbee-->Image1(9)�I���V����
      go1 = "L"
      BeeTimer_Timer
      Exit Sub
   End If
   For i = 0 To 23
       Image1(i).Left = Image1(i).Left + 120
   Next
Else
   If (Image1(0).Left - 120) <= 0 Then '*�̥�bee-->Image1(0)�I���V�k��
      go1 = "R"
      BeeTimer_Timer
      Exit Sub
   End If
   For i = 0 To 23
       Image1(i).Left = Image1(i).Left - 120
   Next
End If
'*******************'******************'
'*�C����3�����Υk���ʫ�,����1���V�U����
'*******************'******************'
DownControl = DownControl + 1
If DownControl > 20 Then
   DownControl = 0
      For i = 0 To 23
         If Image1(i).Visible = True And Image2.Top <= (Image1(i).Top + Image1(i).Height) Then  '�V�U����,�u��@�w��m....
              MsgBox "Game Over!?!?!?!?!? ", , "�T��"
              End
         Else
            Image1(i).Top = Image1(i).Top + 180
        End If
      Next
   

End If
End Sub

' a=checkDie(i,Label1(j).Top,Label1(j).Left)
Function CheckDie(ByVal i As Integer, ByVal top1, ByVal left1) As Boolean

    If top1 <= (Image1(i).Top + Image1(i).Height) And _
       top1 >= Image1(i).Top And _
       left1 >= Image1(i).Left And _
       left1 <= (Image1(i).Left + Image1(i).Width) Then
        CheckDie = True
    Else
        CheckDie = False
    End If

End Function


