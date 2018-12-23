VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  '單線固定
   Caption         =   "大富翁test"
   ClientHeight    =   5685
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5745
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5685
   ScaleWidth      =   5745
   StartUpPosition =   2  '螢幕中央
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Activate()

Form1.FillStyle = 0
Form1.Width = (750 * 6) + 1000 * 2 + Form1.Width - Form1.ScaleWidth
Form1.Height = (750 * 6) + 1000 * 2 + Form1.Height - Form1.ScaleHeight
Form1.FillColor = &H80C0FF

Line ((750 * 6) + 1000, (750 * 6) + 1000)-((750 * 6) + (1000 * 2), (750 * 6) + (1000 * 2)), , B
Line (0, (750 * 6) + 1000)-(1000, (750 * 6) + 2 * 1000), , B
Line (0, 0)-(1000, 1000), , B
Line ((750 * 6) + 1000, 0)-((750 * 6) + 2 * 1000, 1000), , B

For i = 0 To 5
   Form1.FillStyle = 0
   If i = 0 Or i = 3 Or i = 5 Then Form1.FillColor = &HFFC0C0
   If i = 1 Then Form1.FillColor = &H80FFFF
   If i = 2 Then Form1.FillColor = &HC0FFC0
   If i = 4 Then Form1.FillColor = &HFFC0FF
   Line (1000 + (750 * i), 1000 + (750 * 6))-(1000 + (750 * (i + 1)), (1000 * 2) + (750 * 6)), , B
   Line (1000 + (750 * i), 0)-(1000 + (750 * (i + 1)), 1000), , B
   Line (1000 + (750 * 6), 1000 + (750 * i))-((1000 * 2) + (750 * 6), 1000 + (750 * (i + 1))), , B
   Line (0, 1000 + (750 * i))-(1000, 1000 + (750 * (i + 1))), , B
Next

End Sub

