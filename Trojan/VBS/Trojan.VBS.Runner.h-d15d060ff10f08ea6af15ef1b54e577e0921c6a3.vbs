DIM objShell
set objShell=wscript.createObject("wscript.shell")
iReturn=objShell.Run("cmd.exe /C  %systemroot%\temp\1.bat", 0, TRUE)
