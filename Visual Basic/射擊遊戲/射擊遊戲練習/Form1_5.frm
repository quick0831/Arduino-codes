VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000008&
   Caption         =   "Form1"
   ClientHeight    =   4560
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8955
   LinkTopic       =   "Form1"
   ScaleHeight     =   4560
   ScaleWidth      =   8955
   StartUpPosition =   3  '系統預設值
   Begin VB.Timer BeeTimer 
      Interval        =   2000
      Left            =   0
      Top             =   1080
   End
   Begin VB.Timer BombTime 
      Enabled         =   0   'False
      Interval        =   800
      Left            =   0
      Top             =   0
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   23
      Left            =   6240
      Picture         =   "Form1_5.frx":0000
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   22
      Left            =   5280
      Picture         =   "Form1_5.frx":0844
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   21
      Left            =   4440
      Picture         =   "Form1_5.frx":1088
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   20
      Left            =   3600
      Picture         =   "Form1_5.frx":18CC
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   19
      Left            =   2760
      Picture         =   "Form1_5.frx":2110
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   18
      Left            =   1920
      Picture         =   "Form1_5.frx":2954
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   17
      Left            =   7080
      Picture         =   "Form1_5.frx":3198
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   16
      Left            =   6240
      Picture         =   "Form1_5.frx":39DC
      Stretch         =   -1  'True
      Top             =   1560
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   15
      Left            =   5280
      Picture         =   "Form1_5.frx":4220
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   14
      Left            =   4440
      Picture         =   "Form1_5.frx":4A64
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   13
      Left            =   3600
      Picture         =   "Form1_5.frx":52A8
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   12
      Left            =   2760
      Picture         =   "Form1_5.frx":5AEC
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   11
      Left            =   1920
      Picture         =   "Form1_5.frx":6330
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   10
      Left            =   1080
      Picture         =   "Form1_5.frx":6B74
      Stretch         =   -1  'True
      Top             =   840
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   9
      Left            =   7800
      Picture         =   "Form1_5.frx":73B8
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   8
      Left            =   6960
      Picture         =   "Form1_5.frx":7BFC
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   7
      Left            =   6120
      Picture         =   "Form1_5.frx":8440
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   6
      Left            =   5280
      Picture         =   "Form1_5.frx":8C84
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   4
      Left            =   3600
      Picture         =   "Form1_5.frx":94C8
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   3
      Left            =   2760
      Picture         =   "Form1_5.frx":9D0C
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   2
      Left            =   1920
      Picture         =   "Form1_5.frx":A550
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   1
      Left            =   1080
      Picture         =   "Form1_5.frx":AD94
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   5
      Left            =   4440
      Picture         =   "Form1_5.frx":B5D8
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   "Label2"
      Height          =   375
      Left            =   7320
      TabIndex        =   1
      Top             =   1920
      Width           =   1335
   End
   Begin VB.Image Image2 
      Height          =   615
      Left            =   3120
      Picture         =   "Form1_5.frx":BE1C
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   615
   End
   Begin VB.Label Label1 
      Alignment       =   2  '置中對齊
      BackColor       =   &H00000000&
      Caption         =   "●"
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Index           =   0
      Left            =   1320
      TabIndex        =   0
      Top             =   960
      Width           =   255
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   0
      Left            =   480
      Picture         =   "Form1_5.frx":C47E
      Stretch         =   -1  'True
      Top             =   120
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*******************'
'*小蜜蜂遊戲
'*******************'
Dim gameH, gameW As Integer
Dim scn As Integer 'Load 砲彈數
Private go1 As String  '蜜蜂移動方向
Private Score As Long
Private DownControl As Long
Private BeeCounts As Long
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'MsgBox KeyCode
'*發射台右移處理:Image2.Left+ 300控制發射台右移
If KeyCode = 39 Then
    Image2.Left = Image2.Left + 300
    If Image2.Left >= gameW Then Image2.Left = gameW
    go1 = "R"
End If

'*發射台左移處理控制處理:Image2.Left - 300控制發射台左移
If KeyCode = 37 Then
    Image2.Left = Image2.Left - 300
    If Image2.Left <= 0 Then Image2.Left = 0
    go1 = "L"
End If

