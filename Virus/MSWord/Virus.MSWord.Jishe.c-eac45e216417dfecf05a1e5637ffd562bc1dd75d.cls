olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO JiShenhua.bas 
in file: Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3 - OLE stream: 'Macros/VBA/JiShenhua'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Version 1.0
'这是本人学习制作的一个宏病毒防杀程序,它可以防止部分WORD宏病毒的感染
'这需要有大量的宏病毒特征码作为依据,如果你发现有本疫苗无能为力的宏病毒
'感谢您及时与我联系,你也可以自选修改本程序,以加强本疫苗的功力
'与病毒作斗争就如同抵御社会犯罪,需要大家的共同努力
'欢迎加入其中并成为一名战士,也许你正是大家期待已久的勇士
'
'程序设计: 冀慎华
'办公电话:
'伊妹地址: club@263.net
'
Sub AutoOpen()
    Dim file$
    Dim i As Integer
    Dim already, HasVirus As Boolean
    Dim LinesofCode As Long
    Dim answer As String
    Dim myDoc As Document
    Dim myTemp As Template
    
    answer = "MyMacroVirusKillerV1.0"
    
    '当前打开模板文件名
    file$ = WordBasic.[MacroFileName$]()
    
    '关闭宏病毒保护
    If Options.VirusProtection Then
        Options.VirusProtection = False
    End If
    
    '检查打开的文档中是否有病毒
    HasVirus = False
    If (Documents.Count <> 0) Then
        For Each myDoc In Documents
            If (myDoc.VBProject.Protection = 0) Then
                For Each xitem In myDoc.VBProject.VBComponents
                    If (xitem.Name = "ThisDocument") Then
                        '此部分有代码时，如果找不到本模块标志则认定为病毒
                        LinesofCode = xitem.codemodule.CountOfLines
                        If (LinesofCode > 0) And (Not HasVirus) Then
                            HasVirus = Not xitem.codemodule.Find(answer, 1, 1, 1 + LinesofCode, 1)
                        End If
                    ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                        '文档中除本模块代码之外，如果还有其它代码则认定为病毒
                        HasVirus = True
                    End If
                Next
            End If
        Next
    End If
    '检查文档模板中是否有病毒
    If Not HasVirus Then
        For Each myTemp In Templates
            If (myTemp.VBProject.Protection = 0) Then
                For Each xitem In myTemp.VBProject.VBComponents
                    If (xitem.Name = "ThisDocument") Then
                        '此部分有代码时，如果找不到本模块标志则认定为病毒
                        LinesofCode = xitem.codemodule.CountOfLines
                        If (LinesofCode > 0) And (Not HasVirus) Then
                            HasVirus = Not xitem.codemodule.Find(answer, 1, 1, 1 + LinesofCode, 1)
                        End If
                    ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                        '文档中除本模块代码之外，如果还有其它代码则认定为病毒
                        HasVirus = True
                    End If
                Next
            End If
        Next
    End If
    If HasVirus Then '如果有病毒，向用户提出报告
        Load VirusReport
        VirusReport.Show
    End If
    '向打开的文档中写入本代码
    If (Documents.Count <> 0) Then
        For Each myDoc In Documents
            '检查文档中是否已经有本模块代码
            already = False
            If (myDoc.FullName = file$) Then
                already = True
            ElseIf (myDoc.VBProject.Protection = 0) Then
                For Each xitem In myDoc.VBProject.VBComponents
                    If (xitem.Name = "JiShenhua") And (xitem.Name <> "VirusReport") Then
                        already = True
                    End If
                Next xitem
            End If
            If (Not already) And (myDoc.VBProject.Protection = 0) Then
                WordBasic.MacroCopy file$ + ":JiShenhua", myDoc.FullName + ":JiShenhua"
                WordBasic.MacroCopy file$ + ":VirusReport", myDoc.FullName + ":VirusReport"
            End If
        Next
    End If
    '向WORD模板中写入本代码
    For Each myTemp In Templates
            '检查文档中是否已经有本模块代码
            already = False
            If (myTemp.FullName = file$) Then
                already = True
            ElseIf (myTemp.VBProject.Protection = 0) Then
                For Each xitem In myTemp.VBProject.VBComponents
                    If (xitem.Name = "JiShenhua") Then
                        already = True
                    End If
                Next xitem
            End If
            If (Not already) And (myTemp.VBProject.Protection = 0) Then
                WordBasic.MacroCopy file$ + ":JiShenhua", myTemp.FullName + ":JiShenhua"
                WordBasic.MacroCopy file$ + ":VirusReport", myTemp.FullName + ":VirusReport"
            End If
    Next
