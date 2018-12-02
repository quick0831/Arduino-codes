Attribute VB_Name = "Module1"
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