'*發射炮彈控制:Label1(i)
If KeyCode = 32 Or KeyCode = 229 Then
    'MsgBox "sss"
    '找到隱藏的就不用Load新Shape
    For n = 0 To scn
        If Not Label1(n).Visible Then '*當Label1(n).Visible=False時,該顆炮彈未發射
           Exit For '找到未發射砲彈編號則跳出
        End If
    Next
    
    '當發射陣列滿,load新砲彈後發射
    If n > scn And n > 0 Then scn = n: Load Label1(n)
    Label1(n).Top = Image2.Top - 240
    Label1(n).Left = Image2.Left + CLng((Image2.Width - 240) \ 2)
    Label1(n).Visible = True
    Label2.Caption = scn
End If
End Sub


Private Sub Form_Load()

init '初始化

End Sub
Private Function init()
    gameH = Form1.Height - Image2.Height
    gameW = Form1.Width - Image2.Width
    Label1(0).Visible = False
    BeeTimer.Enabled = True
    BombTime.Enabled = True

    BeeCounts = 24
    'Label3.Caption = BeeCounts
    DownControl = 0
    go1 = "R"
    Score = 0
    Label2.Caption = Score * 10
'
'
'    Image2.Top =      '*發射台位置
'    Image2.Left =     '*發射台位置
'*******************'
'*蜜蜂位置每個隔840
'*******************'
 For i = 0 To 23
    Image1(i).Top = 360: Image1(i).Left = 480 + 840 * i
    If i > 9 Then Image1(i).Top = 1080: Image1(i).Left = 480 + 840 * (i - 9)
    If i > 17 Then Image1(i).Top = 1800: Image1(i).Left = 480 + 840 * (i - 16)
 
 Next


init = True
End Function
'*******************'
'*
'*******************'
Private Sub BombTime_Timer()
'******************************************'
'*當Label1(j).Visible=True時,控制第j顆炮彈的行進路徑
'******************************************'
For j = 0 To scn '控制第j顆炮彈的行進路徑
 If Label1(j).Visible Then
   Label1(j).Top = Label1(j).Top - 240
   If Label1(j).Top <= 0 Then '超出邊界
      Label1(j).Visible = False
   Else
      '******************************************'
      '*當Label1(j).Visible=True時,檢查是否打到小蜜蜂
      '******************************************'
      For i = 0 To 23  '檢查是否打到小蜜蜂
          If Image1(i).Visible Then '小蜜蜂沒死,砲彈打到圖片範圍內
             If Label1(j).Top <= (Image1(i).Top + Image1(i).Height) And _
                Label1(j).Top >= Image1(i).Top And _
                Label1(j).Left >= Image1(i).Left And _
                Label1(j).Left <= (Image1(i).Left + Image1(i).Width) Then
                Image1(i).Visible = False
                Label1(j).Visible = False
                '*計分處理*'
                '*********'
                Score = Score + 1
                'Label2.Caption = Score * 10
                
                BeeCounts = BeeCounts - 1
                'Label3.Caption = BeeCounts
                'DoEvents
                Exit For    '一顆子彈只會打一隻
             End If
          End If
      Next
'      If Not Label1(j).Visible Then
'         Exit Sub
'      End If
   End If
 End If
Next j
End Sub

Private Sub BeeTimer_Timer()  '蜜蜂移動
'Dim i As Long
'*******************'
'*最右bee-->Image1(9)碰牆後向左移
'*最左bee-->Image1(0)碰牆後向右移
'*******************'
If go1 = "R" Then
   If (Image1(9).Left + 120) >= gameW Then '最右bee-->Image1(9)碰牆後向左移
      go1 = "L"
      BeeTimer_Timer
      Exit Sub
   End If
   For i = 0 To 23
       Image1(i).Left = Image1(i).Left + 120
   Next
Else
   If (Image1(0).Left - 120) <= 0 Then '*最左bee-->Image1(0)碰牆後向右移
      go1 = "R"
      BeeTimer_Timer
      Exit Sub
   End If
   For i = 0 To 23
       Image1(i).Left = Image1(i).Left - 120
   Next
End If
'*******************'******************'
'*每執行3次左或右移動後,執行1次向下移動
'*******************'******************'
DownControl = DownControl + 1
'If DownControl  Then
   'DownControl
   'If   Then '向下移動
      For i = 0 To 23
          Image1(i).Top = Image1(i).Top + 180
      Next
   'End If
'End If
End Sub
