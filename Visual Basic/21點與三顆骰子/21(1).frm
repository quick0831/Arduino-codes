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
   StartUpPosition =   3  '系統預設值
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   495
      Left            =   7440
      TabIndex        =   1
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "發牌"
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
Dim numPlayer(5) As Integer '記綠玩家數字
Dim floPlayer(5) As String  '記綠玩家花色
Dim cntPlayer As Integer     '玩家牌數
Private Sub Command1_Click()
Randomize
i = 0

Do While i < 5 '發5張牌
    rnd_flower = Int(4 * Rnd + 1) '花色_隨機數
    
    Select Case rnd_flower
       Case 1
          flower = "h"  '卡片的花色
       Case 2
          flower = "c"
       Case 3
          flower = "s"
       Case 4
          flower = "d"
    End Select
    
    num = Int(13 * Rnd) + 1 '卡片的數字
    numPlayer(i) = num '記綠玩家數字

    floPlayer(i) = flower '記綠玩家花色
    '比對目前發的與前幾張是否一樣
    rep = 0
    For k = 0 To i - 1
        If floPlayer(i) = floPlayer(k) And numPlayer(i) = numPlayer(k) Then rep = 1
    Next
    
    'LoadPicture (c:\Windows\Setup.bmp)  將圖檔載入
    'Picture1.Picture = LoadPicture ( )  若省略檔名，則清除該物件之畫面
    'App.Path 程式所在位置
    If rep = 0 Then
        Image1(i).Picture = LoadPicture(App.Path & "\Picture\" & flower & num & ".jpg")
        i = i + 1

    End If
Loop


If i = 5 Then '牌總計
    For n = 1 To 5
        'J Q K 10分
        If numPlayer(n) = 11 Or numPlayer(n) = 12 Or numPlayer(n) = 13 Then
            c1 = 10
        Else
            c1 = numPlayer(n)
        End If
        c = c + c1
    Next


    MsgBox "你的牌總計是：" & c, vbInformation, "訊息"
End If
End Sub

