VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Run"
   ClientHeight    =   4095
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   2310
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4095
   ScaleWidth      =   2310
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Copy"
      Height          =   375
      Left            =   1440
      TabIndex        =   2
      Top             =   0
      Width           =   855
   End
   Begin VB.TextBox Text1 
      Height          =   3735
      Left            =   0
      MultiLine       =   -1  'True
      TabIndex        =   1
      Top             =   360
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Run 10000"
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim n As Long
Dim d As Long
Dim t As String
Dim i As Long

Private Sub Command1_Click()
    Command1.Enabled = False
    Command2.Enabled = False
    For i = (50000 * n + 1) To (50000 * n + 50000)
        If d <= 2147483647 - 2 * i + 1 Then
            d = 2 * i - 1 + d
            If d = i ^ 2 Then
                t = t & i & "," & d & Chr(13) & Chr(10)
            Else
                t = t & i & "," & d & " x" & Chr(13) & Chr(10)
            End If
        End If
        Text1.Text = t
    Next
    n = n + 1
    Command1.Enabled = True
    Command2.Enabled = True
End Sub

Private Sub Command2_Click()
    Clipboard.Clear
    Clipboard.SetText t
End Sub

Private Sub Form_Load()
    n = 0
    d = 0
End Sub
