VERSION 5.00
Begin VB.Form TheFirst 
   BackColor       =   &H00008000&
   Caption         =   "21�I"
   ClientHeight    =   5670
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6300
   LinkTopic       =   "Form1"
   ScaleHeight     =   5670
   ScaleWidth      =   6300
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   0
      Top             =   1680
   End
   Begin VB.CommandButton Command2 
      Caption         =   "����n�P"
      Height          =   495
      Left            =   4440
      TabIndex        =   0
      Top             =   2520
      Width           =   1335
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   0
      Left            =   2520
      Picture         =   "21(4).frx":0000
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   1
      Left            =   2640
      Picture         =   "21(4).frx":1274
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   2
      Left            =   2760
      Picture         =   "21(4).frx":24E8
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   3
      Left            =   2880
      Picture         =   "21(4).frx":375C
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   4
      Left            =   3000
      Picture         =   "21(4).frx":49D0
      Top             =   2160
      Width           =   1080
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   4
      Left            =   4920
      Picture         =   "21(4).frx":5C44
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   3
      Left            =   3720
      Picture         =   "21(4).frx":B0BE
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   2
      Left            =   2520
      Picture         =   "21(4).frx":10538
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   1
      Left            =   1320
      Picture         =   "21(4).frx":159B2
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image2 
      Height          =   1470
      Index           =   0
      Left            =   120
      Picture         =   "21(4).frx":1AE2C
      Top             =   4080
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   4
      Left            =   4920
      Picture         =   "21(4).frx":202A6
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   3
      Left            =   3720
      Picture         =   "21(4).frx":25720
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   2
      Left            =   2520
      Picture         =   "21(4).frx":2AB9A
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   1
      Left            =   1320
      Picture         =   "21(4).frx":30014
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   0
      Left            =   120
      Picture         =   "21(4).frx":3548E
      Top             =   120
      Width           =   1095
   End
   Begin VB.Image Image3 
      Height          =   1455
      Index           =   5
      Left            =   3120
      Picture         =   "21(4).frx":3A908
      Top             =   2160
      Width           =   1080
   End
End
Attribute VB_Name = "TheFirst"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Dim flower As String  '�ثe�o�i�P�����
Dim num As Integer          '�ثe�o�i�P���Ʀr
Dim rnd_flower As Integer  '���_�H����
Dim scores As Integer '�ثe�o�i�P������
Dim cards As Integer '�w�o�X�P��(�q���[���a)
Dim cardsCom As Integer '�q�����쪺�P��
Dim sumCom As Integer       '�q���[�`����
Dim sumPlayer As Integer    '���a�[�`����
Dim n As Integer        '��n���o�P
Dim numCom(5) As Integer '�O��q���Ʀr
Dim floCom(5) As String '�O��q�����
Dim numPlayer(5) As Integer '�O�񪱮a�Ʀr
Dim floPlayer(5) As String  '�O�񪱮a���



Sub giveCards() '==============���P==============

Randomize Timer
    rnd_flower = Int(4 * Rnd + 1) '���_�H����
    
    Select Case rnd_flower
       Case 1
          flower = "h"  '�d�������
       Case 2
          flower = "c"
       Case 3
          flower = "s"
       Case 4
          flower = "d"
    End Select
   num = Int(13 * Rnd) + 1 '�d�����Ʀr
    scores = num    '�ثe�o�i�P����
    If num = 11 Or num = 12 Or num = 13 Then
       scores = 10
    End If

    '�Q�λ��j�[�����s�ˬd�O�_���Ƶo�P
    '���ثe�o���P�e�X�i�O�_�@��,���μƦr�ۦP���s���P==============
    For j = 0 To n
       If numPlayer(j) = num And floPlayer(j) = flower Then Call giveCards
    Next
    For j = 0 To cardsCom
       If numCom(j) = num And floCom(j) = flower Then Call giveCards
    Next

End Sub


Sub Give4Cards()    '==============�@�}�l�e4�i�P==============

cards = cards + 1   '�w�o�X�P��(�q���[���a)
'==============���y�o�P==============

If cards Mod 2 = 0 Then '�w�o�X�P��(�q���[���a),���İ��Ʊi,���쪱�a
   '�q��
   Image1(n).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")
    
    '�������a����....
   sumPlayer = sumPlayer + scores
   numPlayer(n) = num
   floPlayer(n) = flower
   n = n + 1
    'A + 10 ==>11 ==> 21
   '��A���ˬd,���t�ثe�o�i�P������=10��1 �B�`��=11�� ==>�令21��
   If sumPlayer - scores = 10 Or sumPlayer - scores = 1 Then
      If sumPlayer = 11 Then sumPlayer = 21
   End If
      