End Sub
Sub AutoNew()
    Dim file$
    Dim already, HasVirus As Boolean
    Dim LinesofCode As Long
    Dim answer As String
    Dim myDoc As Document
    
    answer = "FreeAntiWordMacroVirus"  '本病毒疫苗特征码
    
    '当前打开模板文件名
    file$ = WordBasic.[MacroFileName$]()
    
    '关闭宏病毒保护
    If Options.VirusProtection Then
        Options.VirusProtection = False
    End If
    
    '向新建的文档中写入本代码
    If (Documents.Count <> 0) Then
        For Each myDoc In Documents
            '检查文档中是否已经有本模块代码
            already = False
            If (myDoc.FullName = file$) Then
                already = True
            ElseIf (myDoc.VBProject.Protection = 0) Then
                For Each xitem In myDoc.VBProject.VBComponents
                    If (xitem.Name = "JiShenhua") Then
                        already = True
                    End If
                Next xitem
            End If
            If (Not already) And (myDoc.VBProject.Protection = 0) Then
                WordBasic.MacroCopy file$ + ":JiShenhua", myDoc.FullName + ":JiShenhua"
                WordBasic.MacroCopy file$ + ":VirusReport", myDoc.FullName + ":VirusReport"
            End If
        Next myDoc
    End If
End Sub
Sub AutoExit()
'关闭WORD之前清理autoexec.dot文件中的病毒
Dim LinesofCode As Long
Dim myDoc As Document
Dim FileName As String

'清除打开文档中的病毒代码
If (UCase(Dir("c:\Autoexec.dot")) = "AUTOEXEC.DOT") Then
    WordBasic.DisableAutoMacros
    Documents.Open FileName:="c:\Autoexec.dot", AddToRecentFiles:=False
    For Each myDoc In Word.Documents
        If (UCase(myDoc.Name) = "AUTOEXEC.DOT") And (myDoc.VBProject.Protection = 0) Then
            For Each xitem In myDoc.VBProject.VBComponents
                If (xitem.Name = "ThisDocument") Then
                    LinesofCode = xitem.codemodule.CountOfLines
                    If LinesofCode > 0 Then
                        xitem.codemodule.deletelines 1, LinesofCode
                    End If
                ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                    myDoc.VBProject.VBComponents.Remove (xitem)
                End If
            Next
            myDoc.Save
            myDoc.Close
        End If
    Next
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO VirusReport.frm 
in file: Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3 - OLE stream: 'Macros/VBA/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





































'初始化窗体，设定窗体参数
Private Sub UserForm_Initialize()
CheckBox1.Value = True
If Documents.Count <> 0 Then
    Information.Value = ActiveDocument.FullName
End If
Beep
End Sub
Private Sub CommandButtonNothing_Click()
'关闭窗体，不作任何处理
Dim ret As Integer
ret = MsgBox("领导，虽然你可能会批评我，但还是要告诉你，这样做是很危险的。是否真得不做处理，请指示。", vbYesNo + vbDefaultButton2, "再次报告！")
If ret = vbYes Then
    Unload VirusReport
End If
End Sub
Private Sub CommandButtonOpenVisubasic_Click()
'打开VisulBasic编辑器
    ShowVisualBasicEditor = True
End Sub
Private Sub CommandButtonDetail_Click()
'报告病毒的详细情况
Dim answer As String
Dim myStr As String
Dim myDoc As Document
Dim myTemp As Template

