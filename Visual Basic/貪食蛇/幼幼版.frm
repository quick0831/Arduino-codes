VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H0080FFFF&
   Caption         =   "�g���D"
   ClientHeight    =   5715
   ClientLeft      =   60
   ClientTop       =   690
   ClientWidth     =   8685
   Icon            =   "������.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5715
   ScaleWidth      =   8685
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   8280
      Top             =   5280
   End
   Begin VB.Label Label1 
      Alignment       =   2  '�m�����
      BackColor       =   &H0080FFFF&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "�s�ө���"
         Size            =   36
         Charset         =   136
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   735
      Left            =   2640
      TabIndex        =   0
      Top             =   2640
      Width           =   735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim headX As Integer        '�D�Yx
Dim headY As Integer        '�D�Yy
Dim cnt As Integer      '�D����
Dim bodyY(500) As Integer    '�D��y
Dim bodyX(500) As Integer    '�D��x
Dim go1 As String             '��V
Dim score As Integer            '����
Dim APPLEX As Integer   '����
Dim APPLEY As Integer
Dim GameWidth As Byte
Dim GameHeight As Byte
Const bSize = 300
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    '2.2,�D�u��¤T�Ӥ�V����,���ઽ�����Y
    If KeyCode = 37 And go1 <> "R" Then go1 = "L"
    If KeyCode = 38 And go1 <> "D" Then go1 = "U"
    If KeyCode = 39 And go1 <> "L" Then go1 = "R"
    If KeyCode = 40 And go1 <> "U" Then go1 = "D"



End Sub


Private Sub Form_Load()
    Randomize Timer
    GameWidth = 25
    GameHeight = 20
    headX = 12         '�]�wheadX�����
    headY = 10         '�]�wheadY�����
    cnt = 3            '�]�w�D�@�}�l��3�`����
    go1 = "L"
    
    APPLEX = Int(Rnd * GameWidth)       '4.2�H���ͦ�����
    APPLEY = Int(Rnd * GameHeight)
    
    For I = 1 To cnt        '�D����l����m
       bodyX(I) = headX + I
       bodyY(I) = headY
    Next
    Form_Paint          '��s�e�� ø�s �D�Y�M�D��,apple
    
    
    Me.Width = GameWidth * bSize + Form1.Width - Form1.ScaleWidth
    Me.Height = GameHeight * bSize + Form1.Height - Form1.ScaleHeight
End Sub



'1. ø�s �D�Y�M�D��,apple
Private Sub Form_Paint()  '���ø�s�ƥ�
Cls          '�M�����e��

'4.1ø��ī�G
FillStyle = 0      '�ϫ����߬����
DrawStyle = 5      '�ϫ��u���z��
FillColor = RGB(255, 0, 0)  '�ϫ������C�⬰����
Line (APPLEX * bSize, APPLEY * bSize)-(APPLEX * bSize + bSize, APPLEY * bSize + bSize), , B

'ø��D�Y


FillColor = RGB(0, 255, 0)   '�ϫ������C��
Line (headX * bSize, headY * bSize)-(headX * bSize + bSize, headY * bSize + bSize), , B

'ø��D��
FillColor = RGB(0, 0, 0)   '�¦�
For I = 1 To cnt
   Line (bodyX(I) * bSize, bodyY(I) * bSize)-(bodyX(I) * bSize + bSize, bodyY(I) * bSize + bSize), , B
Next
End Sub




Private Sub Timer1_Timer()
'7.���D�۰ʲ���
    '3.�D���H�۳D�Y���y��i�沾��

    For I = cnt To 2 Step -1
        bodyX(I) = bodyX(I - 1)
        bodyY(I) = bodyY(I - 1)
    Next
    bodyX(1) = headX
    bodyY(1) = headY
    
    '2.1�Q�� VB��KEY_DOWN �ƥ󲾰ʳD�Y
    '�̷Ӥ�V��s�D�Y��m
    If go1 = "L" Then headX = headX - 1
    If go1 = "U" Then headY = headY - 1
    If go1 = "R" Then headX = headX + 1
    If go1 = "D" Then headY = headY + 1
    Form_Paint '��s�e�� ø�s �D�Y�M�D��,apple
    
    
'    '6.�D��������|��,����h�C������.
'    '�P�_�O�_�W�L���k��ɻP�W�U��ɡA�O�N�ŧi����
'    If headX < 0 Or headY < 0 Or headX > GameWidth - 1 Or headY > GameHeight - 1 Then MsgBox "�`���G" & score, vbInformation, "�T��": End
'
'    '5.�D�Y����r��D��,�r��h�C������.
'    For I = cnt To 2 Step -1
'    If headX = bodyX(I) And headY = bodyY(I) Then MsgBox "�`���G" & score, vbInformation, "�T��": End
'    Next
    
    'roc2.�D��������ѥt�@�ݬ�X.
    If headX < 0 Then headX = GameWidth - 1
    If headX > GameWidth - 1 Then headX = 0
    If headY < 0 Then headY = GameHeight - 1
    If headY > GameHeight - 1 Then headY = 0

    'roc1.�D�Y�r��D��,�D��-1.
    For I = 1 To cnt
        If headX = bodyX(I) And headY = bodyY(I) Then cnt = cnt - 1: Exit For  'error2
    Next
    
    
    
    '4.3�Y��������D���|�ܪ�,�[��,���ͭ���
    If headX = APPLEX And headY = APPLEY Then '�Y������
        '�D���ܪ�
        cnt = cnt + 1
        '4.2�H���ͦ�����
        APPLEX = Int(Rnd * GameWidth)
        APPLEY = Int(Rnd * GameHeight)
        Form_Paint         '��s�e�� ø�s �D�Y�M�D��,apple
        '�[��
        score = score + 1
        Label1.Caption = score
    End If

End Sub



