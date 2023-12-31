olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.JMPS-d48e16217f0f369d558a3be689d3787becc48e8f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.JMPS-d48e16217f0f369d558a3be689d3787becc48e8f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Test()
MsgBox JSMP(ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 16))
End Sub
Private Function JSMP(OURCODE)
ALLVARIABLES = "JSMP OURCODE ALLVARIABLES VARLOOP NEWVAR VARPOS CURVAR "
For VARLOOP = 0 To 6
CURVAR = Left(ALLVARIABLES, InStr(ALLVARIABLES, Chr(32)) - 1)
ALLVARIABLES = Mid(ALLVARIABLES, InStr(ALLVARIABLES, Chr(32)) + 1)
NEWVAR = Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130))
Do
VARPOS = InStr(VARPOS + 1, OURCODE, CURVAR)
If VARPOS Then OURCODE = Mid(OURCODE, 1, (VARPOS - 1)) & NEWVAR & Mid(OURCODE, (VARPOS + Len(CURVAR)))
Loop While VARPOS
Next
JSMP = OURCODE
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

