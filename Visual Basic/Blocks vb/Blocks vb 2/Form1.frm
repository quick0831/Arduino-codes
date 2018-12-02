VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "升級"
   ClientHeight    =   1575
   ClientLeft      =   4275
   ClientTop       =   5910
   ClientWidth     =   5055
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   1575
   ScaleWidth      =   5055
   Begin VB.CommandButton Command4 
      Caption         =   "----->"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2760
      TabIndex        =   7
      Top             =   480
      Width           =   615
   End
   Begin VB.CommandButton Command3 
      Caption         =   "<-----"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2040
      TabIndex        =   6
      Top             =   480
      Width           =   615
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Change Mode"
      Height          =   375
      Left            =   2040
      TabIndex        =   4
      Top             =   1080
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "升級"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   3480
      TabIndex        =   2
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label Label4 
      Caption         =   "Need: xxxxx"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   5
      Top             =   480
      Width           =   1815
   End
   Begin VB.Label Label3 
      Caption         =   "Your Blocks: xxxxxxxxxxxxxx"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   3
      Top             =   960
      Width           =   1815
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
      Left            =   2640
      TabIndex        =   1
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
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2415
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
Dim view 'Viewing Level Index

Private Sub Command1_Click()
    If clicks < need() Then
        z = MsgBox("Blocks不夠!", vbOKOnly, "Warning")
    Else
        clicks = clicks - need()
        Form2.clicks = clicks
        If mode = 1 Then
            al(view - 1) = al(view - 1) + 1
        Else
            wl(view - 1) = wl(view - 1) + 1
        End If
        Call upgrade
    End If
    Call pview
End Sub

Private Sub Command2_Click()
    If mode = 1 Then
    mode = 2
    ElseIf mode = 2 Then mode = 1
    End If
    view = 1
    Call pview
    Call plist
End Sub

Private Sub Command3_Click()
    If view = 1 Then
        z = MsgBox("已經是第一個了!", vbOKOnly, "Warning")
    Else
        view = view - 1
        Call pview
    End If
End Sub

Private Sub Command4_Click()
    If mode = 1 Then
        If view = apl Then
            z = MsgBox("已經是最後一個了!", vbOKOnly, "Warning")
        Else
            view = view + 1
            Call pview
        End If
    Else
        If view = wpl Then
            z = MsgBox("已經是最後一個了", vbOKOnly, "Warning")
        Else
            view = view + 1
            Call pview
        End If
    End If
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
    view = 1
    Call pview
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
'    List1.Clear
'    If mode = 1 Then
'        For i = 0 To 30
'            If apl >= (i + 1) Then List1.AddItem (alist(i) & " Lv." & al(i))
'        Next
'    ElseIf mode = 2 Then
'        For i = 0 To 24
'            If wpl >= (i + 1) Then List1.AddItem (wlist(i) & " Lv." & wl(i))
'        Next
'    End If
End Sub

Sub pview() 'Print Viewing
    If mode = 1 Then
        Label1.Caption = view & ". " & alist(view - 1)
        Label2.Caption = "Lv. " & al(view - 1)
    Else
        Label1.Caption = view & ". " & wlist(view - 1)
        Label2.Caption = "Lv. " & wl(view - 1)
    End If
    Label4.Caption = "Need: " & need()
End Sub

Function need()
    need = 10
End Function

Sub upgrade()
    If mode = 1 Then
        ap = ap + 1
        Form2.ap = ap
        Form2.Label1.Caption = "Attack Point: " & ap
        If al(view - 1) = 100 Then
            apl = apl + 1
            view = view + 1
            z = MsgBox("開放下一階段 " & (view + 1) & ". " & alist(view), vbOKOnly, "Big News")
        End If
    Else
        wp = wp + 1
        Form2.wp = wp
        Form2.Label2.Caption = "Worker Point: " & wp
        If wl(view - 1) = 100 Then
            wpl = wpl + 1
            view = view + 1
            z = MsgBox("開放下一階段 " & (view + 1) & ". " & wlist(view), vbOKOnly, "Big News")
        End If
    End If
    Call pview
End Sub
