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
      Picture         =   "Form1_2.frx":0000
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
      Left            =   3240
      TabIndex        =   0
      Top             =   2520
      Width           =   255
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   0
      Left            =   3000
      Picture         =   "Form1_2.frx":0662
      Stretch         =   -1  'True
      Top             =   240
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
Private Const FRM_intLeftRightMoveStep = 6
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
    'If Image1.Left > Form1.Width Then Image1.Left = -Image1.Width
    go1 = "R"
End If

'*發射台左移處理控制處理:Image2.Left - 300控制發射台左移
If KeyCode = 37 Then
    Image2.Left = Image2.Left - 300
    If Image2.Left <= 0 Then Image2.Left = 0
    go1 = "L"
    'If Image1.Left < -Image1.Width Then Image1.Left = Form1.Width
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
   If Label1(j).Top <= 0 Then
      Label1(j).Visible = False
   Else
      '******************************************'
      '*當Label1(j).Visible=True時,檢查是否打到小蜜蜂
      '******************************************'
      For i = 0 To 0  '檢查是否打到小蜜蜂
          If Image1(i).Visible Then '小蜜蜂沒死,砲彈打到圖片範圍內
             If Label1(j).Top <= Image1(i).Top + Image1(i).Height And Label1(j).Top >= Image1(i).Top And _
                Label1(j).Left >= Image1(i).Left And Label1(j).Left <= Image1(i).Left + Image1(i).Width Then
                Image1(i).Visible = False
                Label1(j).Visible = False
                '*計分處理*'
                '*********'
                Score = Score + 1
                BeeCounts = BeeCounts - 1
                 '一顆子彈只會打一隻
             End If
          End If
      Next i
   End If
 End If
Next j
End Sub

