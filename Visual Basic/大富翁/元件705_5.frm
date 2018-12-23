VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form5 
   ClientHeight    =   3270
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5505
   DrawStyle       =   6  '內實線
   LinkTopic       =   "Form5"
   ScaleHeight     =   3270
   ScaleWidth      =   5505
   StartUpPosition =   3  '系統預設值
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   4200
      Top             =   2520
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   12
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":050D
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":0A9E
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":10A1
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":174D
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":1BE2
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":20ED
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":2692
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":2CEF
            Key             =   ""
         EndProperty
         BeginProperty ListImage10 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":3216
            Key             =   ""
         EndProperty
         BeginProperty ListImage11 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":38B0
            Key             =   ""
         EndProperty
         BeginProperty ListImage12 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "元件705_5.frx":3E98
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView ListView1 
      Height          =   3015
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4695
      _ExtentX        =   8281
      _ExtentY        =   5318
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      OLEDragMode     =   1
      _Version        =   393217
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList1"
      ColHdrIcons     =   "ImageList1"
      ForeColor       =   -2147483640
      BackColor       =   16777215
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "標楷體"
         Size            =   9.75
         Charset         =   136
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      OLEDragMode     =   1
      NumItems        =   0
   End
   Begin VB.Label Label1 
      Caption         =   "玩者4"
      Height          =   255
      Index           =   3
      Left            =   4920
      TabIndex        =   4
      Top             =   2880
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "玩者3"
      Height          =   255
      Index           =   2
      Left            =   4920
      TabIndex        =   3
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "玩者2"
      Height          =   255
      Index           =   1
      Left            =   4920
      TabIndex        =   2
      Top             =   1440
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   480
      Index           =   3
      Left            =   4920
      Picture         =   "元件705_5.frx":4355
      Top             =   2400
      Width           =   480
   End
   Begin VB.Image Image1 
      Height          =   480
      Index           =   2
      Left            =   4920
      Picture         =   "元件705_5.frx":497E
      Top             =   1680
      Width           =   480
   End
   Begin VB.Label Label1 
      Caption         =   "玩者1"
      Height          =   255
      Index           =   0
      Left            =   4920
      TabIndex        =   1
      Top             =   600
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   480
      Index           =   1
      Left            =   4920
      Picture         =   "元件705_5.frx":4FA7
      Top             =   960
      Width           =   480
   End
   Begin VB.Image Image1 
      Height          =   480
      Index           =   0
      Left            =   4920
      Picture         =   "元件705_5.frx":55D0
      Top             =   120
      Width           =   480
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim itmX As ListItem   '聲明一個ListItem對象
Dim text As String  '聲明字元串變量
Dim MyIcon As Integer    '聲明一個整型變量
Dim user As Integer
Public player

Private Sub Form_Activate()
ListView1.ListItems.Clear
i = 1
  Do While i < 13
    Set itmX = ListView1.ListItems.Add(, , i, i)
        i = i + 1
  Loop
  
End Sub


Private Sub Form_Load()
For i = 0 To 3
    Label1(i).Visible = False
    Image1(i).Visible = False
Next
For i = 0 To player
    Label1(i).Visible = True
    Image1(i).Visible = True
Next
a = 0
End Sub

Private Sub Image1_Click(Index As Integer) 'Image1為右側user圖片
user = Index 'user= 1,2,3  因Call Image1_Click(user + 1) 所以不會呼叫到user0
'檢查圖片是否重複
For i = 0 To user - 2
    If Image1(i).Picture = Image1(user - 1).Picture Then
        MsgBox ("圖片重複,請重選")
        user = user - 1
        'Call Image1_Click(user)
        Exit Sub
    End If
Next

If user > player Then 'player = 1,2,3
    Me.Hide
    Form3.Show
End If
End Sub

Private Sub ListView1_ItemClick(ByVal Item As MSComctlLib.ListItem)

'MsgBox Item
'Image1(0).Picture = Item & ".gif"
'Set itmX = ListView1.ListItems(1).Icon
Image1(user).Picture = ImageList1.ListImages(0 + Item).Picture

Call Image1_Click(user + 1)

End Sub
