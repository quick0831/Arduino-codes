VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Start"
   ClientHeight    =   975
   ClientLeft      =   8835
   ClientTop       =   5715
   ClientWidth     =   2550
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   975
   ScaleWidth      =   2550
   Begin VB.CommandButton Command1 
      Caption         =   "Start"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   2535
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Me.Hide
    Form1.Show
End Sub

Private Sub Form_Unload(Cancel As Integer)
    End
End Sub

