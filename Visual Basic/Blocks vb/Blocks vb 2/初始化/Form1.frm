VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   840
   ClientLeft      =   7755
   ClientTop       =   4530
   ClientWidth     =   2670
   LinkTopic       =   "Form1"
   ScaleHeight     =   840
   ScaleWidth      =   2670
   Begin VB.CommandButton Command2 
      Caption         =   "初始化數據"
      Height          =   855
      Left            =   1320
      TabIndex        =   1
      Top             =   0
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "初始化語言"
      Height          =   855
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim al(31)
Dim wl(25)
Dim alist(31)
Dim wlist(25)

Private Sub Command1_Click()
    Form1.Hide
    Open App.Path & "/starting data/apl.txt" For Input As #1 'Attack Langrage
    Open App.Path & "/apl.txt" For Output As #2
    Open App.Path & "/starting data/wpl.txt" For Input As #3 'Worker Langrage
    Open App.Path & "/wpl.txt" For Output As #4
    For i = 0 To 30
        Input #1, alist(i)
    Next
    For i = 0 To 30
        Print #2, alist(i)
    Next
    For i = 0 To 24
        Input #3, wlist(i)
    Next
    For i = 0 To 24
        Print #4, wlist(i)
    Next
    Close #1
    Close #2
    Close #3
    Close #4
    z = MsgBox("Finish", vbOKOnly, "Welldone")
    End
End Sub

Private Sub Command2_Click()
    Form1.Hide
    Open App.Path & "/starting data/a.txt" For Input As #1 'Record
    Open App.Path & "/a.txt" For Output As #2
    Input #1, clicks, ap, wp, apl, wpl
    Print #2, clicks, ap, wp, apl, wpl
    For i = 0 To 30
        Input #1, al(i)
    Next
    For i = 0 To 30
        Print #2, al(i)
    Next
    For i = 0 To 24
        Input #1, wl(i)
    Next
    For i = 0 To 24
        Print #2, wl(i)
    Next
    Close #1
    Close #2
    z = MsgBox("Finish", vbOKOnly, "Welldone")
    End
End Sub
