olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.JSMP.03-cf1fcc7b7117de94fad3de11f0ee70f5b9bc86ca
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.JSMP.03-cf1fcc7b7117de94fad3de11f0ee70f5b9bc86ca - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Function JSMP(OURCODE)
ALLVARIABLES = "JSMP OURCODE ALLVARIABLES VARLOOP NEWVAR VARPOS CURVAR "
Do
CURVAR = Left(ALLVARIABLES, InStr(ALLVARIABLES, Chr(32)) - 1)
ALLVARIABLES = Mid(ALLVARIABLES, InStr(ALLVARIABLES, Chr(32)) + 1)
NEWVAR = Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130)) & Chr((Int(Rnd * 74) + 130))
Do
VARPOS = InStr(VARPOS + 1, OURCODE, CURVAR)
If VARPOS Then OURCODE = Mid(OURCODE, 1, (VARPOS - 1)) & NEWVAR & Mid(OURCODE, (VARPOS + Len(CURVAR)))
Loop While VARPOS
Loop While ALLVARIABLES <> ""
JSMP = OURCODE
End Function

'jackie's stupid macro poly v0.3

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

