VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   Caption         =   "�j�I��test"
   ClientHeight    =   5970
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6750
   LinkTopic       =   "Form1"
   ScaleHeight     =   5970
   ScaleWidth      =   6750
   StartUpPosition =   2  '�ù�����
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   375
      Left            =   3840
      TabIndex        =   1
      Top             =   2280
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  '����
      Caption         =   "����1"
      Height          =   375
      Left            =   3600
      Style           =   1  '�Ϥ��~�[
      TabIndex        =   0
      Top             =   1560
      Width           =   615
   End
   Begin VB.Timer Timer1 
      Left            =   3840
      Top             =   960
   End
   Begin VB.Label Label2 
      BorderStyle     =   1  '��u�T�w
      Caption         =   "Label2"
      Height          =   375
      Left            =   1080
      TabIndex        =   3
      Top             =   3360
      Width           =   1935
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000D&
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   18
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2295
      Left            =   1080
      TabIndex        =   2
      Top             =   1080
      Width           =   1935
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dim pa As Integer
Dim wn As Integer   '��l��
Dim cw As Integer   '�p�����̨��X�B
Dim wa As Integer   '�ĴX����
Dim sw As Integer   '�ٳѴX�B��U�@����
Dim pm '���̪�����

Private Sub Command2_Click()
    Randomize Timer
    wn = Int(6 * Rnd + 1)  '��l��
    'MsgBox "��l��:" & wn
    Label1.Caption = "��l��:" & wn
    Timer1.Interval = wn '�}�l��
End Sub

Private Sub Form_Activate()
wn = 0
cw = 0
wa = 0
sw = 0


'�]�w�_�I
Command1.Top = 1000 + 750 * 6
Command1.Left = 1000 + 750 * 6
Form1.FillStyle = 0
Form1.Width = (750 * 6) + 1000 * 2 + Form1.Width - Form1.ScaleWidth
Form1.Height = (750 * 6) + 1000 * 2 + Form1.Height - Form1.ScaleHeight
Form1.FillColor = &H80C0FF

Line (0, 0)-(1000, 1000), , B
Line ((750 * 6) + 1000, 0)-((750 * 6) + 2 * 1000, 1000), , B
Line (0, (750 * 6) + 1000)-(1000, (750 * 6) + 2 * 1000), , B
Line ((750 * 6) + 1000, (750 * 6) + 1000)-((750 * 6) + 2 * 1000, (750 * 6) + 2 * 1000), , B

For i = 0 To 5
   Form1.FillStyle = 0
   If i = 0 Or i = 3 Or i = 5 Then Form1.FillColor = &HFFC0C0 'blue
   If i = 1 Then Form1.FillColor = &H80FFFF
   If i = 2 Then Form1.FillColor = &HC0FFC0
   If i = 4 Then Form1.FillColor = &HFFC0FF
   Line ((750 * i) + 1000, (750 * 6) + 1000)-((750 * (i + 1)) + 1000, (750 * 6) + 2 * 1000), , B
   Line ((750 * 6) + 1000, 1000 + (750 * i))-((750 * 6) + 2 * 1000, 1000 + (750 * (i + 1))), , B
   Line (1000 + (750 * i), 0)-(1000 + (750 * (i + 1)), 1000), , B
   Line (0, 1000 + (750 * i))-(1000, 1000 + (750 * (i + 1))), , B
Next



End Sub


Private Sub Form_Load()
pm = 5000
Label2.Caption = "���̤@�������G" & pm & "��"
End Sub

Private Sub Timer1_Timer()
cw = cw + 1 '�p�����̨��X�B
If sw = 0 Then
   If wa = 0 Then wa = 3 Else wa = wa - 1
   sw = 7
End If


'�C���@�B
   sw = sw - 1
   If wa = 0 Then Command1.Left = Command1.Left + 750
   If wa = 3 Then Command1.Top = Command1.Top - 750
   If wa = 2 Then Command1.Left = Command1.Left - 750
   If wa = 1 Then Command1.Top = Command1.Top + 750


  '���
  Label2.Caption = "���̤@�������G" & pm & "��"
  If cw = wn Then AreaEvent (sw)

   
End Sub

Sub AreaEvent(i)    '--------------�P�_�Ҩ�F�ϰ�n���檺�ƥ�--------------

cw = 0
Timer1.Interval = 0
yellow
'If wa <= 1 Then
'      If i = 0 Then MsgBox "orange"
'      If i = 1 Or i = 3 Or i = 6 Then MsgBox "blue"
'      If i = 2 Then MsgBox "red"
'      If i = 4 Then MsgBox "green"
'      If i = 5 Then yellow
'   Else
'      If i = 0 Then MsgBox "orange"
'      If i = 6 Or i = 4 Or i = 1 Then MsgBox "blue"
'      If i = 5 Then MsgBox "red"
'      If i = 3 Then MsgBox "green"
'      If i = 2 Then yellow
'End If

End Sub
Sub yellow()
'--------------Ū�J�B�R�A���ܧ���--------------
Randomize Timer

    sy = Int(1 + Rnd * 16)
    Open App.Path + "\yellow.txt" For Input As #1
   For i = 1 To sy
      Input #1, s, p
   Next
   Close #1

   MsgBox s

'--------------�P�_�ҥX�{���R�B����--------------

If p = 1 Then pm = Int(pm - (pm / 100 * 75))

If p < 0 Or p > 100 Then
   pm = pm + Int(p)
End If

Label2.Caption = "���̤@�������G" & pm & "��"
If pm <= 0 Then End
End Sub