Else    '����q��
   
   '�q��
    Image2(n).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")
    If n = 0 Then
    Image2(0).Picture = LoadPicture(App.Path & "\Picture\" & "new" & ".gif")
    End If
   '�����q������....
   sumCom = sumCom + scores ': MsgBox sumCom & ":" & scores
   numCom(n) = num
   floCom(n) = flower
   cardsCom = n    '�q�����쪺�P��
   
   '��A���ˬd,���t�ثe�o�i�P������=10��1 �B�`��=11�� ==>�令21��
    If sumCom - scores = 10 Or sumCom - scores = 1 Then
         If sumCom = 11 Then sumCom = 21
    End If

End If

End Sub


Private Sub Command2_Click() '���a���~����P,�����n�F���s
    Call EndShow(2)  '��ܹC�����G,0�q��Ĺ,1���aĹ,2�̤��ƧP�_
End Sub

Private Sub EndShow(whowin)  '��ܹC�����G,0�q��Ĺ,1���aĹ,2�̤��ƧP�_
    '�q�X�q�����ê��P
    Image2(0).Picture = LoadPicture(App.Path & "\Picture\" & floCom(0) & numCom(0) & ".jpg")
    '==============�P�_��H���`�Ƹ��j�A�åB�M�w��Ĺ==============
    If whowin = 2 Then
        If sumPlayer > sumCom Then whowin = 1 Else whowin = 0
    End If
    
    MsgBox "�z�����ƬO" & sumPlayer & "��" & "�q�������ƬO" & sumCom & "��"
'    For i = 0 To cardsCom
'        MsgBox numCom(i)
'    Next
    
    If whowin Then
        MsgBox "���aĹ�F!!"
    Else
        MsgBox "�q��Ĺ�F!!"
    End If
    
    Me.Hide
    
'    Timer1.Interval = 0 '����p�ɾ�,���A�o�P���q��
    init
    
 '   End
End Sub


Private Sub Form_Activate()
      Timer1.Interval = 100 '�}�p�ɾ�
End Sub



Private Sub Form_Load()
    Call init '��l��
    
End Sub

Private Sub Image3_Click(Index As Integer)      '���a�~�򮳵P


Call CardMove(Image3(Index), Image1(n)) '�o�P�����ʭy��
Image3(Index).Visible = False

giveCards '�o�P
 sumPlayer = sumPlayer + scores '�֭p���a����
'�q�P-���a
Image1(n).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")



If sumPlayer > 21 Then  '���a�z�F,�q�X�q�����P
    Call EndShow(0)  '��ܹC�����G,0�q��Ĺ,1���aĹ,2�̤��ƧP�_
ElseIf n >= 4 Then    '���줭�i�P,���aĹ�F
    Call EndShow(1)  '��ܹC�����G,0�q��Ĺ,1���aĹ,2�̤��ƧP�_
Else
    '�������a�P��
       numPlayer(n) = num
    '�������a���
       floPlayer(n) = flower
    '����+1
        n = n + 1
End If
End Sub

Private Sub Timer1_Timer()  '�۰ʵo�P

    giveCards '====�o�P===

If n <= 1 Then
   Call Give4Cards   '�@�}�l�e4�i�P n=1,0 cardsCom=0,1
Else    '(�u�۰ʵo�P���q��...cardsCom=2,3,4)
    
   sumCom = sumCom + scores '�p��Y�q�����P�|���h�֤�
   
   If sumCom <= 21 Then '�Y�q���S�z,�q���~�򮳵P==>�@��
      cardsCom = cardsCom + 1 ': MsgBox sumCom & ":" & scores  '�q�����쪺�P��+1
      If cardsCom >= 4 Then '���줭�i�P,�q��Ĺ�F
               Image2(cardsCom).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")
               MsgBox ("���줭�i�P")
               
              Call EndShow(0)   '��ܹC�����G,0�q��Ĺ,1���aĹ,2�̤��ƧP�_
      Else
           
        numCom(cardsCom) = num
        floCom(cardsCom) = flower
        Image2(cardsCom).Picture = LoadPicture(App.Path & "\Picture\" & floCom(cardsCom) & numCom(cardsCom) & ".jpg")
      End If

     


   Else '�Y�~�򮳵P,�q���|�z,���~�򮳵P==>�@��

      sumCom = sumCom - scores ': MsgBox "2:" & scores  '�����P,���^�֭p����
      
      Timer1.Interval = 0 '����p�ɾ�,���A�o�P���q��

      If sumPlayer = 21 Then
        Call EndShow(1)  '��ܹC�����G,0�q��Ĺ,1���aĹ,2�̤��ƧP�_
      End If
   End If
End If
End Sub
Private Sub init() '��l��

'Dim floPlayer(5) As String  '�O�񪱮a���


flower = "" '�ثe�o�i�P�����
num = 0         '�ثe�o�i�P���Ʀr
rnd_flower = 0 '���_�H����
scores = 0 '�ثe�o�i�P������
cards = 0 '�w�o�X�P��(�q���[���a)
cardsCom = 0 '�q�����쪺�P��
sumCom = 0      '�q���[�`����
sumPlayer = 0   '���a�[�`����
n = 0       '��n���o�P

   For j = 0 To 4
    numCom(j) = 0 '�O��q���Ʀr
    floCom(j) = "" '�O��q�����
    numPlayer(j) = 0 '�O�񪱮a�Ʀr
    floPlayer(j) = "" '�O�񪱮a���

     '�|���o�P,��JnoCardPic
    Image1(j).Picture = LoadPicture(App.Path & "\Picture\noCardPic.bmp")
    Image2(j).Picture = LoadPicture(App.Path & "\Picture\noCardPic.bmp")
   Next

End Sub

Private Sub CardMove(P1 As Object, P2 As Object)
H = P2.Left - P1.Left
V = P2.Top - P1.Top
For i = 1 To 10
    Sleep 10
    P1.Left = P1.Left + (H) / 10
    P1.Top = P1.Top + (V) / 10
Next
End Sub
