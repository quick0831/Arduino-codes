VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Block Clicker"
   ClientHeight    =   3015
   ClientLeft      =   12795
   ClientTop       =   5130
   ClientWidth     =   2895
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   3015
   ScaleWidth      =   2895
   Begin VB.CommandButton Command1 
      Caption         =   "  不要懷疑，   我就是方塊。"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   360
      TabIndex        =   4
      Top             =   480
      Width           =   2175
   End
   Begin VB.Timer Timer1 
      Left            =   1920
      Top             =   2400
   End
   Begin VB.Label Label4 
      Caption         =   "點擊方塊來得到Blocks"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   2895
   End
   Begin VB.Label Label3 
      Caption         =   "Blocks: xxxxxxxxxxxxxx"
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   2280
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "Worker Point: xxxxx"
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   2760
      Width           =   2895
   End
   Begin VB.Label Label1 
      Caption         =   "Attack Point: xxxxx"
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   2520
      Width           =   2895
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public clicks
Public ap 'Attack Point
Public wp 'Worker Point
Dim al(31)  'Attack Level
Dim wl(25)  'Worker Level
Public apl 'Attack Point Level
Public wpl 'Worker Point Level

Private Sub Command1_Click()
    clicks = clicks + ap
    Label3.Caption = "Blocks: " & clicks
    Form1.Label3.Caption = "你的Blocks: " & clicks
    Form1.clicks = clicks
End Sub

Private Sub Form_Load()
    Timer1.Interval = 950
    Form1.Show
    Open App.Path & "/a.txt" For Input As #1
    Input #1, clicks, ap, wp, apl, wpl
    For i = 0 To 30
        Input #1, al(i)
    Next
    For i = 0 To 24
        Input #1, wl(i)
    Next
    Close #1
    Label3.Caption = "Blocks: " & clicks
    Form1.Label3.Caption = "你的Blocks: " & clicks
    Form1.clicks = clicks
    Label1.Caption = "Attack Point: " & ap
    Form1.ap = ap
    Label2.Caption = "Worker Point: " & wp
    Form1.wp = wp
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Form1.Hide
    Open App.Path & "/a.txt" For Output As #1
    Print #1, clicks, ap, wp, apl, wpl
    For i = 0 To 30
        Print #1, al(i)
    Next
    For i = 0 To 24
        Print #1, wl(i)
    Next
    Close #1
    End
End Sub

Private Sub Timer1_Timer()
    clicks = clicks + wp
    Label3.Caption = "Blocks: " & clicks
    Form1.Label3.Caption = "你的Blocks: " & clicks
    Form1.clicks = clicks
End Sub
