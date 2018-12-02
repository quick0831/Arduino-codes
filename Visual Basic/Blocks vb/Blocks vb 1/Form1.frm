VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "¤É¯Å"
   ClientHeight    =   1515
   ClientLeft      =   4275
   ClientTop       =   5910
   ClientWidth     =   5655
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   1515
   ScaleWidth      =   5655
   Begin VB.CommandButton Command2 
      Caption         =   "Change Mode"
      Height          =   375
      Left            =   0
      TabIndex        =   5
      Top             =   1200
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "¤É¯Å"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3600
      TabIndex        =   3
      Top             =   480
      Width           =   1935
   End
   Begin VB.ListBox List1 
      Height          =   1230
      ItemData        =   "Form1.frx":0000
      Left            =   0
      List            =   "Form1.frx":000D
      TabIndex        =   0
      Top             =   0
      Width           =   2295
   End
   Begin VB.Label Label4 
      Caption         =   "Need: xxxxx"
      Height          =   375
      Left            =   2400
      TabIndex        =   6
      Top             =   480
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "§AªºBlocks: xxxxxxxxxxxxxx"
      Height          =   375
      Left            =   2400
      TabIndex        =   4
      Top             =   960
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Lv.xxx"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   4080
      TabIndex        =   2
      Top             =   120
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "xxxxxx xxxxxx"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
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
Dim mode 'apl=1 wpl=2
Dim alist(31)
Dim wlist(25)

Private Sub Command2_Click()
    If mode = 1 Then
    mode = 2
    ElseIf mode = 2 Then mode = 1
    End If
    Call plist
End Sub

Private Sub Form_Load()
    Open App.Path & "/a.txt" For Input As #1 'Record
    Input #1, clicks, ap, wp, apl, wpl
    For i = 0 To 30
        Input #1, al(i)
    Next
    For i = 0 To 24
        Input #1, wl(i)
    Next
    Close #1
    Open App.Path & "/apl.txt" For Input As #2 'Attack Langrage
        For i = 0 To 30
            Input #2, alist(i)
        Next
    Close #2
    Open App.Path & "/wpl.txt" For Input As #3 'Worker Langrage
        For i = 0 To 24
            Input #3, wlist(i)
        Next
    Close #3
    mode = 1
    Call plist
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Form2.Hide
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

Sub plist() 'Print List
    List1.Clear
    If mode = 1 Then
        For i = 0 To 30
            If apl >= (i + 1) Then List1.AddItem (alist(i) & " Lv." & al(i))
        Next
    ElseIf mode = 2 Then
        For i = 0 To 24
            If wpl >= (i + 1) Then List1.AddItem (wlist(i) & " Lv." & wl(i))
        Next
    End If
End Sub

