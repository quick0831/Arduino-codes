VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5670
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10335
   LinkTopic       =   "Form1"
   ScaleHeight     =   5670
   ScaleWidth      =   10335
   StartUpPosition =   3  '�t�ιw�]��
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   495
      Left            =   7440
      TabIndex        =   1
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�o�P"
      Height          =   495
      Left            =   7440
      TabIndex        =   0
      Top             =   840
      Width           =   1335
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   4
      Left            =   6000
      Picture         =   "21(1).frx":0000
      Top             =   720
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   3
      Left            =   4800
      Picture         =   "21(1).frx":547A
      Top             =   720
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   2
      Left            =   3600
      Picture         =   "21(1).frx":A8F4
      Top             =   720
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   1
      Left            =   2400
      Picture         =   "21(1).frx":FD6E
      Top             =   720
      Width           =   1095
   End
   Begin VB.Image Image1 
      Height          =   1470
      Index           =   0
      Left            =   1200
      Picture         =   "21(1).frx":151E8
      Top             =   720
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim numPlayer(5) As Integer '�O�񪱮a�Ʀr
Dim floPlayer(5) As String  '�O�񪱮a���
Dim cntPlayer As Integer     '���a�P��
Private Sub Command1_Click()
Randomize
i = 0

Do While i < 5 '�o5�i�P
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
    numPlayer(i) = num '�O�񪱮a�Ʀr

    floPlayer(i) = flower '�O�񪱮a���
    '���ثe�o���P�e�X�i�O�_�@��
    rep = 0
    For k = 0 To i - 1
        If floPlayer(i) = floPlayer(k) And numPlayer(i) = numPlayer(k) Then rep = 1
    Next
    
    'LoadPicture (c:\Windows\Setup.bmp)  �N���ɸ��J
    'Picture1.Picture = LoadPicture ( )  �Y�ٲ��ɦW�A�h�M���Ӫ��󤧵e��
    'App.Path �{���Ҧb��m
    If rep = 0 Then
        Image1(i).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")
        i = i + 1

    End If
Loop


If i = 5 Then '�P�`�p
    For n = 1 To 5
        'J Q K 10��
        If numPlayer(n) = 11 Or numPlayer(n) = 12 Or numPlayer(n) = 13 Then
            c1 = 10
        Else
            c1 = numPlayer(n)
        End If
        c = c + c1
    Next


    MsgBox "�A���P�`�p�O�G" & c, vbInformation, "�T��"
End If
End Sub

