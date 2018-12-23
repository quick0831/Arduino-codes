VERSION 5.00
Begin VB.Form frmLogin 
   BorderStyle     =   3  '雙線固定對話方塊
   Caption         =   "登入"
   ClientHeight    =   1545
   ClientLeft      =   2835
   ClientTop       =   3480
   ClientWidth     =   3855
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   912.837
   ScaleMode       =   0  '使用者自訂
   ScaleWidth      =   3619.636
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  '螢幕中央
   Begin VB.TextBox txtUserName 
      Height          =   345
      Left            =   1440
      TabIndex        =   1
      Top             =   135
      Width           =   2325
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "確定"
      Default         =   -1  'True
      Height          =   390
      Left            =   495
      TabIndex        =   4
      Top             =   1020
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "取消"
      Height          =   390
      Left            =   2220
      TabIndex        =   5
      Top             =   1020
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      Height          =   345
      IMEMode         =   3  '暫止
      Left            =   1440
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   525
      Width           =   2325
   End
   Begin VB.Label lblLabels 
      Caption         =   "使用者名稱(&U):"
      Height          =   270
      Index           =   0
      Left            =   105
      TabIndex        =   0
      Top             =   150
      Width           =   1200
   End
   Begin VB.Label lblLabels 
      Caption         =   "密碼(&P):"
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

Public LoginSucceeded As Boolean

Private Sub cmdCancel_Click()
    '設定全域變數為 false 來代表
    '失敗的登入
    LoginSucceeded = False
    Me.Hide
End Sub

Private Sub cmdOK_Click()
    '檢查密碼的正確性
    If txtUserName = "" And txtPassword = "" Then
        '將傳遞成功訊息至呼叫本副程式之
        '副程式的程式碼置於此處
        '設定全域變數是最簡單的方式
        LoginSucceeded = True
        Me.Hide
        Form1.Show
        Form2.Show
    Else
        MsgBox "密碼錯誤，請重新輸入!", , "登入"
        txtPassword.SetFocus
        SendKeys "{Home}+{End}"
    End If
End Sub