answer = "MyMacroVirusKillerV1.0"
myStr = ""
For Each myTemp In Word.Templates
    If (myTemp.VBProject.Protection = 0) Then
        For Each xitem In myTemp.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.codemodule.CountOfLines
                If LinesofCode > 0 Then
                    If (Not xitem.codemodule.Find(answer, 1, 1, 1 + LinesofCode, 1)) Then
                        myStr = myStr + myTemp.Name + "<" + xitem.Name + ">模块中可能有病毒。" + Chr(10)
                        If (xitem.codemodule.Find("Document_Open", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myTemp.Name + "<" + xitem.Name + ">模块中有自动运行代码Document_Open。" + Chr(10)
                        End If
                        If (xitem.codemodule.Find("Document_Close", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myTemp.Name + "<" + xitem.Name + ">模块中有自动运行代码Document_Close。" + Chr(10)
                        End If
                        If (xitem.codemodule.Find("Document_New", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myTemp.Name + "<" + xitem.Name + ">模块中有自动运行代码Document_New。" + Chr(10)
                        End If
                        If (xitem.codemodule.Find("insertlines", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myTemp.Name + "<" + xitem.Name + ">模块中有自我复制语句InsertLines。" + Chr(10)
                        End If
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myStr = myStr + myTemp.Name + "<" + xitem.Name + ">模块可能是病毒。" + Chr(10)
                If (xitem.codemodule.Find("MacroCopy", 1, 1, 1 + LinesofCode, 1)) Then
                    myStr = myStr + myTemp.Name + "<" + xitem.Name + ">模块中有自我复制语句MacroCopy。" + Chr(10)
                End If
            End If
        Next
    End If
Next
For Each myDoc In Word.Documents
    If (myDoc.VBProject.Protection = 0) Then
        For Each xitem In myDoc.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.codemodule.CountOfLines
                If LinesofCode > 0 Then
                    If (Not xitem.codemodule.Find(answer, 1, 1, 1 + LinesofCode, 1)) Then
                        myStr = myStr + myDoc.Name + "<" + xitem.Name + ">模块中可能有病毒。" + Chr(10)
                        If (xitem.codemodule.Find("Document_Open", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myDoc.Name + "<" + xitem.Name + ">模块中有自动运行代码Document_Open。" + Chr(10)
                        End If
                        If (xitem.codemodule.Find("Document_Close", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myDoc.Name + "<" + xitem.Name + ">模块中有自动运行代码Document_Close。" + Chr(10)
                        End If
                        If (xitem.codemodule.Find("Document_New", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myDoc.Name + "<" + xitem.Name + ">模块中有自动运行代码Document_New。" + Chr(10)
                        End If
                        If (xitem.codemodule.Find("insertlines", 1, 1, 1 + LinesofCode, 1)) Then
                            myStr = myStr + myDoc.Name + "<" + xitem.Name + ">模块中有自我复制语句InsertLines。" + Chr(10)
                        End If
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myStr = myStr + myDoc.Name + "<" + xitem.Name + ">模块可能是病毒。" + Chr(10)
                If (xitem.codemodule.Find("MacroCopy", 1, 1, 1 + LinesofCode, 1)) Then
                    myStr = myStr + myDoc.Name + "<" + xitem.Name + ">模块中有自我复制语句MacroCopy。" + Chr(10)
                End If
            End If
        Next
    End If
Next
Information.Value = myStr
End Sub
Private Sub CommandButtonKill_Click()
'杀病毒
Dim LinesofCode As Long
Dim myDoc As Document
Dim myTemp As Template
Dim answer As String

answer = "MyMacroVirusKillerV1.0"
'清除Autoexec.dot中的病毒
If (UCase(Dir("c:\Autoexec.dot")) = "AUTOEXEC.DOT") Then
    WordBasic.DisableAutoMacros
    Documents.Open FileName:="c:\Autoexec.dot", AddToRecentFiles:=False
    Set myDoc = ActiveDocument
    If (myDoc.VBProject.Protection = 0) Then
        For Each xitem In myDoc.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.codemodule.CountOfLines
                If LinesofCode > 0 Then
                    If (Not xitem.codemodule.Find(answer, star, 1, star + LinesofCode, 1)) Then
                        xitem.codemodule.deletelines 1, LinesofCode
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myDoc.VBProject.VBComponents.Remove (xitem)
            End If
        Next
        myDoc.Save
        myDoc.Close
    End If
End If
'清除打开文档中的病毒代码
For Each myDoc In Word.Documents
    If (myDoc.VBProject.Protection = 0) Then
        For Each xitem In myDoc.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.codemodule.CountOfLines
                If LinesofCode > 0 Then
                    If (Not xitem.codemodule.Find(answer, 1, 1, 1 + LinesofCode, 1)) Then
                        xitem.codemodule.deletelines 1, LinesofCode
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myDoc.VBProject.VBComponents.Remove (xitem)
            End If
        Next
    End If
Next
'清除WORD模板中的病毒代码
For Each myTemp In Word.Templates
    If (myTemp.VBProject.Protection = 0) Then
        For Each xitem In myTemp.VBProject.VBComponents
            If (xitem.Name = "ThisDocument") Then
                LinesofCode = xitem.codemodule.CountOfLines
                If LinesofCode > 0 Then
                    If (Not xitem.codemodule.Find(answer, 1, 1, 1 + LinesofCode, 1)) Then
                        xitem.codemodule.deletelines 1, LinesofCode
                    End If
                End If
            ElseIf (xitem.Name <> "JiShenhua") And (xitem.Name <> "VirusReport") Then
                myTemp.VBProject.VBComponents.Remove (xitem)
            End If
        Next
    End If
Next
Unload VirusReport
MsgBox "按照您的指示，我已经把怀疑是病毒的东东全部清理完毕， 不过也可能好心办了坏事，那可不要怪我哟。", vbOKOnly, "冀慎华向您报告："
End Sub

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�yr%`G
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�S�s�N
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�e�N-N�S��	g 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�[�u�k
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��[	g�S���[`O�v�e�N �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b4xOW
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
0�Y�g`Onx�Oُ�N�[eg�SN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N�[`O�e(u
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��S�NhQ� Rd�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
yrdk�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���yb:y
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�QNaNS�+
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
}T�N`OhQCg
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�@gKN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
`O�~+RN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�qNSb�bJT
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�N��
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T;N�{Gl�b
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��hV
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�1u�N
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�`�QN
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Nek�g
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T�Q�b
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonKill'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonNothing'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonOpenVisubasic'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButtonDetail'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox2'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Information'" IN 'Virus.MSWord.Jishe.c-98e6ae789ea25bbad26ceae2ae9648fac47519c3' - OLE stream: 'Macros/VirusReport'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CommandButtonNothing|Runs when the file is opened and ActiveX     |
|          |_Click              |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
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
+----------+--------------------+---------------------------------------------+

